// Code your testbench here
// or browse Examples
class parent_trans;
  bit [31:0] data_p;
  
  function void disp_p();
    $display("parent_trans: Value of data = %0h", data_p);
  endfunction
endclass

class child1_trans extends parent_trans;
  bit [31:0] data_c1;
  
  function void disp_c1();
    $display("child1_trans: Value of data = %0h", data_c1);
  endfunction
endclass

class child2_trans extends parent_trans;
  bit [31:0] data_c2;
  
  function void disp_c2();
    $display("child2_trans: Value of data = %0h", data_c2);
  endfunction
endclass

class child_A_trans extends child1_trans;
  bit [31:0] data_cA;
  
  function void disp_cA();
    $display("child_A_trans: Value of data = %0h", data_cA);
  endfunction
endclass

class child_B_trans extends child_A_trans;
  bit [31:0] data_cB;
  
  function void disp_cB();
    $display("child1_2_trans: Value of data = %0h", data_cB);
  endfunction
endclass

module class_example;
  initial begin
    child_B_trans cB_tr;
    cB_tr = new();
    cB_tr.data_p = 2;
    cB_tr.data_c1 = 4;
    cB_tr.data_cA = 6;
    cB_tr.data_cB = 8;
    //cB_tr.data_c2 = 3;  // Not possible as child_B_trans is not child class of child2_trans.
    
    cB_tr.disp_p();
    cB_tr.disp_c1();
    cB_tr.disp_cA();
    cB_tr.disp_cB();
  end
endmodule