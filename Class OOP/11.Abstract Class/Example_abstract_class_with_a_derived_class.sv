// Code your testbench here
// or browse Examples
virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    
    c_tr.data = 5;
    c_tr.id = 1;
    c_tr.display();
  end
endmodule