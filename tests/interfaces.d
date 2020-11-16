import core.stdc.stdio : printf;

extern (C++) interface A {
    void sayHello();
}

extern (C++) class B : A {

    void sayHello() {
        printf("hello\n");
    }
}

extern (C) void main() {
    B b;
    b.sayHello();
}