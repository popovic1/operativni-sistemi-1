//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_V1_1_SEM_HPP
#define PROJECT_BASE_V1_1_SEM_HPP

#include "PCB.hpp"
class Sem {
private:
    int value;
    List<PCB> waitQueue;
    bool valid;

public:
    Sem(int initial_value) {
        value = initial_value;
        valid = true;
    }

    Sem() {
        value = 0;
        valid = true;
    }

    ~Sem();

    int wait();

    int signal();

    int close();

    int signalAll();
};



#endif //PROJECT_BASE_V1_1_SEM_HPP
