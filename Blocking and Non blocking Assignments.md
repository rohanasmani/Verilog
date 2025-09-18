## Register that can store 2-bit serial value with blocking and nonblocking assignment
### Using Blocking assignment
```verilog
module serial_reg_blocking (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [1:0] data_out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out = 2'b00;          // blocking assignment
        end 
        else begin
            data_out[1] = data_out[0]; // shift left
            data_out[0] = serial_in;   // new bit in
        end
    end
endmodule
```
### Using Non-blocking assignment
```verilog
module serial_reg_nonblocking (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [1:0] data_out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out <= 2'b00;          // non-blocking assignment
        end 
        else begin
            data_out[1] <= data_out[0]; // shift left
            data_out[0] <= serial_in;   // new bit in
        end
    end
endmodule
```
