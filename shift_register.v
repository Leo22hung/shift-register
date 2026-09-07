module shift_register(
   input clk, rst_n,
   input en, d_in,
   output reg [7:0] q_out
);

   always @(posedge clk or negedge rst_n) begin
      if (rst_n == 0) begin
         q_out <= 8'b0;
      end else if (en == 1) begin 
         q_out <= {q_out[6:0],d_in};
      end
   end

endmodule
   