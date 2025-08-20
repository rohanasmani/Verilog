# CODE
### Gate level modelling
```Verilog
module fulladder(x,y,z,s,c);
input x,y,z;
output s,c;
wire w1,w2,w3;
xor x1(w1,x,y);
xor x2(s,w1,z);
and a1(w2,x,y);
and a2(w3,w1,z);
or o1(c,w3,w2);
endmodule
```
### Data Flow level Modeling
```Verilog
module full_adder (x, y, cin, cout, sum); 
input x; 
input y; 
input cin; 
output cout; 
output sum; 
assign cout=(x&y) | (x &cin) | (y & cin); 
assign sum= x ^ y ^cin; 
endmodule
```
### Test Bench
``` Verilog
module tb1();
  reg x,y,z;
  wire c,s;
  fa f1(x,y,z,s,c);
  initial 
  begin
    x=1'b1;
    #10;
    x=1'b1;
    y=1'b0;
    #10;
    x=1'b1;
    y=1'b0;
    z=1'b0;
    #10
    x=1'b0;
    y=1'b1;
    z=1'b1;
  end 
endmodule
```

