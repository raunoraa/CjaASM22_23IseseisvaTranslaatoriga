//
// Created by casm2022 on 8.11.22.
//

#include "parser.h"
#include "mem.h"
#include "stack.h"
#include <stdlib.h>
#include <stdio.h>

#ifdef DEBUG
#define PRINT_PARAMS "'%c' (kood = %d)\n", c, c
#else
#define PRINT_PARAMS "%c", c
#endif


void BF_increment_printAsm(struct BF_instruction_st *instruction, int *index) {

    if(instruction->increment < 0) {

        printf("    ;;;; Instruktsioon -\n");
        printf("    mov al, [esi]\n");
        printf("    dec al\n");
        printf("    mov [esi], al\n\n");

        }
    else {

        printf("    ;;;; Instruktsioon +\n");
        printf("    mov al, [esi]\n");
        printf("    inc al\n");
        printf("    mov [esi], al\n\n");

    }

}
/* Funktsioon BF_increment_new on kood, mida käivitatakse konkreetse
   instruktsiooni käivitamisel.
*/
void BF_increment_run(struct BF_instruction_st *instruction, int *index) {
    /* Suurendame mälu väärtust vastavalt konstruktoris seatud väärtusele! */
    mem_add(instruction->increment);

    /* Suurendame instruktsiooniloendurit ühe võrra. */
    (*index)++;
}

/* Konstruktor funktsioon BF_increment_new loob uue struktuuri, mis suurendab
   aktiivse mäluala väärtust vastavalt parameetrina antud väärtusele, mis võib olla ka
   negatiivne.
*/
struct BF_instruction_st *BF_increment_new(int increment) {
    struct BF_instruction_st *new = NULL;

    /* Kontrollime väärtust, et vältida hilisemaid vigu. */
    if (increment == 0) {
        printf("Liitmisinstruktsiooni parameeter ei saa olla 0!");

        /* Sisuliselt tagastab nüüd funktsioon NULL'i. */
        goto cleanup;
    }

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    /* Väärtustame inkremendi. */
    new->increment = increment;
    new->run = BF_increment_run;
    new->printAsm = BF_increment_printAsm;
    cleanup:
    return new;
}

void BF_move_printAsm(struct BF_instruction_st *instruction, int *index) {
    
    //TODO Mäluala piiride kontroll

    if(instruction->numberOfPositions < 0) {

        printf("    ;;;; Instruktsioon <\n");
        printf("    dec esi\n\n");

        //Mäluala alumise piiri kontroll
        printf("    cmp esi, 0\n");
        printf("    jb alla_nulli_%d\n\n", *index);

        printf("    jmp liigu_edasi_%d\n\n", *index);

        printf("alla_nulli_%d:\n", *index);
        printf("    mov esi, 30000\n\n");

        printf("liigu_edasi_%d:\n", *index);

        }
    else {

        printf("    ;;;; Instruktsioon >\n");
        printf("    inc esi\n\n");

        //Mäluala ülemise piiri kontroll
        printf("    cmp esi, 30000\n");
        printf("    ja yletaitumine_%d\n\n", *index);

        printf("    jmp liigu_edasi_%d\n\n", *index);

        printf("yletaitumine_%d:\n", *index);
        printf("    mov esi, 0\n\n");

        printf("liigu_edasi_%d:\n", *index);

        }

}
void BF_move_run(struct BF_instruction_st *instruction, int *index) {
    /* Suurendame mälu väärtust vastavalt konstruktoris seatud väärtusele! */
    mem_move(instruction->numberOfPositions);

    /* Suurendame instruktsiooniloendurit ühe võrra. */
    (*index)++;
}
struct BF_instruction_st *BF_move_new(int numberOfPositions){
    struct BF_instruction_st *new = NULL;

    /* Kontrollime väärtust, et vältida hilisemaid vigu. */
    if (numberOfPositions == 0) {
        printf("Liitmisinstruktsiooni parameeter ei saa olla 0!");

        /* Sisuliselt tagastab nüüd funktsioon NULL'i. */
        goto cleanup;
    }

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    /* Väärtustame inkremendi. */
    new->numberOfPositions = numberOfPositions;
    new->run = BF_move_run;
    new->printAsm = BF_move_printAsm;
    cleanup:
    return new;
}

void BF_print_printAsm(struct BF_instruction_st *instruction, int *index) {
    printf("    ;;;; Instruktsioon .\n");

    //endine mem_get
    printf("    mov eax, 0\n\n");
    printf("    mov al, [esi]\n");

    printf("    push eax\n");
    printf("    call putchar\n\n");
    printf("    add esp, 4\n\n");
}
void BF_print_run(struct BF_instruction_st *instruction, int *index) {
    /* Suurendame mälu väärtust vastavalt konstruktoris seatud väärtusele! */
    char c = (char) mem_get();
    printf(PRINT_PARAMS);

    /* Suurendame instruktsiooniloendurit ühe võrra. */
    (*index)++;
}
struct BF_instruction_st *BF_print_new(){
    struct BF_instruction_st *new = NULL;

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    new->run = BF_print_run;
    new->printAsm = BF_print_printAsm;
    cleanup:
    return new;
}

void BF_read_printAsm(struct BF_instruction_st *instruction, int *index) {
   printf("; Hetkel ASM-is implementeerimata!\n\n");
}
void BF_read_run(struct BF_instruction_st *instruction, int *index) {
    /* Suurendame mälu väärtust vastavalt konstruktoris seatud väärtusele! */
    int c = getc(stdin);
    printf("%c",c);
    if (EOF == c) {
        /* Sisendi lõpu korral lõpetame interpretaatori töö. */
        printf("Sisendi lõpp!\n");
        return;
    }
    /* Lisame mällu loetud väärtuse. */
    mem_set((char) c);

    /* Suurendame instruktsiooniloendurit ühe võrra. */
    (*index)++;
}
struct BF_instruction_st *BF_read_new(){
    struct BF_instruction_st *new = NULL;

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    new->run = BF_read_run;
    new->printAsm = BF_read_printAsm;
    cleanup:
    return new;
}

void BF_debug_printAsm(struct BF_instruction_st *instruction, int *index) {
    printf("    ;;;; Instruktsioon # (hetkel implementeerimata)\n");
}
void BF_debug_run(struct BF_instruction_st *instruction, int *index) {

    mem_printDebug();

    /* Suurendame instruktsiooniloendurit ühe võrra. */
    (*index)++;
}
struct BF_instruction_st *BF_debug_new(){
    struct BF_instruction_st *new = NULL;

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    new->run = BF_debug_run;
    new->printAsm = BF_debug_printAsm;
    cleanup:
    return new;
}

void BF_beginLoop_printAsm(struct BF_instruction_st *instruction, int *index) {
    printf("    ;;;; Instruktsioon [\n");
    printf("silt_%d:\n", *index);
    
    //endine mem_get
    printf("    mov eax, 0\n\n");
    printf("    mov al, [esi]\n");

    printf("    cmp eax, 0\n");
    printf("    je silt_%d\n\n", instruction->loopBackIndex);
}
/* Funktsiooni BF_beginLoop_run käivitatakse iga kord, kui jõutakse tsükli algusesse.
*/
void BF_beginLoop_run(struct BF_instruction_st *instruction, int *index) {
    int val = mem_get();

    if (instruction->loopForwardIndex < 0) {
        printf("Tsükli algus algväärtustamata!\n");
        return;
    }

    if (val == 0) {
        /* +1 lisamine on selleks, et me ei "hüppaks" tsükli lõpu instruktsioonile,
           vaid sellele järgnevale instruktsioonile. */
        *index = instruction->loopForwardIndex + 1;
    } else {
        (*index)++;
    }
}

/* Konstruktor funktsioon BF_beginLoop_new loob uue struktuuri, mis implementeerib
   tsüklite algust.
*/
struct BF_instruction_st *BF_beginLoop_new(void) {
    struct BF_instruction_st *new = NULL;

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    new->loopForwardIndex = -1;
    new->run = BF_beginLoop_run;
    new->printAsm = BF_beginLoop_printAsm;

    cleanup:
    return new;
}

void BF_endLoop_printAsm(struct BF_instruction_st *instruction, int *index) {
    printf("    ;;;; Instruktsioon ]\n");
    printf("    jmp silt_%d\n", instruction->loopBackIndex);
    printf("silt_%d:\n", *index);
}
void BF_endLoop_run(struct BF_instruction_st *instruction, int *index) {
    int val = mem_get();

    if (instruction->loopBackIndex < 0) {
        printf("Tsükli lõpp algväärtustamata!\n");
        return;
    }

    if (val == 0) {
        /* Pole mõtet tsükli algusesse tagasi hüpata, sest tsüklit enam ei täideta. */
        (*index)++;
    } else {
        /* Mine tagasi tsükli algusesse. */
        *index = instruction->loopBackIndex;
    }
}
/* Konstruktor funktsioon BF_endLoop_new loob uue struktuuri, mis implementeerib
   tsüklite lõppu.
*/
struct BF_instruction_st *BF_endLoop_new(int loopBackIndex) {
    struct BF_instruction_st *new = NULL;

    new = malloc(sizeof(struct BF_instruction_st));
    if (new == NULL) {
        printf("Mälu küsimine ebaõnnestus.");
        goto cleanup;
    }

    new->loopBackIndex = loopBackIndex;
    new->run = BF_endLoop_run;
    new->printAsm = BF_endLoop_printAsm;

    cleanup:
        return new;
}

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

void parse(struct BF_instruction_st **inst_arr, const char *program) {
    int i = 0;

    struct stack_st loopStack = EMPTY_STACK;

    while (program[i] != 0 ) {

        /* Algväärtustame kõik instruktsioonid eelnevalt NULL'iga. */
        inst_arr[i] = NULL;
        switch (program[i]) {
            case BF_INCREASE:
                inst_arr[i] = BF_increment_new(1);
                break;
            case BF_DECREASE:
                inst_arr[i] = BF_increment_new(-1);
                break;
            case BF_RIGHT:
                inst_arr[i] = BF_move_new(1);
                //mem_right();
                break;
            case BF_LEFT:
                inst_arr[i] = BF_move_new(-1);
                //mem_left();
                break;
            case BF_DEBUG:
                inst_arr[i] = BF_debug_new();
                break;
            case BF_READ: {
                inst_arr[i] = BF_read_new();
                break;
            }
            case BF_PRINT: {
                inst_arr[i] = BF_print_new();
                break;
            }
            case BF_START_LOOP:
                inst_arr[i] = BF_beginLoop_new();
                stack_push(&loopStack, i);
                break;

            case BF_END_LOOP: {
                int beginIndex = stack_pop(&loopStack);
                inst_arr[i] = BF_endLoop_new(beginIndex);

                /* Uuendame ka tsükli algust, et seal oleks olemas info kus asub tsükli lõpp! */
                inst_arr[beginIndex]->loopForwardIndex = i;

                break;
            }

            default:;
                break;
                /* Ignoreerime sümboleid, mida me ei tunne. */
        }
        i++;
    }
}