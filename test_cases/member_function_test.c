// Test member function calls with dot and arrow operators

class Point {
public:
    int x;
    int y;
    
    void setX(int newX) {
        x = newX;
    }
    
    void setY(int newY) {
        y = newY;
    }
    
    int getX() {
        return x;
    }
    
    int getY() {
        return y;
    }
};

int main() {
    class Point p1;
    int x_value;
    int y_value;

    
    // Test member function calls with dot operator
    p1.setX(10);
    p1.setY(20);
    
    
    x_value = p1.getX();
    y_value = p1.getY();
    
    return 0;
}
