// Code your testbench here
// or browse Examples
module if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  end
endmodule