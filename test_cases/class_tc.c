class B{
    int yy;
    public:
    int b;
    int funcB(){
        return b;
    }
};
int main(){
    // class A b1; // Error: 'class A' has not been declared
    class B b1; // Correct usage of class B
    b1.unknown = 5; // Error: 'unknown' is not a member of class B
    b1.b = 10; // Accessing member b of class B
    b1.yy = 15; // Error: 'yy' is a private member of class B
    // b1->b = 20; // Error: 'b1' is not a pointer
    b1.funcB(); // Calling member function funcB of class B
    return 0;
}
