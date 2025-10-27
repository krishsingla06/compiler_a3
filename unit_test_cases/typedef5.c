typedef int row[4];

int main() {
    row r1;
    row r2;
    int sum;

    r1[0] = 1;
    r1[1] = 2; 
    r1[2] = 3;
    r1[3] = 4;
    
    r2[0] = 5;
    r2[1] = 6;
    r2[2] = 7;
    r2[3] = 8;
    
    sum = r1[0] + r2[3];   // 1 + 8 = 9
    return sum;
}