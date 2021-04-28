package body Poly with SPARK_Mode is
   function  Horner (X : Integer; A : Vector) return Integer
     
is

   Ans : Integer := 0;
   Z : Integer := 0 with Ghost;
   
begin
   
      pragma Assert(for all A in Integer => (for all B in Positive => A**B = A*A**(B-1)));
      
      for I in reverse A'First .. A'Last loop
         
         Ans := (Ans * X) + A(I);
         Z := Z + (A(I) * (X**(I - A'First)));
         pragma Loop_Invariant (Ans*(X**(I - A'First)) = Z);
   end loop;
   
   return Ans;
   end Horner;
end Poly;

