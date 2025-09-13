module jk_flipflop(J,K,clk,rst,Q);
  input(J,K,clk,rst);
  output reg Q;
  always @(posedge clk or posedge rst)
    begin
      if(rst)
        Q<=0;
      else if(J & ~K)
        Q<=1;
      else if(~J & K)
        Q<=0;
      else if(J & K)
        Q<=~Q;
    end
endmodule

