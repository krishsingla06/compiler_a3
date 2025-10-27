// passed 
int func(){
    int a = 0;
    int& c = a;
    // char&d = a; // strict type required for references as per C++ standard
    c = 7;
    return c;

}
