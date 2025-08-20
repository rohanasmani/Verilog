# CODE
### Gate level modelling
```verilog
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
```verilog
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
