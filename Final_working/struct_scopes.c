void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

int main(){
    struct test1{int x;};
    struct test1 t1;
    int y = 0;
    t1.x = 10;

    while(t1.x < 15){
        t1.x = t1.x + 1;
    }

    until(t1.x < 12){
        printf("t1.x in loop: %d\n", t1.x);
        t1.x = t1.x - 1;
    }

    for( ; t1.x < 14; t1.x = t1.x + 1){
        printf("t1.x in for loop: %d\n", t1.x);
    }

    printf("t1.x: %d\n", t1.x);

    {
        struct G { int a; char b; };
        struct G outer;
        outer.a = 10;
        outer.b = 'z';
        
        {
            struct G { float d; }; // shadows outer struct G
            struct G inner;
            inner.d = 3.14;
        }
    }

    // test_typedef_vs_tag, wont run as typedef is given as typename and there is no rule for struct typename  
    // {
    //     typedef int Foo; // typedef Foo as int
    //     Foo y = 5;

    //     {
    //         struct Foo { int a; char b; };     // tag Foo as struct
    //         struct Foo sf;
    //         sf.a = 7;
    //         sf.b = 'x';

    //         Foo x = 123; // refers to typedef Foo (int)
    //     }
    // }

    // test_nested_struct_shadowing
    {
        struct X { char a; int b; };
        {
            struct X { int z; };
            {
                struct X { float d; char c; };
            }
        }
    }
    
    // The following are examples of illegal struct declarations (commented out):
    // 1) Member with incomplete type by-value (illegal):
    // struct Incomplete;
    // struct Bad { struct Incomplete i; }; // ERROR: member has incomplete type

    // 2) Redeclaring same tag in same scope with incompatible layout (illegal):
    // struct Same { int a; };
    // struct Same { double d; }; // ERROR: redefinition in same scope

    return 0;
}