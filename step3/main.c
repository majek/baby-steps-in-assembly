#include <stdio.h>
#include <assert.h>

int square_int(int a);
int square_int_ebx(int a);
int square_int_stack_frame(int a);
int square_int_enter(int a);

int main() {
	printf("[.] Calling square_int()\n");
	assert(square_int(4) == 4*4);
	printf("[.] Calling square_int_ebx()\n");
	assert(square_int_ebx(5) == 5*5);
	printf("[.] Calling square_int_stack_frame()\n");
	assert(square_int_stack_frame(6) == 6*6);
	printf("[.] Calling square_int_enter()\n");
	assert(square_int_enter(7) == 7*7);
	printf("[.] It worked!\n");
	return 0;
}
