import core.stdc.stdio : printf;

void test() {
    string s = "hello";
    string s1 = s;

    printf("s == s1 %d\n", s == s1);

    //char[] str1 = "abc";                // error, "abc" is not mutable
    //char[] str2 = "abc".dup;            // ok, make mutable copy
    immutable(char)[] str3 = "abc";     // ok
    //immutable(char)[] str4 = str1;      // error, str4 is not mutable
    //immutable(char)[] str5 = str3.idup; // ok, make immutable copy
}


extern (C) void main() {
    test();
}