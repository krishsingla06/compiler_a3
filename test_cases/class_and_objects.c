struct Rectangle {
    int width;
    int height;
};

class MyClass{
    int data;
    protected:
    int protectedData;
public:
    MyClass(int val) { data = val;}
    int getData() { return data; }
    ~MyClass() {data=val;}
};

class DerivedClass : public MyClass {
    int moreData;
public:
    DerivedClass (int val1, int val2){
        moreData = val1;
    }
    int getMoreData() { return moreData; }
};

void initRectangle(struct Rectangle* rect, int w, int h) {
    rect->width = w;
    rect->height = h;
}

int getArea(struct Rectangle* rect) {
    return rect->width * rect->height;
}

int getPerimeter(struct Rectangle* rect) {
    return 2 * (rect->width + rect->height);
}

int main() {
    struct Rectangle r1;
    int area = getArea(&r1);
    class MyClass obj(10);
    int perimeter = getPerimeter(&r1);
    initRectangle(&r1, 10, 5);
    

    return 0;
}