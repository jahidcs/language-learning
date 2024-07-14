#include <stdio.h>

int main(void){
    float a;
    float b;
    float total;

    printf("Enter value 1: ");
    scanf("%f", &a);

    printf("Enter value 2: ");
    scanf("%f", &b);

    total = a + b;

    printf("Total: %f", total);

    return 0;
}
