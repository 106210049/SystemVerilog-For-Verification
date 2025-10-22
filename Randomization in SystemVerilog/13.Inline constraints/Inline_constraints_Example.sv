class seq_item;
  rand bit [7:0] val1, val2;
  constraint val1_c { val1 > 100; val1 < 200; }
  constraint val2_c { val2 > 5;   val2 < 80;  }
endclass

module constraint_example;
  seq_item item;

  initial begin
    item = new();

    repeat (5) begin
      item.randomize();
      $display("Before inline constraint: val1 = %0d, val2 = %0d", item.val1, item.val2);

      // Gộp inline constraints vào 1 lần randomize:
      if (item.randomize() with {
            val1 > 150; val1 < 160;
            val2 inside { [10:15] };
          }) begin
        $display("After inline constraint (gop 1 lan): val1 = %0d, val2 = %0d", item.val1, item.val2);
      end else begin
        $display("Randomization failed!");
      end
    end
  end
endmodule
