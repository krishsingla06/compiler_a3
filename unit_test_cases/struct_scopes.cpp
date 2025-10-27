int main(){
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

    // test_forward_declaration_and_definition
    {
        struct GlobalNode; // forward declaration
        struct Container { struct GlobalNode *nptr; };
        struct GlobalNode { int value; struct GlobalNode *next; }; // definition
        
        struct GlobalNode node;
        struct Container c;

        node.value = 99;
        node.next = NULL;

        c.nptr = &node;
    }

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