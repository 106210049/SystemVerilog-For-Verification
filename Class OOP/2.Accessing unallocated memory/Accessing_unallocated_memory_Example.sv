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
    tr1.data = 5;
    tr1.id = 1;
    $display("Object pkt1.data = %0h, id = %0h", tr1.data, tr1.id);
    tr2 = new(); //if you want to access tr2, you have to create it dynamic
    tr2.data = 10;
    tr2.id = 2;
    $display("Object pkt2.data = %0h, id = %0h", tr2.data, tr2.id);
  end
endmodule