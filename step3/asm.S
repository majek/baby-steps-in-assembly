#include "../macros.h"

ENTRY(square_int)
    mov 4(%esp), %eax    # pick up the parameter
    imul %eax, %eax
    ret

ENTRY(square_int_ebx)
    push %ebx
    mov $0, %ebx         # say we need %ebx
    mov 8(%esp), %eax    # pick up the parameter with
                         # adjusted location
    imul %eax, %eax
    pop %ebx             # restore %ebx
    ret

ENTRY(square_int_stack_frame)
    push %ebp           # preserve %ebp
    mov %esp, %ebp      # top of the stack is now in %ebp
                        # now we can push as many things
                        # on the stack and still address the
                        # parameter as 8(%ebp)
    sub $16, %esp       # we can for reserve few bytes
                        # for the stack frame, why not!

    mov 8(%ebp), %eax   # a parameter relative to %ebp
    imul %eax, %eax

    mov %ebp, %esp      # we need to restore original %esp
    pop %ebp            # and %ebp
    ret

ENTRY(square_int_enter)
    enter $16, $0

    mov 8(%ebp), %eax
    imul %eax, %eax

    leave
    ret
