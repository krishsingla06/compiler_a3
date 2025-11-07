// Test global and static variables

int global_x;
float global_f;

void print_int(int x) {
    return;
}

int main() {
        int local;

    global_x = 100;
    global_f = 2.5;
    
    local = global_x + 10;
    
    print_int(global_x);
    
    return 0;
}
