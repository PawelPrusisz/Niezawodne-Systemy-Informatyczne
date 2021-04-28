with Poly; use Poly;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
   X : Integer := 0;
   V : Vector := (1, -2, 1, -3, -1);
   tmp : Integer := 0;
   ans : Integer := 0; 
begin
   Get(X);
   
   ans := Horner(X => X,
                 A => V);
   Put(ans);
end main;
