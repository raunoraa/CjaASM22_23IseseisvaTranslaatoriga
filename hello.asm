global main

extern mem_add
extern mem_move
extern mem_inc
extern mem_dec
extern mem_left
extern mem_right
extern mem_get
extern mem_set
extern mem_printDebug

extern putchar

section .text
main:
    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon [
silt_9:
    call mem_get
    cmp eax, 0
    je silt_22
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon ]
    jmp silt_9
silt_22:
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon [
silt_30:
    call mem_get
    cmp eax, 0
    je silt_41
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon ]
    jmp silt_30
silt_41:
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon [
silt_66:
    call mem_get
    cmp eax, 0
    je silt_77
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon ]
    jmp silt_66
silt_77:
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon [
silt_102:
    call mem_get
    cmp eax, 0
    je silt_115
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon ]
    jmp silt_102
silt_115:
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon [
silt_148:
    call mem_get
    cmp eax, 0
    je silt_160
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon >
    push dword 1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon -
    push dword -1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon ]
    jmp silt_148
silt_160:
    ;;;; Instruktsioon <
    push dword -1
    call mem_move

    add esp, 4

    ;;;; Instruktsioon +
    push dword 1
    call mem_add

    add esp, 4

    ;;;; Instruktsioon .
    call mem_get

    push eax
    call putchar

    add esp, 4

    mov eax, 0
    ret

