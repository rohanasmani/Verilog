### Code
```verilog
module verification(clk,reset,counter,counter_up);
  input clk;
  input reset;
  output[3:0] counter; 
  reg [3:0] counter_up; 
  always @(posedge clk or posedge reset) 
  begin 
    if(reset) 
       counter_up <= 4'd0; 
    else 
       counter_up <= counter_up + 4'd1; 
    end  
  assign counter = counter_up; 
endmodule 
```
### Testbench
```verilog
module upcounter_testbench(); 
reg clk, reset; 
wire [3:0] counter; 
verification dut(clk, reset, counter); 
initial  
begin  
clk = 1'b0; 
forever #5 clk = ~clk;
end 
initial  
begin 
reset = 1'b1; 
#20; 
reset = 1'b0; 
#500;  
$finish; 
end
endmodule
endmodule

