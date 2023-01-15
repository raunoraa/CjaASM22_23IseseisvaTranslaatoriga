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
    inc esi

    cmp esi, 30000
    ja yletaitumine_0

    jmp liigu_edasi_0

yletaitumine_0:
    mov esi, 0

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
    dec esi

    cmp esi, 0
    jb alla_nulli_10

    jmp liigu_edasi_10

alla_nulli_10:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_20

    jmp liigu_edasi_20

yletaitumine_20:
    mov esi, 0

liigu_edasi_20:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_9
silt_22:
    ;;;; Instruktsioon <
    dec esi

    cmp esi, 0
    jb alla_nulli_23

    jmp liigu_edasi_23

alla_nulli_23:
    mov esi, 30000

liigu_edasi_23:
    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    inc esi

    cmp esi, 30000
    ja yletaitumine_25

    jmp liigu_edasi_25

yletaitumine_25:
    mov esi, 0

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
    dec esi

    cmp esi, 0
    jb alla_nulli_31

    jmp liigu_edasi_31

alla_nulli_31:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_39

    jmp liigu_edasi_39

yletaitumine_39:
    mov esi, 0

liigu_edasi_39:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_30
silt_41:
    ;;;; Instruktsioon <
    dec esi

    cmp esi, 0
    jb alla_nulli_42

    jmp liigu_edasi_42

alla_nulli_42:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_58

    jmp liigu_edasi_58

yletaitumine_58:
    mov esi, 0

liigu_edasi_58:
    ;;;; Instruktsioon >
    inc esi

    cmp esi, 30000
    ja yletaitumine_59

    jmp liigu_edasi_59

yletaitumine_59:
    mov esi, 0

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
    dec esi

    cmp esi, 0
    jb alla_nulli_67

    jmp liigu_edasi_67

alla_nulli_67:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_75

    jmp liigu_edasi_75

yletaitumine_75:
    mov esi, 0

liigu_edasi_75:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_66
silt_77:
    ;;;; Instruktsioon <
    dec esi

    cmp esi, 0
    jb alla_nulli_78

    jmp liigu_edasi_78

alla_nulli_78:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_95

    jmp liigu_edasi_95

yletaitumine_95:
    mov esi, 0

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
    dec esi

    cmp esi, 0
    jb alla_nulli_103

    jmp liigu_edasi_103

alla_nulli_103:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_113

    jmp liigu_edasi_113

yletaitumine_113:
    mov esi, 0

liigu_edasi_113:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_102
silt_115:
    ;;;; Instruktsioon <
    dec esi

    cmp esi, 0
    jb alla_nulli_116

    jmp liigu_edasi_116

alla_nulli_116:
    mov esi, 30000

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
    dec esi

    cmp esi, 0
    jb alla_nulli_119

    jmp liigu_edasi_119

alla_nulli_119:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_141

    jmp liigu_edasi_141

yletaitumine_141:
    mov esi, 0

liigu_edasi_141:
    ;;;; Instruktsioon >
    inc esi

    cmp esi, 30000
    ja yletaitumine_142

    jmp liigu_edasi_142

yletaitumine_142:
    mov esi, 0

liigu_edasi_142:
    ;;;; Instruktsioon >
    inc esi

    cmp esi, 30000
    ja yletaitumine_143

    jmp liigu_edasi_143

yletaitumine_143:
    mov esi, 0

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
    dec esi

    cmp esi, 0
    jb alla_nulli_149

    jmp liigu_edasi_149

alla_nulli_149:
    mov esi, 30000

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
    inc esi

    cmp esi, 30000
    ja yletaitumine_158

    jmp liigu_edasi_158

yletaitumine_158:
    mov esi, 0

liigu_edasi_158:
    ;;;; Instruktsioon -
    mov al, [esi]
    dec al
    mov [esi], al

    ;;;; Instruktsioon ]
    jmp silt_148
silt_160:
    ;;;; Instruktsioon <
    dec esi

    cmp esi, 0
    jb alla_nulli_161

    jmp liigu_edasi_161

alla_nulli_161:
    mov esi, 30000

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

