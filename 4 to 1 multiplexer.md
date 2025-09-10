### Gate Level Modelling
```verilog
module mux(s1,s0,i0,i1,i2,i3,y);
  input s1,s0,i0,i1,i2,i3;
  output y;
  wire w1,w2,w3,w4,w5,w6;
  not (w1,s1);
  not (w2,s0);
  and (w3,w1,w2,i0);
  and (w4,w1,s0,i1);
  and (w5,w2,s1,i2);
  and (w6,s0,s1,i3);
  or (y,w3,w4,w5,w6);
  endmodule
```
### Data Level Modelling
```verilog
module mux4to1 (d0,d1,d2,s0,s1,y);
    input  d0, d1, d2, d3,
    input  s0, s1,           
    output y                
    assign y = (~s1 & ~s0 & d0) |
               (~s1 &  s0 & d1) |
               ( s1 & ~s0 & d2) |
               ( s1 &  s0 & d3);
endmodule
```
### Conditional Operator 
```verilog
module mux(s1,s0,i0,i1,i2,i3,y);
  input s1,s0,i0,i1,i2,i3;
  output y;
  assign y = s1?(s0?i3:i2):(s0?i1:i0);
endmodule
 ```

  
