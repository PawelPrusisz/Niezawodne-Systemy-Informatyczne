
with Primes; use Primes;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Main is
   X : Positive;
   ans : Boolean;
begin
   Get(X);
   pragma Assert(X > 1);

   ans := IsPrime(N => X);

   if(ans) then
      Put("pierwsza");
   else
      Put("zlozona");
   end if;

end Main;
