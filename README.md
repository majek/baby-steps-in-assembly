
This is a code for a blog post.

You need `gcc` and `make`. Additionally to run it on 64-bit system you
may need to install `gcc-multilib` package.


How to run it and what should you see:

```
$ git clone https://github.com/majek/baby-steps-in-assembly.git
$ cd baby-steps-in-assembly/step1
$ make
$ ./step1
[.] Calling simplest_function()
[.] It worked!

$ cd ../step2
$ make
$ ./step2
[.] Calling call_hack()
[.] It worked!

$ cd ../step3
$ make
$ ./step3
[.] Calling square_int()
[.] Calling square_int_ebx()
[.] Calling square_int_stack_frame()
[.] Calling square_int_enter()
[.] It worked!
```
