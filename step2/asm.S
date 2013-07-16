#include "../macros.h"


ENTRY(call_hack)
        push $_next_instruction          # Push the address of the
                                         # instruction following
                                         # our emulated `call`
        jmp simplest_function_ret_hack   # Jump to the called function
_next_instruction:                       # And we're back!
        ret

ENTRY(simplest_function_ret_hack)
        pop %eax
        jmp *%eax

