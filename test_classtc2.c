class Counter {
private:
    int value;
public:
    Counter() {value = 0;}
    void inc() { value++; }
    void add(int x) { value = value + x; }
    int get() { return value; }
};

int main() {
    class Counter c;
    c.inc();
    c.add(4);
    // cout << "Counter=" << c.get() << "\n";
    return 0;
}
