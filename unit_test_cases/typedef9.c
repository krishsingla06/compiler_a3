// Define struct first
struct PairStruct {
    int a;
    int b;
};

// Then typedef
typedef struct PairStruct Pair;

int main() {
    Pair p;
    p.a = 5;
    p.b = 15;
    return p.a + p.b;
}