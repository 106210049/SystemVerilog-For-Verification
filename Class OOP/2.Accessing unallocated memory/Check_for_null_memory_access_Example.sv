// Code your testbench here
// or browse Examples
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    if(tr1 != null) begin  // string "null" is not expected
      tr1.data = 5;
      tr1.id = 1;
      $display("Object tr1.data = %0h, tr1.id = %0h", tr1.data, tr1.id);
    end
    else $display("tr1 object is not created");
    
    if(tr2 != null) begin
      tr2.data = 10;
      tr2.id = 2;
      $display("Object tr2.data = %0h, tr2.id = %0h", tr2.data, tr2.id);
    end
    else $display("tr2 object is not created");   
  end
endmodule