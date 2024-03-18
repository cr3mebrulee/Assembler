.section .data

.section .text
.globl _start
_start:
movl $1, %eax /*define the system call exit*/
movl $9, %ebx /*set status number 9 in the register %ebx*/

int $0x80 /*call the break for finishing the program*/

/* this illustrates how system calls work in Linux. To execute a system call, you must load the system call number into the %eax register, and then, if necessary, pass additional parameters to other registers (for example, the status number in %ebx). 

use echo $? to print the status code value of the last completed command.*/
