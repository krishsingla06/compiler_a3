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