#include <stdio.h>

#define ROWS 3
#define COLS 6

char a[ROWS][COLS];

int sum_fast() {
	int n = 0;
    for(int row=0; row<ROWS; row++) {
        for(int col=0; col<COLS; col++) {
        	a[row][col] = 10;
        }
    }
    return n;
}

int sum_slow() {
	int n = 0;
	for(int col=0; col<COLS; col++) {
		for(int row=0; row<ROWS; row++) {
        	a[row][col] = 10;
        }
    }
	return n;
}

int main() {
    int x = sum_slow();
    int y = sum_fast();
    printf("%d %d\n", a[2][1], x+y);
}
