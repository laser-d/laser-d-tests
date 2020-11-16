import core.stdc.stdio : printf;

void test() {
    int* a;
    printf("a == null %d\n", a == null);
}


extern (C) void main() {
    test();
}