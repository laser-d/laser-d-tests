import core.stdc.stdio : printf;

struct S
{
    ~this()
    {
        printf("S is being destructed\n");
    }
}

union U
{
    S s;
}

extern (C) void main()
{
    {
        printf("entering first scope\n");
        U u = U.init;
        scope (exit) printf("exiting first scope\n");
    }
    {
        printf("entering second scope\n");
        U u = U.init;
        scope (exit)
        {
            printf("exiting second scope\n");
            destroy(u.s);
        }
    }
}