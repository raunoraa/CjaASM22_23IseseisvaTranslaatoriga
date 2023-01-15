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

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon [
silt_9:
    mov eax, 0

    mov al, [esi + edi]
    cmp eax, 0
    je silt_22
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon ]
    jmp silt_9
silt_22:
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon [
silt_30:
    mov eax, 0

    mov al, [esi + edi]
    cmp eax, 0
    je silt_41
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon ]
    jmp silt_30
silt_41:
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon [
silt_66:
    mov eax, 0

    mov al, [esi + edi]
    cmp eax, 0
    je silt_77
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon ]
    jmp silt_66
silt_77:
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon [
silt_102:
    mov eax, 0

    mov al, [esi + edi]
    cmp eax, 0
    je silt_115
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon ]
    jmp silt_102
silt_115:
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon [
silt_148:
    mov eax, 0

    mov al, [esi + edi]
    cmp eax, 0
    je silt_160
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon >
    inc esi

    ;;;; Instruktsioon -
    mov al, [esi + edi]
    dec al
    mov [esi + edi], al

    ;;;; Instruktsioon ]
    jmp silt_148
silt_160:
    ;;;; Instruktsioon <
    dec esi

    ;;;; Instruktsioon +
    mov al, [esi + edi]
    inc al
    mov [esi + edi], al

    ;;;; Instruktsioon .
    mov eax, 0

    mov al, [esi + edi]
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

