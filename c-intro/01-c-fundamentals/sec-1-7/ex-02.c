#include <stdio.h>

int main(void){
    func1();
    printf("\n printed ");

    return 0;
}

void func2(void){
    printf("The summer soldier");
}

void func1(void){
    func2();
    printf(" , ");
    printf("The sunshine patriot");
}
