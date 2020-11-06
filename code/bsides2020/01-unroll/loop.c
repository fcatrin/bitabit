#include <stdio.h>

static int a[6];

static void fill() {
    for(int i=0; i<6; i++) {
	a[i] = 29;
    }
}

static void print() {
    for(int i=0; i<6; i++) {
	printf("%d\n", a[i]);
    }
}

int main() {
    fill();
    print();
}
