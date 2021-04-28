procedure smallest_factor (N: in out Positive; Factor : out Positive)
with SPARK_Mode,
  Pre => N > 1,
  Post => (Factor > 1) and
  (N'Old / Factor = N) and
  (N'Old rem Factor = 0) and
  (for all J in 2 .. Factor - 1  => N'Old rem J /= 0 )
is
begin
   for I in 2 .. Positive'Last loop
      Factor := I;
      pragma Loop_Invariant ( for all J in 2 .. I - 1 => N rem J /= 0);
      pragma Loop_invariant ( Factor <= N);
      pragma Loop_Invariant ( Factor = I);
      exit when
        (I > N) or
        (N rem I = 0);
   end loop;
   N := N / Factor;
   
end smallest_factor;

