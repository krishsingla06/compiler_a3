#include<stdio.h>

// //pass array to fun as parameter
// int foo(int arr[50],int n){
//     //print size of arr
//     printf("Size of arr in foo: %d\n",sizeof(arr)); //8 -> because arr is pointer
// }

int main(){
   int x=3;
   int *y=&x;
   char* z= (char*)y; //allowed
   float* p= (float*)y; //allowed
    int* q= (int*)z; //allowed
    int a= *y; //allowed
    return 0;
}