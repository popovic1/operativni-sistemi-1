#ifndef PROJECT_BASE_V1_1__SEM_HPP
#define PROJECT_BASE_V1_1__SEM_HPP

#include "_thread.hpp"

class _sem {
private:
    int value;
    List<_thread> waitQueue;
    bool valid;

public:
    _sem(int initial_value) {
        value = initial_value;
        valid = true;
    }

    _sem() {
        value = 0;
        valid = true;
    }

    ~_sem();

    int wait();

    int signal();

    int close();

    int signalAll();
};


#endif //PROJECT_BASE_V1_1__SEM_HPP
