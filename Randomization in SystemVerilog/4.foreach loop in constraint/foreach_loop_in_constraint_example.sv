class seq_item;
  rand bit [3:0] array[];

  // Cố định độ dài mảng = 5
  constraint size_c { array.size() == 5; }

  // foreach constraint: phần tử tăng dần, và không nhỏ hơn i+1
  constraint array_c {
    foreach (array[i]) {
      array[i] > i + 1;             // tránh giá trị quá nhỏ
      if (i > 0) array[i] > array[i-1];
    }
  }
endclass



module foreach_example;
  seq_item item;

  initial begin
    item = new();

    repeat (5) begin
      if (!item.randomize())
        $display("Randomization failed!");
      else begin
        $display("Randomized array:");
        foreach (item.array[i])
          $display("array[%0d] = %0d", i, item.array[i]);
        $display("--------------------");
      end
    end
  end
endmodule
