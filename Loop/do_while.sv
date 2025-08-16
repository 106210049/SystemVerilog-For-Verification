// Code your testbench here
// or browse Examples
module do_while_example;  
  int count;
  initial begin
    do begin 
      $display("Value of count = %0d", count);
      count++;
    end
    while(count<10);
  end
endmodule