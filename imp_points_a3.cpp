    int (*arr_ptr)[10];             // Pointer to array
pointer to arrays we are not implementing for now



add another function which checks every entry and then checks type

    int arr[-6]; - it is stage2 error not stage3
     int arr[.6];

     int arr[0]={} handle karna rehta hai

// CASTING TO INT* YA FIRR SIZEOF(INT*) IS NOT ALLOWED TILL NOW

function can only return basetype or pointer, not array, also not in C

also function mei bhi passing array doesn't make sense, so just pass base types and pointers, vese bhi decay hone hii hai.

function declarator mei params ko consider karna pending hai, abhi sirf return type hii  consider ho thi hai

KRISH : initializer_list //dekhte hai isko, filhaal iski type string hai, karte hai kuch iska, most prolly multi dimensional arraya hata hii dunga

 x=y=5.5+5.6;
    printf("%f %d\n",x,y); //11.000000 11

    In C, neither ++x nor x++ are considered lvalues.
Explanation:
An lvalue in C refers to an expression that designates an object and has a memory address. It can appear on the left-hand side of an assignment operator. 
++x (prefix increment): This operation increments the value of x and then yields the new value of x. While x itself is an lvalue, the result of ++x is the value, not the object x itself. Therefore, you cannot assign to the result of ++x. For example, (++x) = 5; is invalid in C.
x++ (postfix increment): This operation yields the original value of x and then increments x. Similar to ++x, the result of x++ is a value (a temporary copy of the original x), not the object x. Therefore, you cannot assign to the result of x++. For example, (x++) = 5; is invalid in C

No static alloed in c struct

pending ig - 
int arr[] = {1, 2, 3.14};  // Should warn about float in int array
int arr[3] = {1,2}
int arr[6] = {1,2,3,}
int arr[] = {1,2,3,}

if (some_expression) { }  // Could validate that condition is valid
while (some_expression) { }
for (init; condition; increment) { }