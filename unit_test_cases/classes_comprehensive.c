// Comprehensive test for C++ style classes

class Point {
public:
    int x;
    int y;
};

class Rectangle {
public:
    int width;
    int height;
    int area;
};

int main() {
    // Test Point class - direct member access
    class Point p1;
    class Point p2;
    
    // Test Rectangle class
    class Rectangle rect;

    // Initialize Point using direct member access (DOT operator)
    int px;
    int py;
    int x_val;
    int y_val;
    int w;
    int h;
    int area_val;
    int perimeter;
    
    px = 4;
    py = 3;
    p1.x = px;
    p1.y = py;
    
    // Read values back
    x_val = p1.x;
    y_val = p1.y;
    
    // Initialize Rectangle
    w = 6;
    h = 5;
    rect.width = w;
    rect.height = h;
    rect.area = w * h;
    
    // Read Rectangle values
    area_val = rect.area;
    perimeter = 2 * (rect.width + rect.height);
    
    return 0;
}
