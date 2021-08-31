

#ifndef	LIBASM_H

# define LIBASM_H
# include <stdio.h>
# include <fcntl.h>
# include <string.h>
# include <unistd.h>
# include <stdlib.h>
# include <errno.h>

size_t	_strlen(const char *s);
ssize_t	_write(int fd, const void *buf, size_t count);
ssize_t _read(int fd, void *buf, size_t count);
int		_strcmp(const char *s1, const char *s2);
char	*_strcpy(char *dest, const char *src);
char	*_strdup(const char *s);

#endif
