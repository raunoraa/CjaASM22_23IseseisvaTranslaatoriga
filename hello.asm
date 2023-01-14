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
silt_22:
    call mem_get
    cmp eax, 0
    je silt_9
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
silt_41:
    call mem_get
    cmp eax, 0
    je silt_30
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
silt_77:
    call mem_get
    cmp eax, 0
    je silt_66
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
silt_115:
    call mem_get
    cmp eax, 0
    je silt_102
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
silt_160:
    call mem_get
    cmp eax, 0
    je silt_148
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

    ret

