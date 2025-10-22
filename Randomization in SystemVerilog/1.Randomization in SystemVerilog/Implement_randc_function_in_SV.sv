// Code your testbench here
// or browse Examples
module tb;
  bit [2:0] data;  // variable which provide random value
  bit [7:0] mask;

  function bit [2:0] my_randc;
    while(1) begin
      data = $random;
      if(!mask[data]) begin
        mask[data] = 1;
        return data;
      end
      else if(&mask) begin 
        mask = 0;
        mask[data] = 1;
        break;
      end
    end
    return data;
  endfunction
  
  initial begin
    repeat(3) begin
      repeat(8)
        $display("data = %0d", my_randc());
      $display("------------");
    end
  end
endmodule