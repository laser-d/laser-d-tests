module a.b.m;

int hello() {
   return 42; 
}

extern (C) void main() {
   //assert (a.b.m.hello() == 42);
   assert (m.hello() == 42);
}