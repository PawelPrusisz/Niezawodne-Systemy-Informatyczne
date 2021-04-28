with Multi; use Multi;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Main is
   A : Natural;
   B : Natural;
   ans : Natural := 0;
begin
   Get(A);
   Get(B);
   pragma Assert(A < 32768);
   pragma Assert(B < 32768);
   ans := Mult(A => A, B => B);

   Put(ans);

end Main;
