//
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    return (void*)mem_alloc(size);
}

void* operator new[](size_t size) {
    return (void*)mem_alloc(size);
}

void operator delete(void *ptr) { mem_free(ptr); }

void operator delete[](void *ptr) { mem_free(ptr); }



