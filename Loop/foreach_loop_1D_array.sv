// Code your testbench here
// or browse Examples
module foreach_example;
  int array[5] = '{100, 200, 300, 400, 500};
  initial begin
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule