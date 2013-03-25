#if defined(__APPLE__) || defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__)
#  define ALIGN_LOG
#endif

#ifdef ALIGN_LOG
#  define ALIGN(log) .align (log), 0x90;
#else
#  define ALIGN(log) .align 1 << (log), 0x90;
#endif

#define ENTRY(name)     \
  ALIGN(5);             \
  .globl name;          \
  .globl _##name;       \
  name: ;               \
  _##name:
