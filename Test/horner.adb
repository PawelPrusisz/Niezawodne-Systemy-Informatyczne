with Poly;
use Poly;
function  Horner (X : Integer; A : Vector) return Integer with SPARK_Mode,
  Pre => (A'Length > 0) and
  (A'First < Integer'Last)     
is

   Ans : Integer := 0;
   Z : Integer := 0 with Ghost;
   
begin
   
   if(X = 0) then
      return A(A'First);
   end if;
   
   pragma Assert (X /= 0);
   pragma Assert (Ans = 0);
   pragma Assert (Z = 0);
   pragma Assert (Z = Ans);
   for I in A'First .. A'Last loop
      pragma Loop_Invariant ( Ans = Z );
      pragma Assert ( Ans = Z);
      pragma Assert( ((Ans * X) + A(I) ) = ( Z + (A(I) * (X**I)) ) );
      Ans := (Ans * X) + A(I);
      Z := Z + (A(I) * (X**I));
   end loop;
   
   pragma Assert (Z = Ans);
   return Ans;
end Horner;
