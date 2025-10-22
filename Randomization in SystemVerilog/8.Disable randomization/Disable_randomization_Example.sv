// Code your testbench here
// or browse Examples
class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;

  constraint value1_c {value1 inside {[10:30]};}
  constraint value2_c {value2 inside {40,70, 80};}

endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    item.randomize();
    $display("Before disabling randomization: value1 = %0d, value2 = %0d", item.value1, item.value2);
    
    item.rand_mode(0);  // To disable randomization for all class variables
    item.randomize();
    $display("After disabling randomization for all variables in a class (Retain old values): value1 = %0d, value2 = %0d", item.value1, item.value2);
    $display("rand_mode function returns for value1 = %0d, value2 = %0d", item.value1.rand_mode(), item.value2.rand_mode());
    
    item.rand_mode(1);  // To enable randomization
    item.randomize();
    $display("After enabling randomization: value1 = %0d, value2 = %0d", item.value1, item.value2);
    $display("rand_mode function returns for value1 = %0d, value2 = %0d", item.value1.rand_mode(), item.value2.rand_mode());
    
    item.value2.rand_mode(0);  // To disable randomization for value2 variable alone
    item.randomize();
    $display("After disabling randomization for value2 variables in a class: value1 = %0d, value2 = %0d", item.value1, item.value2);
    
    $display("rand_mode function returns for value1 = %0d, value2 = %0d", item.value1.rand_mode(), item.value2.rand_mode());
  end
endmodule