class Point {
    int x, y;
public:
    Point(){x=0;y=0;}                
    Point(int x){y=0;}  
    Point(int a, int b){x=a;y=b;}
    void print() {}
};

void takesPoint(class Point p) { p.print(); }

int main() {
    class Point a;         
    class Point b(3);      
    class Point c(3, 7);   
    a.print(); b.print(); c.print();
    // The next line must NOT compile if implicit conversion is allowed.
    // Uncomment to negative-test your compiler:
    // takesPoint(5); // should fail due to 'explicit'
    return 0;
}
