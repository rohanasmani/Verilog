module fulladder(a,b,cin,sum,carr);
  input a,b,cin;
  output sum,carr;
  wire c,c1,s;
  half_adder ha0(a,b,s,c);
  half_adder ha1(cin,s,sum,c1);
  or or1(carr,c,c1);
endmodule
module half_adder(a,b,sum,carr);
  input a,b;
  output sum,carr;
  xor xor1(sum,a,b);
  and and1(carr,a,b);
endmodule
