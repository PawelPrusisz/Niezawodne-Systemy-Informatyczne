package Multi with SPARK_Mode is

   function Mult ( A : Natural; B : Natural) return Natural
     with
       Pre => A < 32768 and B < 32768,
       Post => Mult'Result = A * B;

end Multi;
