    .data
prompt:     .asciiz "Enter a number (your number must be greater than or equal to 25): "
error_msg:  .asciiz "Illegal Number!\n"
fib_msg:    .asciiz "Fibonacci Sequence:\n"

    .text
main:
    #Ask for number
    li $v0, 4
    la $a0, prompt
    syscall
