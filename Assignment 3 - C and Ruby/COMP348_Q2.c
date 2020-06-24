//COMP 348 ASSIGNMENT 3
//WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
//DUE DATE: June 17th 2020
//QUESTION 2
#include <stdio.h>

void DisplayArray(int*, int);   //declaring function prototype
void SelectionSort(int[], int); //declaring function prototype
int main() {
    int arr[5] = {1, 13, 5, 17, 11};
    DisplayArray(arr,5);
    printf("\n");
    SelectionSort(arr, 5);
    DisplayArray(arr,5);
    return 0;
}

//selection sort algorithm works by first searching through the array for the smallest value,
//then swaps it at index 0. This continues for index 1, 2, ... n-1.
void SelectionSort(int* arr, int size){
    int i, j, temp;
    int* pointer;
    pointer = &arr[0];
    for(i = 0 ; i < size; i++){
        for(j = i + 1 ; j < size ; j++){
            if(*(pointer + j) < *(pointer + i)){
                temp = *(pointer +i);
                *(pointer + i) = *(pointer +j);
                *(pointer + j) = temp;
            }
        }
    }
}

void DisplayArray(int *arr, int size){
    int i;
    int *ptr;
    ptr = &arr[0];
    for (i = 0; i < size-1; i++){
        printf("%d, ", *(ptr + i));
    }
    printf("%d", *(ptr + size-1));//to print the last value without a comma at the end
}
