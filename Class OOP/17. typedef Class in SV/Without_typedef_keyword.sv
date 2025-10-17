// Code your testbench here
// or browse Examples
class transaction_A;
  bit [31:0] data;
  int id;
  transaction_B tr_B = new();
      
  function void display();
    $display("transaction_A: data = %0d and id = %0d", data, id);
    $display("transaction_B: addr = %0d", tr_B.addr);
  endfunction
endclass

class transaction_B;
  bit [31:0] addr = 200;
endclass

module class_example;
  transaction_A tr_A;
  
  initial begin
    tr_A = new();
   
    tr_A.data = 100;
    tr_A.id = 1;
    tr_A.display();
  end
endmodule