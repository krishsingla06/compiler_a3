class MyClass{
public:
    static int myVariable;
    char myChar;

    MyClass(int var, char c) {
        myVariable = 0;
        myChar = 0;
    }
    ~MyClass() {}
    int getChar() { return myChar; }

    int getStaticVariable(int inp) { return myVariable; }
};

int main() {
    class MyClass obj;
    int ret;
    int rref;
    class MyClass arr[10];
    class MyClass &ref = obj;
    class MyClass *ptr = &obj;
    arr[0] = obj;
    ptr -> myVariable = 10; 
    ptr -> myChar = 'A';

    ret = obj.getStaticVariable(1);
    rref = ref.getChar();

    
    return 0;
}