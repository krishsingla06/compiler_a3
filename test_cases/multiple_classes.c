class A{
    private:
        int a;
    public:
        A(int val) {
            a = 0;
        }
        int getA() { return a; }
};

class B{
    private:
        int b;
    public:
        B(int val) {
            b = val;
        }
        int getA() {return b;}
};


float main(){
    class A a;
    class B b1;
    class B b(4);

    int p;
    int q;

    p = a.getA();
    q = b.getA();

}