// Code your testbench here
// or browse Examples
class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    
    p_tr = new();
    c_tr = new();
    
    p_tr.data = 100;
    p_tr.id = 1;

    c_tr.data = 200;
    c_tr.id = 2;
    
    p_tr.display();
    c_tr.display();
  end
endmodule