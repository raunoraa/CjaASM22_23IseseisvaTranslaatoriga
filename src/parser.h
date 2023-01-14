//
// Created by casm2022 on 8.11.22.
//

#ifndef BRAINFUCKINTERPRETER_PARSER_H
#define BRAINFUCKINTERPRETER_PARSER_H

struct BF_instruction_st {
    /* Instruktsiooni väljakutse funktsioon. Esimene parameeter on instruktsiooni
       objekt ise ja teine on viit instruktsiooni indeksile, mida antud funktsioon
       peab kas suurendama või muutma (näiteks tsüklites). */
    void (*run)(struct BF_instruction_st *instruction, int *index);

    /* Assembleri implementatsiooni funktsioon. Trükib välja vastava instruktsiooni
       implementatsiooni assembleris. */
    void (*printAsm)(struct BF_instruction_st *instruction, int *index);

    /* Implementatsiooni spetsiifilised väärtused. */
    union {
        /* Suurenda liitmisel väärtust selle võrra (võib olla ka negatiivne). */
        int increment;

        /* Mitu kohta tuleb mälu asukohta liigutada (võib olla ka negatiivne). */
        int numberOfPositions;

        /* Indeks kuhu hüpata tsükli alguses kui getMem() == 0. */
        int loopForwardIndex;

        /* Indeks kuhu hüpata tagasi tsükli lõpus kui getMem() != 0. */
        int loopBackIndex;
    };
};
void run(struct BF_instruction_st **inst_arr, int inst_arr_len);
void parse(struct BF_instruction_st **inst_arr, const char *program);
void printAsm(struct BF_instruction_st **inst_arr, int inst_arr_len);

#endif //BRAINFUCKINTERPRETER_PARSER_H
