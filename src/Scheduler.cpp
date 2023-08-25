#include "../h/Scheduler.hpp"


List<_thread> Scheduler::readyQueue;

_thread *Scheduler::get() {
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(_thread *handle) {
    Scheduler::readyQueue.addLast(handle);
}

uint64 Scheduler::remove() {
    return (uint64)Scheduler::readyQueue.removeLast();
}
