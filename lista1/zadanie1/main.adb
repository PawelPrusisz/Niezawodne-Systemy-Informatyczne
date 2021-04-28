with smallest_factor;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
   N : Positive := 1;
   F : Positive := 1;
begin
   Ada.Integer_Text_IO.Get(N);
   smallest_factor(N, F);
   Ada.Integer_Text_IO.Put(Standard_Output, F);
   Ada.Integer_Text_IO.Put(Standard_Output, N);
end Main;
