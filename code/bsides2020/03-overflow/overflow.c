#include <stdio.h>
#include <string.h>


int main(int argc, char *argv[]) {
	char name[10];
	char cmd[20];

	strcpy(cmd, "ls -la");
	strcpy(name, argv[1]);
	printf("%s\n", cmd);
	return 0;
}
