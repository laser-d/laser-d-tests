module scopes;

//int foo;
struct foo {
    int a;
}

void bar() {
    foo foo;
    foo.a = 5;
}
