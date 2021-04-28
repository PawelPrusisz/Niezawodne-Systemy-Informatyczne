package body Multi with SPARK_Mode is
   function Mult ( A : Natural; B : Natural) return Natural
     
is
      AB : Natural := 0;
      AA : Natural := A;
      B1 : Natural := B;
      Pow : Natural := 1 with Ghost;
begin
      pragma Assert(AA < 32768);
      pragma Assert(B1 < 32768);
      while B1 > 0 loop
         if (B1 mod 2 = 1) then
            AB := AB + AA;
         end if;
         AA := 2 * AA;
         B1 := B1 / 2;
         Pow := Pow * 2;
         pragma Loop_Invariant(AA < A * B);
         pragma Loop_Invariant(AB <= A * B);
         pragma Loop_Invariant(Pow <= B);
         pragma Loop_Invariant(AB = A * (B rem Pow));
      end loop;
      
      return AB;
   end Mult;
end Multi;
