#include <string.h>
#include <stdio.h>

int	main(void)
{
	char buffer[100];

	printf("Please enter key: ");
	scanf("%s", buffer);
	int result = strcmp(buffer, "__stack_check");
	if (result == 0)
		printf("Good job.\n");
	else
		printf("Nope.\n");
	return 0;
}