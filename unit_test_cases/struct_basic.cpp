int main(){
    // basic structss declarationss and usage

    // ---- diff sizes 
    struct S { int a; char b; float c; int d;};
    // struct S s = { 42, 'x' };              // direct declaration not possible
    
    // ---- initialization and then declaration 
    struct A;
    struct A { int x; };

    // struct Outer { struct { int a; }};      // nested structs can be written seperately, but not together

    // ---- struct with typedef (yet to be seen)
    struct aloo { int x; };
    
    // ---- empty struct 
    struct V { void v; };
    
    // ---- array inside struct
    struct Arr { int a[10]; };
    // struct Arr arr = { .a = { 0,1,2,3,4,5,6,7,8,9 } };
    
    // ---- pointer to struct
    struct Node { struct Node *next; int val; };
    
    // ---- nested struct with name
    struct Inner { int a; char b; float c; };
    struct Outer2 { struct Inner i; float f; };
    
    typedef struct aloo hiii;
    
    // modifying the struct members using the existing structss
    struct S s;    
    struct A* a;
    struct Arr temp;
    struct Node node1, node2;
    struct Outer2 o2;
    hiii entity;
    int i = 0;
    
    // -- simple assignment with using its own values
    s.a = 42;
    s.b = 'x';
    s.c = 3.14;
    s.d = s.a + (int)s.c;
    
    entity.x = 55;
    
    // -- pointer assignment
    a -> x = 100;
    
    // -- array inside structs
    while(i < 10){
        temp.a[i] = i * i;
        i = i + 1;
    }
    
    // -- linked list yooo
    node1.val = 1;
    node2.val = 2;
    node1.next = &node2;               
    node2.next = NULL;
    
    // -- nested structss
    o2.i.a = 10;
    o2.i.b = 'y';
    o2.i.c = 2.71;
    o2.f = o2.i.c + 1.0;
    
    return 0;
}