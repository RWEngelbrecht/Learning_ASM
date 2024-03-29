#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int putchar_asm(int s);
void bzero_asm(void *s, size_t n);
void puts_asm(const char *s);
unsigned long strlen_asm(const char *s);

int main(void)
{
    char    *stri;
	const char *strb;
	char	str;
    int     ret[2];
	char	*msg;
	char	str2;

    stri = strdup("sa");
	strb = strdup("bo");
	str = stri[0];
	str2 = strb[0];

    putchar(str);
	putchar_asm('\n');
    putchar_asm(str2);
	putchar_asm('\n');
	char z[7] = "hellow";
	printf("\nbzero\n");
	bzero_asm(z, 0);
	printf("  bzero_asm(\"hellow\", 0) -> [%c][%c][%c][%c][%c][%c]\n", z[0], z[1], z[2], z[3], z[4], z[5]);
	bzero_asm(z, 3);
	printf("  bzero_asm(\"hellow\", 3) -> [%c] [%c] [%c] [%c][%c][%c]\n", z[0], z[1], z[2], z[3], z[4], z[5]);
	printf("strlen:\n  string: %s\n  sys strlen: %lu\n",stri,strlen(stri));
	printf("  string: %s\n  strlen_asm: %lu",strb,strlen_asm(strb));

    // printf("puts return value : %d | ft_puts return value : %d\n\n", ret[0], ret[1]);
    free(stri);

	return (0);
}
