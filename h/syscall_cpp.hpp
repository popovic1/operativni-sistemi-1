#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

#include "syscall_c.hpp"

void *operator new(size_t size);

void *operator new[](size_t size);

void operator delete(void *ptr);

void operator delete[](void *ptr);


#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
