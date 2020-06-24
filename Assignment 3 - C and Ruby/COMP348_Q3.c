//COMP 348 ASSIGNMENT 3
//WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
//DUE DATE: June 17th 2020
//QUESTION 3
#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char* title;
    float price;
}Book;

void Display(Book[], int);
float AverageBookPrice(Book[], int);
Book* Add(Book[], int);
int main() {
    int n;
    printf("Enter the number of books to store: ");
    scanf("%d", &n);

    Book *arr = malloc(sizeof(Book)*n );//initializing the book array


    for(int i = 0; i < n; i++){
        char* title1;
        float price1;
        printf("\nEnter the title and price: ");
        scanf(" %s%f", &title1, &price1);
        arr[i].title = title1;
        arr[i].price = price1;
    }
    Display(arr, n);
    float average = AverageBookPrice(arr, n);
    printf("Average price is: %.2f", average);
    Book* new = Add(arr,n);
    Display(new, n+1);
    float average1 = AverageBookPrice(new, n+1);
    printf("New Average price is: %.2f", average1);
    return 0;
}

void Display(Book* arr, int size){
    for(int i = 0 ; i < size ; i++){
        printf("Book title: %s Price: %.2f\n",&arr[i].title, arr[i].price);
    }
}

float AverageBookPrice(Book arr[], int size){
    float sum = 0.0;
    for(int i = 0 ; i < size; i++){
        sum = sum + arr[i].price;
    }
    float average = sum / size;
    return average;
}

Book* Add(Book *arr, int size){
    char* newTitle;
    float newPrice;
    printf("\nEnter the title and price of book to be added: ");
    scanf(" %s%f", &newTitle, &newPrice);

    Book *newArr = malloc(sizeof(Book)*size + sizeof(Book));

    for(int i = 0; i < size; i++){
        newArr[i].price = arr[i].price;
        newArr[i].title = arr[i].title;
    }
    newArr[size].title = newTitle;
    newArr[size].price = newPrice;
    free(arr);

    return newArr;
}
