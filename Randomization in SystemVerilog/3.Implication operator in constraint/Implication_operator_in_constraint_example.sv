class seq_item;
  rand bit [7:0] value;
  rand enum {LOW, HIGH} scale;

  constraint scale_c { (scale == LOW) -> value <50; }
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("scale = %s, value = %0d", item.scale.name(), item.value);
    end
  end
endmodule