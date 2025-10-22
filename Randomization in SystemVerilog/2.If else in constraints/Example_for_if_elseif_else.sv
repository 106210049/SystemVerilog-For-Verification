// Code your testbench here
// or browse Examples
class seq_item;
  rand bit [7:0] value;
  rand enum {LOW, MID, HIGH} scale;

  constraint scale_c { if(scale == LOW) value < 30;
                       else if(scale == MID) { value >= 30; value <= 70; }
                       else value > 70;
                     }
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(10) begin
      item.randomize();
      $display("scale = %s, value = %0d", item.scale.name(), item.value);
    end
  end
endmodule