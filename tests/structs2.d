struct S
{
    int x, y = 4, z = 6;
    this(int a, int b)
    {
        x = a;
        y = b;
    }
}

extern (C) void main()
{
    S a = S(4, 5); // calls S.this(4, 5):  a.x = 4, a.y = 5, a.z = 6
    assert(a.x == 4);
    assert(a.y == 5);
    assert(a.z == 6);
    S b = S();  // default initialized:    b.x = 0, b.y = 4, b.z = 6
    assert(b.x == 0);
    assert(b.y == 4);
    assert(b.z == 6);
    //S c = S(1); // error, matching this(int) not found
}