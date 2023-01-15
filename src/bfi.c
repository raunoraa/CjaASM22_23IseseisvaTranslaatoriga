//
// Created by raunoraa on 20/09/2022.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "mem.h"
#include "stack.h"
#include "parser.h"

#ifdef DEBUG
#define PRINT_PARAMS "'%c' (kood = %d)\n", c, c
#else
#define PRINT_PARAMS "%c", c
#endif


/* Selles enumeratsioonis on toodud kõik Brainfuck'i keele sümbolid. */
enum instructions_e {
    /* Liiguta mälu indeksit paremale. */
    BF_RIGHT      = '>',

    /* Liiguta mälu indeksit vasakule. */
    BF_LEFT       = '<',

    /* Suurenda mälu indeksil olevat väärtust. */
    BF_INCREASE   = '+',

    /* Vähenda mälu indeksil olevat väärtust. */
    BF_DECREASE   = '-',

    /* Loe kasutajalt sisendit ja salvesta see mäluindeksile. */
    BF_READ       = ',',

    /* Trüki välja mälu indeksil olev väärtus char'ina. */
    BF_PRINT      = '.',

    /* Tsükli algus. */
    BF_START_LOOP = '[',

    /* Tsükli lõpp. */
    BF_END_LOOP   = ']',

    /* Trüki silumise informatsioon. */
    BF_DEBUG      = '#'
};


void interpret(const char *program){ //enne oli ilma constita

    mem_init();

    int i = 0;

    struct stack_st stack = {.len=0,.size=0,.arr=NULL};

    while (program[i] != 0 ) {
        switch (program[i]) {
            case BF_INCREASE:
                mem_inc();
                break;
            case BF_DECREASE:
                mem_dec();
                break;
            case BF_RIGHT:
                mem_right();
                break;
            case BF_LEFT:
                mem_left();
                break;
            case BF_DEBUG:
                mem_printDebug();
                break;
            case BF_READ: {
                /* Loeme märgi standardsisendist (kasutaja sisestab konsooli). */
                int c = getc(stdin);
                if (EOF == c) {
                    /* Sisendi lõpu korral lõpetame interpretaatori töö. */
                    printf("Sisendi lõpp!\n");
                    return;
                }
                /* Lisame mällu loetud väärtuse. */
                mem_set((char) c);
                break;
            }
            case BF_PRINT: {
                char c =(char) mem_get();
                printf(PRINT_PARAMS);
                break;
            }
            case BF_START_LOOP: {
                if(mem_get()==0)
                { //mälu väärtus 0, liigume tsükli lõppu
                    int loendur=1;
                    i++;
                    while (1)
                    {
                        if(program[i]=='[')
                        {
                            loendur++;
                        }
                        else if(program[i]==']')
                        {
                            loendur--;
                            if (loendur == 0) break;
                        }
                        i++;
                    }
                    break;
                } else
                {
                    stack_push(&stack,i);
                }
                break;
            }
            case BF_END_LOOP:
            {
                i=stack_pop(&stack)-1;
                break;
            }
            default:
                /* Ignoreerime sümboleid, mida me ei tunne. */
                ;
        }
        i++;
    }
}

void run(struct BF_instruction_st **inst_arr, int inst_arr_len) {
    int i = 0;
    while (1) {
        if (i < 0 || i >= inst_arr_len) break;
        if (inst_arr[i] != NULL) {
            inst_arr[i]->run(inst_arr[i], &i);
        } else {
            /* Suurendame indeksit iseseisvalt. */
            i++;
        }
    }
}
void printAsm(struct BF_instruction_st **inst_arr, int inst_arr_len) {

    printf(
        "global main\n\n"
        "extern mem_add\n"
        "extern mem_move\n"
        "extern mem_inc\n"
        "extern mem_dec\n"
        "extern mem_left\n"
        "extern mem_right\n"
        "extern mem_get\n"
        "extern mem_set\n"
        "extern mem_printDebug\n\n"
        "extern putchar\n\n");

    printf("section .text\n");
    printf("main:\n");

    /* Käime läbi kõik instruktsioonid ja käivitame neil
       funktsiooni printAsm. */
    for (int i = 0; i < inst_arr_len; i++) {

       if (inst_arr[i] != NULL) {
           inst_arr[i]->printAsm(inst_arr[i], &i);
       }
    }

    /* Funktsiooni main lõpp. */
    printf("    mov eax, 0\n");
    printf("    ret\n");
}
void interpret2(char *program) {

    mem_init();

    /* Leiame programmi lähtekoodi pikkuse. */
    int program_len = (int) strlen(program);

    /* Teeme massiivi, mis hoiab viitasid, mida on kokku program_len tükku. Viitade
       algväärtustamine toimub parse() funktsioonis. Massiivi pikkus on võetud varuga */
    struct BF_instruction_st **inst_arr = malloc(sizeof(struct BF_instruction_st *) * program_len);

    if(inst_arr==NULL){
        printf("Mälu otsas!");
        return;
    }

    /* Parsime sisendprogrammi, mille tulemus salvestatakse inst_arr massiivi. */
    parse(inst_arr, program);

    /* Käivitame programmi. */
    //run(inst_arr, program_len);

    /* Transleerime programmi x86 Assembleri keelde ning väljastame programmi. */
    printAsm(inst_arr,program_len);

    for (int i = 0; i < program_len; ++i) {
        if(inst_arr[i]!=NULL){
            free(inst_arr[i]);
        }
    }
    free(inst_arr);
}

int main(int argc, char **argv) { //parameetrid tuleb lisada käsurealt

    /* Kontrollime, et programmile anti täpselt üks parameeter (lisaks programmi nimele endale). */

    /*
    if (argc != 2) {
        printf("Programmil peab olema üks parameeter, milleks on BF programm!\n");

        // Tagastame veakoodi.
        return 1;
    }
    */


    /* Käivitame programmi, mille kasutaja andis käsurealt. */


    //Testimiseks tuleks jookustada vaid üht nendest

    //interpret(argv[1]);
    interpret2(argv[1]);
    //interpret2(">++++++++[<+++++++++>-]<.>++++[<+++++++>-]<+.+++++++..+++.>>++++++[<+++++++>-]<++.------------.>++++++[<+++++++++>-]<+.<.+++.------.--------.>>>++++[<++++++++>-]<+.");

    printf("\n"); //lõpu reavahetus

    return 0;
}
