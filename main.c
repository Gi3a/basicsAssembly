

#include "libasm.h"

void		_show_strlen(char *text)
{
	printf("_strlen:[%s] - [%zu]\n", text, _strlen(text));
	printf("   strlen:[%s] - [%zu]\n", text, strlen(text));
}

void		_show_read(void)
{
	int		fd;
	char	buffer[100];

	fd = open("fill.txt", O_RDONLY);
	printf("_read: [%zd]\n", _read(fd, buffer, 100));
	close(fd);
	fd = open("fill.txt", O_RDONLY);
	printf("   read: [%zd]\n", read(fd, buffer, 100));
	fd = open("empty.txt", O_RDONLY);
	printf("_read: [%zd]\n", _read(fd, buffer, 100));
	close(fd);
	fd = open("empty.txt", O_RDONLY);
	printf("   read: [%zd]\n", read(fd, buffer, 100));
	close(fd);
	fd = open("not_exsist.txt", O_RDONLY);
	printf("_read: [%zd]\n", _read(fd, buffer, 100));
	close(fd);
	fd = open("not_exsist.txt", O_RDONLY);
	printf("   read: [%zd]\n", read(fd, buffer, 100));
	close(fd);
}

void		_show_write(char *text)
{
	_write(1, "_write: [", 12);
	_write(1, text, _strlen(text));
	_write(1, "]\n", 2);
	write(1, "   write: [", 12);
	write(1, text, strlen(text));
	write(1, "]\n", 2);
}

void		_show_strdup(char *text)
{
	char	*new;
	char	*onew;

	new = _strdup(text);
	printf("_strdup: [%s]\n", new);
	onew = strdup(text);
	printf("   strdup: [%s]\n", onew);
	free(new);
	free(onew);
}

void		_show_strcmp(char *s1, char *s2)
{
	printf("_strcmp: [%d]\n", _strcmp(s1, s2));
	printf("   strcmp: [%d]\n", _strcmp(s1, s2));
}

void		_divider(void)
{
	printf("====================================================================\n");
}

int			main(void)
{
	char	*none = "";
	char	*mini = "Hello, world!";
	char	*midi = "Hello, world! + Hello, world!";
	char	*bigi = "Hello, world! + Hello, world! + Hello, world!";

	_divider();
	_show_strlen(none);
	_show_strlen(mini);
	_show_strlen(midi);
	_show_strlen(bigi);
	_divider();
	_show_read();
	_divider();
	_show_write(none);
	_show_write(mini);
	_show_write(midi);
	_show_write(bigi);
	_divider();
	_show_strdup(none);
	_show_strdup(mini);
	_show_strdup(midi);
	_show_strdup(bigi);
	_divider();
	_show_strcmp(none, midi);
	_show_strcmp(midi, none);
	_show_strcmp(bigi, midi);
	_show_strcmp(midi, bigi);
	_show_strcmp(mini, midi);
	_show_strcmp(midi, mini);
	_divider();
	return (0);
}
