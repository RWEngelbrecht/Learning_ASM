#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int putchar_asm(int s);

int main(void)
{
    char    *stri;
	char	str;
    int     ret[2];
	char	*msg;

    stri = strdup("s");
	str = stri[0];

    putchar(str);
	putchar_asm('\n');
    putchar_asm(str);

    // printf("puts return value : %d | ft_puts return value : %d\n\n", ret[0], ret[1]);
    free(stri);

	return (0);
}
