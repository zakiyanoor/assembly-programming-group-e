#include <stdio.h>

extern int factorial(int n);

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    int result = factorial(num);
    printf("Factorial of %d = %d\n", num, result);

    return 0;
}
