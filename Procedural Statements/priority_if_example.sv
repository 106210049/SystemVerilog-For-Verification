// Code your testbench here
// or browse Examples
module priority_if_example;  
  initial begin
    int a, b;
    a = 20;
    b = 10;
    priority if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  end
endmodule