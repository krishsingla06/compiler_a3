// Test file for struct and union support

// Define a struct
struct Point {
    int x;
    int y;
};

// Define a union
union Data {
    int i;
    float f;
    char c;
};

// Define a nested struct
struct Rectangle {
    struct Point topLeft;
    struct Point bottomRight;
};

int main() {
    // Declare struct variables
    struct Point p1;
    struct Point p2;
    struct Rectangle rect;

    
    // Declare union variable
    union Data d;
    struct Point* ptr;
    
    // Access struct members with dot operator
    p1.x = 10;
    p1.y = 20;
    
    p2.x = p1.x + 5;
    p2.y = p1.y - 3;
    p1=p2;
    
    // Access union members
    d.i = 42;
    d.f = 3.14;
    
    // Declare pointer to struct
    
    // Access struct members with arrow operator
    ptr->x = 100;
    ptr->y = 200;
    
    // Nested struct access
    rect.topLeft.x = 0;
    rect.topLeft.y = 0;
    rect.bottomRight.x = 100;
    rect.bottomRight.y = 100;
    
    return 0;
}
