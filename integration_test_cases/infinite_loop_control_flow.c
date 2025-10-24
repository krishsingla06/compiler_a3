// passed both
void foo(){
    label2:

    until(0){
        goto label2;
    }
}

void boo(){
    int i = 0;
    while(1){
        continue;
    }
}
