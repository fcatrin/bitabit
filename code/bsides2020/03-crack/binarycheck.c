#include <stdio.h>

void checkLicense(int flag) {
	if (flag == 0x29 ) {
		printf("OK\n");
	} else {
		printf("NOK\n");
	}
}

int main(int argc, char *argv[]) {
	int x = 1;
	checkLicense(x);
}
