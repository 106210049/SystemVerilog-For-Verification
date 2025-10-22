// Code your testbench here
// or browse Examples
class seq_item;
  int cnt_arr[int];
  real i_sum;
  function void randcase_testing();
    repeat(10) begin
      randcase
        2: begin $display("Selected 2"); cnt_arr[2]++; end
        3: begin $display("Selected 3"); cnt_arr[3]++; end
        5: begin $display("Selected 5"); cnt_arr[5]++; end
        7: begin $display("Selected 7"); cnt_arr[7]++; end
      endcase
    end
    foreach(cnt_arr[i]) begin
      i_sum += i;
    end
    foreach(cnt_arr[i]) begin
      $display("Probability for %0d = %0f in 1 iteration", i, i/i_sum);
      $display("cnt_arr[%0d] = %0d", i, cnt_arr[i]);
      $display("Probability for cnt_arr[%0d] = %0f", i, cnt_arr[i]/10.0);
      $display("---------------------------------");
    end
  endfunction
  
endclass



module constraint_example;
  seq_item item;
    
  initial begin
    item = new();
    item.randcase_testing();
  end
endmodule