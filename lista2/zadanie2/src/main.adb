with Max2; use Max2;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Main is
   V : Vector := (4, 6, 10, 4, 4, 7, 9, 8);
   ans : Integer := 0;
begin

   ans := FindMax2(V => V);

   Put(ans);

end Main;
