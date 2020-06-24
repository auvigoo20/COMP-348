//COMP 348 ASSIGNMENT 3
//WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
//DUE DATE: June 17th 2020
//QUESTION 1
#include <stdio.h>

int CallFun(int *a);

int main() {
    int a = 3;
    CallFun(&a);
    printf("Value of a is: %d", a);
    return 0;
}
int CallFun(int *num){
    *num = 17;
}