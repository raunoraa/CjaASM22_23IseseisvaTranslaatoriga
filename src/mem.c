#include "mem.h"
#include <stdio.h>

#define TRUE 1
#define FALSE 0
#define ARR_SIZE 30000

struct stack_st {
    int stack_pointer;
    int arr[ARR_SIZE];
    int zeroed; //kas on algväärtustatud (tõeväärtus)
};

struct stack_st stack = { .arr={0},.stack_pointer = 0, .zeroed=FALSE};

void static stack_to_zero(){
    for (int i = 0; i < ARR_SIZE; i++) {
        stack.arr[i]=0;
    }
    stack.zeroed=TRUE;
}


int mem_inc() {
    return mem_add(1);
}

int mem_dec() {
    //stack.len on sama, mis stack.stack_pointer
    return mem_add(-1);
}

int mem_left() {
    return mem_move(-1);
}

int mem_right() {
    return mem_move(1);
}

int mem_get() {
    return stack.arr[stack.stack_pointer];
}

int mem_set(char v) {
    stack.arr[stack.stack_pointer]=(unsigned char)v;
    stack.zeroed=FALSE;
    return v;
}

int mem_add(int amount){
    stack.arr[stack.stack_pointer]+=amount;
    return stack.arr[stack.stack_pointer];
}

int mem_move(int numberOfPositions){
    if(numberOfPositions>ARR_SIZE-1 || numberOfPositions<-ARR_SIZE+1){
        //vigane sisend!
        return stack.stack_pointer;
    }
    stack.stack_pointer+=numberOfPositions;
    if(stack.stack_pointer>=ARR_SIZE){
        stack.stack_pointer-=ARR_SIZE;
    } else if(stack.stack_pointer<0){
        stack.stack_pointer+=ARR_SIZE;
    }
    return stack.stack_pointer;
}

void mem_init(){

    for(int i=0;i<stack.stack_pointer;i++){
        stack.arr[i]=0;
    }

    stack.stack_pointer=0;
}

void mem_printDebug() {

    int last_index=0;

//    //variant1
//    if (stack.len + 9 >= stack_size) {
//        last_index = stack.len + 9 - 30000;
//    } else {
//        last_index = stack.len + 9;
//    }

    //variant2
    for (int i=0; i < 9; i++) {

        last_index = mem_right();
        //printf("%d\n",last_index);
    }
    for (int i = 0; i < 9; i++) {
        mem_left();
    }

    printf("index: %d mem [%d .. %d]: ", stack.stack_pointer, stack.stack_pointer, last_index);

    for (int i = 0; i < 10; i++) {
        if(i==9){
            printf("%d", stack.arr[stack.stack_pointer]);
            mem_right();
            break;
        }
        printf("%d ", stack.arr[stack.stack_pointer]);
        mem_right();
    }

}