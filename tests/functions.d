int foo(int[] arr);

int foo(int[] arr) { arr[] += 1; return cast(int) arr.length; }

extern (C) void main() {
    int[3] a = [1, 2, 3];
    foo(a);
    assert(a == [2, 3, 4]);
}