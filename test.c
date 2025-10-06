#include<stdio.h>

//pass array to fun as parameter
int foo(int arr[50],int n){
    //print size of arr
    printf("Size of arr in foo: %d\n",sizeof(arr)); //8 -> because arr is pointer
}

int main(){
    int x = 0;
    int y=!(x)+4;
    printf("y=%d\n",y);
    return 0;
}