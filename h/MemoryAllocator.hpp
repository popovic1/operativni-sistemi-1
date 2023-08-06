#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#include "print.hpp"

struct Block {
    size_t size;
    Block *next;
};

class MemoryAllocator {

private:


    MemoryAllocator() {}

    static Block *free_list;
    static Block *allocated_list;


public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
        return instance;
    }

    static void init() {
        // Initialize the free list

        // For testing purposes
//        uint64 start = (uint64)((Block *) HEAP_START_ADDR);
//        printInteger(start);
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
        free_list->next = nullptr;
        allocated_list = nullptr;

    }

    // Allocate memory
    static void *allocate(size_t size);

    // Deallocate memory
    static int deallocate(void *ptr);

    MemoryAllocator(MemoryAllocator const &) = delete;

    void operator=(MemoryAllocator const &) = delete;
};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
