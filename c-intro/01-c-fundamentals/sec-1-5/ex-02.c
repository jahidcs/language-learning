#include <stdio.h>

int main(){
    int length, volume;

    printf("Enter edge length: ");
    scanf("%d", &length);

    volume = length * length * length;

    printf("Volume of the cube: %d", volume);
    return 0;
}
