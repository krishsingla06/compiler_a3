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
    return 0;
}
