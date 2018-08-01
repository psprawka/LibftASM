#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>


int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_isdigit(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isalnum(int c);
int		ft_isprint(int c);
void	ft_bzero(void *s, size_t n);
int		ft_puts(char *str);
int		ft_strlen(char *str);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, void *src, size_t n);
char	*ft_strcat(char *s1, char *s2);
char	*ft_strdup(char *s1);
void	ft_cat(int fd);


int main()
{
	char x = 'A';
	char y = 'a';
	char string[10] = "123456789\0";
	char string2[] = "Polcia\0";
	char string3[] = "Bobo\0";
	char string4[] = "";
	char string5[20] = "Hey \0";
	char string6[] = "Polcix\0";
	char *wtf;

	printf("1. To lower [%c] -> [%c] | [%c] -> [%c]\n", x, ft_tolower(x), '!', ft_tolower('!'));
	printf("2. To upper [%c] -> [%c] | [%c] -> [%c]\n", y, ft_toupper(y), '9', ft_toupper('9'));
	printf("3. Is alpha [%c] -> [%s] | [%c] -> [%s]\n", x, ft_isalpha(x) ? "true" : "false", '!', ft_isalpha('!') ? "true" : "false");
	printf("4. Is digit [%c] -> [%s] | [%c] -> [%s]\n", '\'', ft_isdigit('\'') ? "true" : "false", '0', ft_isdigit('0') ? "true" : "false");
	printf("5. Is alnum [%c] -> [%s] | [%c] -> [%s]\n", x, ft_isalnum(x) ? "true" : "false", '9', ft_isalnum('9') ? "true" : "false");
	printf("6. Is ascii [%c] -> [%s] | [%d] -> [%s]\n", x, ft_isascii(x) ? "true" : "false", -10, ft_isdigit(-10) ? "true" : "false");
	printf("7. Is print [%c] -> [%s] | [%c] -> [%s]\n\n", ' ', ft_isprint(' ') ? "true" : "false", 122, ft_isprint(122) ? "true" : "false");
	
	printf("8. Bzero before:\n[");
	for (int i = 0; i < 10; i++)
		printf("%c", string[i]);
	printf("]\n");
	ft_bzero(string, 5);
	printf("Bzero after:\n[");
	for (int i = 0; i < 10; i++)
		printf("%c", string[i]);
	printf("]\n");

	printf("\n9. Puts:\n");
	ft_puts(string3);
	ft_puts(string4);
	ft_puts(string6);
	printf("\n");

	printf("10. Strlen: [%s] [%lu][%d] ", string, strlen(string), ft_strlen(string));
	printf("| [%s][%lu][%d] ", string2, strlen(string2), ft_strlen(string2));
	printf("| [%s][%lu][%d] ", string4, strlen(string4), ft_strlen(string4));
	printf("| [%s][%lu][%d]\n\n", string3, strlen(string3), ft_strlen(string3));

	printf("11. Memset before:\n[");
	for (int i = 0; i < 10; i++)
		printf("%c", string[i]);
	printf("]\n");
	ft_memset(string, 'c', 10);
	printf("Memset after:\n[");
	for (int i = 0; i < 10; i++)
		printf("%c", string[i]);
	printf("]\n\n");

	printf("12. Memcpy before: [%p]\n[", string3);
	for (int i = 0; i < 5; i++)
		printf("%c", string3[i]);
	printf("]\n");
	ft_memcpy(string2, string3, 5);
	printf("Memcpy after: [%p]\n[", string2);
	for (int i = 0; i < 5; i++)
		printf("%c", string2[i]);
	printf("]\n\n");

	printf("13. Strcat before:\n[");
	for (int i = 0; i < 20; i++)
		printf("%c", string5[i]);
	printf("]\n[");
	ft_strcat(string5, string6);
	for (int i = 0; i < 20; i++)
		printf("%c", string5[i]);
	printf("]\n\n");

	printf("13. Strcat before: [%s]\n", string5);
	wtf = ft_strcat(string5, string6);
	printf("Strcat after: [%s]\n\n", wtf);

	printf("14. Strdup before: [%p][%s]\n", string3, string3);
	wtf = ft_strdup(string3);
	printf("Strdup after: [%s]\n\n", wtf);

	int fd = open("Makefile", O_RDONLY);
	ft_cat(fd);
	close(fd);

	ft_cat(0);
	return (0);
}


