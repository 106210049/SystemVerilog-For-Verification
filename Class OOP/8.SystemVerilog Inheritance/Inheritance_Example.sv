// Code your testbench here
// or browse Examples
class parent_trans;
  bit [31:0] data;
  
  function void disp_p();
    $display("Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  int id;
  
  function void disp_c();
    $display("Value of id = %0h", id);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    c_tr.data = 5; // child class is updating property of its base class
    c_tr.id = 1;
    
    c_tr.disp_p(); // child class is accessing method of its base class
    c_tr.disp_c();
  end
endmodule