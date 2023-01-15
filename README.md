# Brainfucki kompilaator
<br>
Kasutab gcc ja nasm kompilaatoreid.
<br>
C programmid (*.h ja *.c) paiknevad "src" kaustas.
<br>

### Juhised
Ava terminal (VSCode'i või Linuxi terminal) ning vaata, et hetke kaust oleks "CjaASM22_23".<br>
Kompileerimiseks sisesta terminali "make". See tekitab "build" folderi koos kompileeritud failidega.<br>
Kompileeritud failide kustutamiseks "make clean". See kustutab "build" folderi koos kompileeritud failidega.<br>
Kui failid on kompileeritud (NB! Kui kompileeritud faile pole, tuleb error!), siis käivitamiseks kirjutada "make run". See tekitab "hello.asm" faili ning kompileerib ja  käivitab selle.<br>
<br>
Uuesti kompileerimiseks võib lihtsalt kasutada taaskord käsku "make" (kirjutatakse vajalikud failid üle).
<br>
<br>
Uuesti "hello.asm" faili genereerimiseks, kompileerimiseks ja käivitamiseks võib lihtsalt kasutada taaskord käsku "make run" (ei pea vana "hello.asm" faili ära kustutama, see kirjutatakse lihtsalt üle).
<br>
<br>
Hetkel ei ole genereeritud ASM fail veel korrektne (ei kompileeru). Tõenäoliselt on probleem tsüklites.
