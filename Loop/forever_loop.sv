// Code your testbench here
// or browse Examples
module forever_example;  
  int count;
  initial begin
    forever begin 
      $display("Value of count = %0d", count);
      count++;
      if(count == 10) break;
    end
  end
endmodule