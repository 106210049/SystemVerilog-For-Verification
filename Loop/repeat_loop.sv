// Code your testbench here
// or browse Examples
module repeat_example;
  int array[5] = '{100, 200, 300, 400, 500};
  int i;
  initial begin
    repeat ($size(array)) begin
      $display("array[%0d] = %0d", i, array[i]);
      i++;
    end
    
    repeat(3)
      $display("VLSI Verify");
  end
endmodule