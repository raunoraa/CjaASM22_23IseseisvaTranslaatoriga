//
// Created by raunoraa on 13/09/2022.
//

#include "stack.h"
#include <stdio.h>
#include <stdlib.h>

//pinu implementeerimine

/* Globaalne pinu int väärtustest pikkusega stack_size. Olulised indeksid:
*  stack[stack_len - 1]    - pinu pealmine element, kui stack_len > 0,
*  stack[stack_len]        - massiivi esimene "vaba" koht, kui stack_len < stack_size
*/


//https://stackoverflow.com/questions/18435302/variable-length-array-folded-to-constant-array
#define TRUE 1
#define FALSE 0

/* Pinu struktuur, mis sisaldab nii pinu pikkust kui ka pinu ennast, mis on
   täisarvude massiiv.
*/

void stack_push(struct stack_st *s, int element) {
    /* Teeme topelt kontrolli, kuigi piisaks vaid ühest, kas mälu on allokeeritud. */
    if (s->size == 0 || s->arr == NULL) {
        /* Mälu pole allokeeritud. */

        /* Alustame ühest elemendist. */
        s->size = 1;


        /* Allokeerime mälu vaid ühe (int tüüpi!!!) elemendi jaoks. */
        s->arr = malloc(sizeof(int) * s->size);

        /* Kontrollime kas mälu küsimine õnnestus. */
        if (s->arr == NULL) {
            printf("Mälu otsas!\n");
            return;
        }

        /* Antud hetkel ei saa elemente pinus olla. */
        s->len = 0;
    } else if (s->len == s->size) {
        /* Peame mälu suurendama 2x, aga kasutame ajutisi muutujaid, sest
           mälu suuruse muutmine võib ebaõnnestuda. */
        int tmp_size = s->size * 2;
        int *tmp_arr = NULL;

        tmp_arr = realloc(s->arr, sizeof(int) * tmp_size);
        if (tmp_arr == NULL) {
            printf("Mäluala suuruse muutmine ebaõnnestus.\n");
            return;
        }
        /* Alles nüüd teame, et kõik õnnestus! */

        s->arr = tmp_arr;
        s->size = tmp_size;
    }

    /* Antud hetkel teame, et pinusse mahub veel vähemalt üks element. */
    s->arr[s->len] = element;

    /* Suurendame pinusse lisatud elementide arvu. */
    s->len++;
}

/* Funktsioon stack_pop ei saa ühtegi parameetrit ja tagastab globaalse pinu pealmise elemendi, mille ta
 * pinust eemaldab. Kui pinu on juba tühi, siis funktsioon tagastab väärtuse 0.
 */
int stack_pop(struct stack_st *s) {
    /* Kontrollime, kas pinus on elemente. Kui ei ole, siis tagastame väärtuse 0. */
    /*
    if (stack_isEmpty()) {
        // Pinu on tühi, tagastame väärtuse 0.
        return 0;
    }
    */
    int element = 0; //võtame elemendi andud viida juurest välja
    //kui pinu on tõhi, ei saa elemente eemaldada, tagastame 0
    if (s->len==0 || s->arr==NULL){
        return element;
    }
    element = s->arr[s->len-1]; //võtame elemendi andud viida juurest välja
    s->len--;
    if(s->len==0){
        free(s->arr);
        s->arr = NULL;
        s->size=0;
        return element;
    }
    if(s->len<(int) s->size/4){
        //printf("%lu",sizeof(int)*s->size);

        int ajutineSize = s->size/2;
        int *tmp_arr = NULL;

        tmp_arr = realloc(s->arr,sizeof(int)*ajutineSize);
        if (tmp_arr==NULL){
            printf("Mäluala suuruse muutmine ebaõnnestus.\n");
            return 0;
        }

        s->size=ajutineSize;
        s->arr = tmp_arr;
    }

    /* Teame, et pinus on vähemalt üks element. */

    //stack2.size++; //elemente saab nüüd lisada ühe võrra rohkem

    /* Tagastame eemaldatud väärtuse. */
    return element;
}

/* Funktsioon stack_isEmpty tagastab tõeväärtuse (0-vale ja mitte 0 tõene) vastavalt sellele kas
 * pinu on tühi või mitte.
 */
int stack_isEmpty(struct stack_st *s) {
    if(s->size==0) return TRUE;
    return FALSE;
}

/* Funktsioon stack_peek tagastab pinu pealmise elemendi ilma seda eemaldamata.
 * Kui pinu on tühi, siis see tagastab 0 väärtuse.
 */
int stack_peek(struct stack_st *s) {
    if(stack_isEmpty(s)){
        return 0;
    }
    return *s->arr;
}

/* Funktsioon stack_print trükib ekraanile kõik pinu elemendid eraldi reale alustades ülemisest.
 */
void stack_print(struct stack_st *s) {
    if(stack_isEmpty(s)) return;
    for (int i = *s->arr-1; i >= 0; i--) { //c-s pole for each loopi
        printf("%d\n", s->arr[i]);
    }
}

void stack_free(struct stack_st *s){
    free(s->arr);
    s->arr = NULL;
}