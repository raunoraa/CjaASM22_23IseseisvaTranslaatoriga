global main
extern putchar

section .text
main:
    ; Salvestame esi väärtuse
    push esi

    ; Paneme magasini 30000 baiti, mille väärtused kõik on 0.
    mov ecx, 7500
    mem_init:
        push dword 0
        loop mem_init

    ; Viimasena lisatud väärtus on mäluala algus
    mov esi, esp


    ;;;;;;;;;;; Edasine on transleeritud kood!

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_0

    inc esi

    jmp liigu_edasi_0

yletaitumine_0:
    add esi, -29999

liigu_edasi_0:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon [
silt_9:
    mov eax, 0

    mov al, [esi]
    cmp eax, 0
    je silt_22

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_10

    dec esi

    jmp liigu_edasi_10

alla_nulli_10:
    add esi, 29999

liigu_edasi_10:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_20

    inc esi

    jmp liigu_edasi_20

yletaitumine_20:
    add esi, -29999

liigu_edasi_20:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_9
silt_22:
    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_23

    dec esi

    jmp liigu_edasi_23

alla_nulli_23:
    add esi, 29999

liigu_edasi_23:
    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_25

    inc esi

    jmp liigu_edasi_25

yletaitumine_25:
    add esi, -29999

liigu_edasi_25:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon [
silt_30:
    mov eax, 0

    mov al, [esi]
    cmp eax, 0
    je silt_41

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_31

    dec esi

    jmp liigu_edasi_31

alla_nulli_31:
    add esi, 29999

liigu_edasi_31:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_39

    inc esi

    jmp liigu_edasi_39

yletaitumine_39:
    add esi, -29999

liigu_edasi_39:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_30
silt_41:
    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_42

    dec esi

    jmp liigu_edasi_42

alla_nulli_42:
    add esi, 29999

liigu_edasi_42:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_58

    inc esi

    jmp liigu_edasi_58

yletaitumine_58:
    add esi, -29999

liigu_edasi_58:
    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_59

    inc esi

    jmp liigu_edasi_59

yletaitumine_59:
    add esi, -29999

liigu_edasi_59:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon [
silt_66:
    mov eax, 0

    mov al, [esi]
    cmp eax, 0
    je silt_77

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_67

    dec esi

    jmp liigu_edasi_67

alla_nulli_67:
    add esi, 29999

liigu_edasi_67:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_75

    inc esi

    jmp liigu_edasi_75

yletaitumine_75:
    add esi, -29999

liigu_edasi_75:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_66
silt_77:
    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_78

    dec esi

    jmp liigu_edasi_78

alla_nulli_78:
    add esi, 29999

liigu_edasi_78:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_95

    inc esi

    jmp liigu_edasi_95

yletaitumine_95:
    add esi, -29999

liigu_edasi_95:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon [
silt_102:
    mov eax, 0

    mov al, [esi]
    cmp eax, 0
    je silt_115

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_103

    dec esi

    jmp liigu_edasi_103

alla_nulli_103:
    add esi, 29999

liigu_edasi_103:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_113

    inc esi

    jmp liigu_edasi_113

yletaitumine_113:
    add esi, -29999

liigu_edasi_113:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_102
silt_115:
    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_116

    dec esi

    jmp liigu_edasi_116

alla_nulli_116:
    add esi, 29999

liigu_edasi_116:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_119

    dec esi

    jmp liigu_edasi_119

alla_nulli_119:
    add esi, 29999

liigu_edasi_119:
    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_141

    inc esi

    jmp liigu_edasi_141

yletaitumine_141:
    add esi, -29999

liigu_edasi_141:
    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_142

    inc esi

    jmp liigu_edasi_142

yletaitumine_142:
    add esi, -29999

liigu_edasi_142:
    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_143

    inc esi

    jmp liigu_edasi_143

yletaitumine_143:
    add esi, -29999

liigu_edasi_143:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon [
silt_148:
    mov eax, 0

    mov al, [esi]
    cmp eax, 0
    je silt_160

    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_149

    dec esi

    jmp liigu_edasi_149

alla_nulli_149:
    add esi, 29999

liigu_edasi_149:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon >
    mov ecx, esp
    cmp esi, ecx
    ja yletaitumine_158

    inc esi

    jmp liigu_edasi_158

yletaitumine_158:
    add esi, -29999

liigu_edasi_158:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_148
silt_160:
    ;;;; Instruktsioon <
    mov ecx, esp
    cmp esi, ecx
    jb alla_nulli_161

    dec esi

    jmp liigu_edasi_161

alla_nulli_161:
    add esi, 29999

liigu_edasi_161:
    ;;;; Instruktsioon +
    mov al, [esi]
    inc al
    mov [esi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ; Koristame virtuaalmälu.
    add esp, 30000

    ; Taastame esi väärtuse.
    pop esi

    mov eax, 0

    ; Lõpetame programmi
    ret

