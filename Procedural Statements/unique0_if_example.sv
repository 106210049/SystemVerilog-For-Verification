// Code your testbench here
// or browse Examples
module unique0_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique0 if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule