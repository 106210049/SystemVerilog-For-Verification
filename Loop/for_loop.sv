module for_example;
  int array[10];
    
  initial begin
    // Update array
    for (int i = 0, cnt = 0; i < $size(array); i++, cnt++) begin
      array[i] = i*i;
      $display("cnt = %0d", cnt);
    end
  
    // Display array elements
    for (int i = 0; i < $size(array); i++) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule