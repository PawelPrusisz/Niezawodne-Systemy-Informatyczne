package body Primes with SPARK_Mode is
   function IsPrime(N: in Positive) return Boolean
     
is
   
      prime : Boolean := True;
      
begin
   
   
   for I in 2 .. N - 1 loop
      if(N rem I = 0) then
            prime := False;
            exit;
      end if;
      pragma Loop_Invariant (if prime then (for all K in 2 .. I => N rem K /= 0));
      pragma Loop_Invariant (if  not prime then (for some K in 2 .. I => N rem K = 0));
   end loop;
   
   return prime;
   
   end IsPrime;
end Primes;
