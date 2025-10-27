class MyClass{
private:
    static int myVariable;
    char myChar;

public:
    MyClass(int v, char c) {
        myVariable = v;
        myChar = c;
    }
    ~MyClass() {
        
    }
    int getChar() { return myChar; }

    int getStaticVariable(int inp) { return myVariable; }
};

int main() {
    class MyClass obj;
    int ret;
    int rref;
    class MyClass arr[10];
    class MyClass &ref = obj;

    ret = obj.getStaticVariable(1);
    rref = ref.getChar();

    
    return 0;
}
