//using gate level modelling

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
