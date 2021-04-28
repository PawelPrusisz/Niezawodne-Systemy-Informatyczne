package body Max2 with SPARK_Mode is
   function FindMax2 (V : Vector) return Integer
     
is
   
      mx1 : Integer := 0;
      mx2 : Integer := 0;
   
begin
   
      for K in V'First .. V'Last loop
         if(V(K) > mx1) then
            mx2 := mx1;
            mx1 := V(K);
         elsif(V(K) /= mx1 and V(K) > mx2) then
            mx2 := V(K);
         end if;
         
         pragma Loop_Invariant(if mx2 /= 0 then (for some I in V'First .. K => V(I) > mx2));
         pragma Loop_Invariant(if mx2 /= 0 then (for some I in V'First .. K => V(I) = mx2));
         pragma Loop_Invariant(for all I in V'First .. K => (if (V(I) /= mx1) then V(I) <= mx2));
         
      end loop;
      
      
      return mx2;
   end FindMax2;
end Max2;
