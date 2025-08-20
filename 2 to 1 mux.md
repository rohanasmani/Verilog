### Gate level modeling
```verilog
module mux(s0,i0,i1,y);
  input s0,i0,i1;
  output y;
  wire w1,w2,w3;
  not (w1,s0);
  and (w2,s0,i0);
  and (w3,w1,i1);
  or (y,w2,w3);
  endmodule
```
  
