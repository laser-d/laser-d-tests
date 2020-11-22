static int a ;

extern (C) void main() {

    int fun(int x);
    pragma(msg, typeof(fun).stringof); // int(int x)
    pragma(msg, typeof(&fun).stringof); // int(int x)
    alias funType = int(int x);
    static assert(is(funType == typeof(fun)));

    int function(int) x;
    pragma(msg, typeof(x).stringof); // int(int x)

    a = 5;

}