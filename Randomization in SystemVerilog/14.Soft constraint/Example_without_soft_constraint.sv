class seq_item;
  rand bit [7:0] val;
 
  constraint val_c {val inside {5, [10:15]};}
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("Before inline constraint: val = %0d", item.val);
           
      item.randomize with {val inside {[20:30]};};
      $display("After inline constraint: val = %0d", item.val);
    end
  end
endmodule