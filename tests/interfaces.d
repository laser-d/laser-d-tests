import core.stdc.stdio : printf;

extern (C++) abstract class A {
// following causes link failure in dmd
//extern (C++) interface A {
    void sayHello();
}

extern (C++) class B : A {
    override void sayHello() {
        printf("hello\n");
    }
    ~this() {
        printf("destroyed\n");
    }
}

extern (C) void main() {
    scope b = new B;
    //B b;
    assert(b);
    b.sayHello();
    scope a = new B;
    assert(a);
    a.sayHello();

}
