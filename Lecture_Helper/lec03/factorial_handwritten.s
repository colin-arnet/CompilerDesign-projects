
# long factorial(long i) {
#     if (i > 1l)
#         return i * factorial(i - 1l);
#     return 1l;
# }


.text
.globl factorial

factorial:
    #i is in %rdi

    #boilerplate
    pushq   %rbp 
    movq    %rsp, %rbp

#   if (i > 1l)
    cmpq    $1, %rdi
    jg      .GT1

.LE1:
#   return 1l;
    movq    $1, %rax 
    jmp     .EXIT

.GT1:
#       return i * factorial(i - 1l);
    pushq   %rdi
    subq    $1, %rdi
    call    factorial #return val is in %rax
    popq    %rdi
    imulq   %rdi, %rax

.EXIT:
    #boilerplate
    movq    %rbp, %rsp
    popq    %rbp
    ret #return value in %rax

.data
