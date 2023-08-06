//#include "../h/tests.hpp"
//
//
//void Tests::test_pcb1() {
//    PCB *processes[3];
//
//    processes[0] = PCB::createProcess(nullptr);
//    PCB::running = processes[0];
//
//    processes[1] = PCB::createProcess(workerBodyA);
//    printString("CoroutineA created\n");
//    processes[2] = PCB::createProcess(workerBodyB);
//    printString("CoroutineB created\n");
//
//    while (!(processes[1]->isFinished() &&
//             processes[2]->isFinished()))
//    {
//        PCB::yield();
//    }
//
//    for (auto &process: processes)
//    {
//        delete process;
//    }
//    printString("Finished\n");
//
//    return 0;
//}
//
//void Tests::test_memoryAllocator1() {
//    //Allocate some memory
//    void* ptr1 = MemoryAllocator::getInstance().allocate(100);
//   printString( "Allocated 100 bytes at address: ");
//   printInteger((uint64)ptr1);
//    printString( "\n");
//    void* ptr2 = MemoryAllocator::getInstance().allocate(120);
//    printString( "Allocated 120 bytes at address ");
//    printInteger((uint64)ptr2);
//    printString( "\n");
//    void* ptr3 = MemoryAllocator::getInstance().allocate(48);
//    printString( "Allocated 48 bytes at address ");
//    printInteger((uint64)ptr3);
//    printString( "\n");
//
//
//    // Deallocate the first block
//    MemoryAllocator::getInstance().deallocate(ptr1);
//    printString( "Deallocated 100 bytes at address");
//    printInteger((uint64)ptr1);
//    printString( "\n");
//
//    //Allocate a smaller or equal block
//    void* ptr4 = MemoryAllocator::getInstance().allocate(40);
//    printString( "Allocated 40 bytes at address ");
//    printInteger((uint64)ptr4);
//    printString( "\n");
//    if(ptr1==ptr4){
//        printString("SUCCESS\n");
//    }else{
//        printString("ERROR\n");
//    }
//
//    //Deallocate that block and try inserting a bigger block that the on as a FreeMem head
//    MemoryAllocator::getInstance().deallocate(ptr4);
//    printString( "Deallocated 40 bytes at address ");
//    printInteger((uint64)ptr4);
//    printString( "\n");
//
//    void* ptr5 = MemoryAllocator::getInstance().allocate(240);
//    printString( "Allocated 240 bytes at address ");
//    printInteger((uint64)ptr5);
//    printString( "\n");
//    if(ptr1!=ptr5){
//        printString("SUCCESS\n");
//    }else{
//        printString("ERROR\n");
//    }
//}
//
//void Tests::test_memoryAllocator2() {
//    //Allocate some memory
//    void* ptr1 = MemoryAllocator::getInstance().allocate(100);
//   printString( "Allocated 100 bytes at address: ");
//   printInteger((uint64)ptr1);
//    printString( "\n");
//    void* ptr2 = MemoryAllocator::getInstance().allocate(120);
//    printString( "Allocated 120 bytes at address ");
//    printInteger((uint64)ptr2);
//    printString( "\n");
//    void* ptr3 = MemoryAllocator::getInstance().allocate(48);
//    printString( "Allocated 48 bytes at address ");
//    printInteger((uint64)ptr3);
//    printString( "\n");
//    // Deallocate the second block
//    MemoryAllocator::getInstance().deallocate(ptr2);
//    printString( "Deallocated 120 bytes at address ");
//    printInteger((uint64)ptr2);
//    printString( "\n");
//
//    //Allocate a smaller or equal block
//    void* ptr4 = MemoryAllocator::getInstance().allocate(40);
//    printString( "Allocated 40 bytes at address ");
//    printInteger((uint64)ptr4);
//    printString( "\n");
//    if(ptr2==ptr4){
//        printString("SUCCESS\n");
//    }else{
//        printString("ERROR\n");
//    }
//
//    //Deallocate that block and try inserting a bigger block that the on as a FreeMem head
//    MemoryAllocator::getInstance().deallocate(ptr4);
//    printString( "Deallocated 40 bytes at address ");
//    printInteger((uint64)ptr4);
//    printString( "\n");
//
//    void* ptr5 = MemoryAllocator::getInstance().allocate(240);
//    printString( "Allocated 240 bytes at address ");
//    printInteger((uint64)ptr5);
//    printString( "\n");
//    if(ptr2!=ptr5){
//        printString("SUCCESS\n");
//    }else{
//        printString("ERROR\n");
//    }
//}
//
//void Tests::test_memoryAllocator3() {
//    //Allocate some memory
//    void* ptr1 = MemoryAllocator::getInstance().allocate(100);
//   printString( "Allocated 100 bytes at address: ");
//   printInteger((uint64)ptr1);
//    printString( "\n");
//    void* ptr2 = MemoryAllocator::getInstance().allocate(120);
//    printString( "Allocated 120 bytes at address ");
//    printInteger((uint64)ptr2);
//    printString( "\n");
//    void* ptr3 = MemoryAllocator::getInstance().allocate(48);
//    printString( "Allocated 48 bytes at address ");
//    printInteger((uint64)ptr3);
//    printString( "\n");
//    // Deallocate the last block
//    MemoryAllocator::getInstance().deallocate(ptr3);
//    printString( "Deallocated 48 bytes at address ");
//    printInteger((uint64)ptr3);
//    printString( "\n");
//
//    //Allocate a way bigger block to see if deallocate() merges blocks correctly
//    void* ptr4 = MemoryAllocator::getInstance().allocate(1100);
//    printString( "Allocated 1100 bytes at address ");
//    printInteger((uint64)ptr4);
//    printString( "\n");
//    if(ptr3==ptr4){
//        printString("SUCCESS\n");
//    }else{
//        printString("ERROR\n");
//    }
//
//
//     //Allocate memory again
//    ptr1 = MemoryAllocator::getInstance().allocate(150);
//    printString( "Allocated 150 bytes at address ");
//    printString( "\n");
//    printInteger((uint64)ptr1);
//    printString( "\n");
//    ptr2 = MemoryAllocator::getInstance().allocate(50);
//    printString( "Allocated 50 bytes at address ");
//    printString( "\n");
//    printInteger((uint64)ptr2);
//    printString( "\n");
//}
//
//
//
