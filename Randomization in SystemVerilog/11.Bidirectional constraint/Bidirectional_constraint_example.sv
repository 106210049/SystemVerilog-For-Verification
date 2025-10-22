// Code your testbench here
// or browse Examples
class seq_item;
  rand bit [7:0] val1, val2, val3, val4;
  rand bit t1, t2;
  
  constraint val_c {val2 > val1; 
                   val3 == val2 - val1;
                   val4 < val3;
                   val4 == val1/val3; }
  
  constraint t_c { (t1 == 1) -> t2 == 0;}
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("val1 = %0d, val2 = %0d, val3 = %0d, val4 = %0d", item.val1, item.val2, item.val3, item.val4);
      $display("t1 = %0h, t2 = %0h", item.t1, item.t2);
    end
  end
endmodule