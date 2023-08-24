//
// Created by os on 1/28/23.
//

#include "../h/MemoryAllocator.hpp"

Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;

    Block *prev = nullptr;
    Block *current = free_list;

    // Find a free block that is large enough
    while (current != nullptr) {

        if (current->size >= sizeToAllocate) {
            // Found a block, remove it from the free list


            if (prev == nullptr) {
                free_list = current->next;
            } else {
                prev->next = current->next;
            }

            // Check if block is too big
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {


                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
                newBlock->size = current->size - sizeToAllocate;
                current->size = sizeToAllocate;
                if (!free_list) {
                    free_list = newBlock;
                    newBlock->next = nullptr;
                } else if (!prev) {
                    newBlock->next = free_list;
                    free_list = newBlock;
                } else {
                    prev->next = newBlock;
                    newBlock->next = current->next;
                }


            }
            //add block to allocated list
            if (!allocated_list) {
                allocated_list = current;
                allocated_list->next = nullptr;
            } else {
                current->next = allocated_list;
                allocated_list = current;
            }

            // Return the memory

            void *userPtr = (char *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
        current = current->next;
    }

    // No block was found
    return nullptr;
}

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
        if (tmp == block) {
            flag = 1;
            break;
        }
        tmpPrev = tmp;
        tmp = tmp->next;
    }
    if (flag == 0) return -1;

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
        tmpPrev->next = tmp->next;
    } else {
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;

    // Add it to the free_list
    while (current != nullptr) {
        if ((uint64 *) block < (uint64 *) current) {
            // Insert the block in the right place
            block->next = current;
            if (prev != nullptr) {
                prev->next = block;
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
        current = current->next;
    }
    if (current == nullptr) {
        // Add the block at the end of the list
        prev->next = block;
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
            // Merge block with previous
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
            // Merge block with next
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;

}



