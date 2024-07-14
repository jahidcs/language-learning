#include <stdio.h>

int main(void){
    int len, width;

    printf("Enter Length: ");
    scanf("%d", &len);

    printf("Enter Width: ");
    scanf("%d", &width);

    printf("Area is: %d", len*width);

    return 0;
}
