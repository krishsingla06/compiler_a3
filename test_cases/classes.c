class MyClass{
private:
    int myVariable;
    char myChar;

public:
    MyClass(int v, char c) {
        myVariable = v;
        myChar = c;
    }
    ~MyClass() {}
    int getVariable() { return myVariable; }
};

int main() {
    class MyClass obj;
    return 0;
}