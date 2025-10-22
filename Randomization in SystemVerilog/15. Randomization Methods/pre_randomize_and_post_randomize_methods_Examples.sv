// Code your testbench here
// or browse Examples
class seq_item;
  rand bit [7:0] val1;
  rand bit [7:0] val2;
 
  constraint val1_c {val1 > 100; val1 < 200;}
  constraint val2_c {val2 > 5; val2 < 8;}
  
  function void pre_randomize();
    $display("Inside pre_randomize");
    val2_c.constraint_mode(0);
  endfunction
  
  function void post_randomize();
    $display("Inside post_randomize");
    $display("val1 = %0d, val2 = %0d", this.val1, this.val2);
  endfunction
  
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    item.randomize();
  end
endmodule