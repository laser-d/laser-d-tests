import core.stdc.stdio : printf;

void test() {
    int[10] a;
    int[] slice;

    a[1] = 42;

    assert(a.length == 10);
    assert(slice.length == 0);

    slice = a[1..5];

    assert(slice.length == 4);
    assert(a.length == 10);
    assert(slice[0] == 42);
}


extern (C) void main() {
    test();
}