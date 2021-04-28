procedure smallest_factor (N: in out Positive; Factor : out Positive)
with SPARK_Mode,
  Pre => N > 1,
  Post => (Factor > 1) and
  (N'Old / Factor = N) and
  (N'Old rem Factor = 0) and
  (for all J in 2 .. Factor - 1  => N'Old rem J /= 0 )
is
begin
   
   for I in Integer loop
      pragma Loop_Invariant ( for all J in 2 .. I - 1 => N rem J /= 0);
      Factor := N / I;
      exit when
        (I > N) or
        (N rem I = 0);
   end loop;
   N := N / I;
   
end smallest_factor;

