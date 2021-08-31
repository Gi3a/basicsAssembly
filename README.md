# lib_asm

## Use "make" to build the project

## The following functions have been implemented:
* read -  shall attempt to read nbyte bytes from the file associated with the open file descriptor, fildes, into the buffer pointed to by buf. The behavior of multiple concurrent reads on the same pipe, FIFO, or terminal device is unspecified.
* strcmp - compares two strings character by character. If the strings are equal, the function returns 0.
* strcpy - copies the string pointed by source (including the null character) to the destination.
* strdup - returns a pointer to a null-terminated byte string, which is a duplicate of the string pointed to by str1. The returned pointer must be passed to free to avoid a memory leak.
* strlen - takes a string as an argument and returns its length. The returned value is of type size_t (the unsigned integer type).
* write - shall attempt to write nbyte bytes from the buffer pointed to by buf to the file associated with the open file descriptor, fildes.