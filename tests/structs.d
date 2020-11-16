struct S { int a = 4; int b; }

extern (C) void main() {
    S x; // x.a is set to 4, x.b to 0
    assert(x.a == 4);
    assert(x.b == 0);
}