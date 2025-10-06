#include<stdio.h>

//pass array to fun as parameter
int foo(int arr[50],int n){
    //print size of arr
    printf("Size of arr in foo: %d\n",sizeof(arr)); //8 -> because arr is pointer
}

int main(){
    int a=5;
    int b=10;
    int c=15;
    int arr[3] = {a,b,c};
    return 0;
}