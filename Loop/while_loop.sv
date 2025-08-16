// Code your testbench here
// or browse Examples
module while_example;  
  int count;
  initial begin
    while(count<10) begin 
      $display("Value of count = %0d", count);
      count++;
    end
  end
endmodule