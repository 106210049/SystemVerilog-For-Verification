// Code your testbench here
// or browse Examples
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
    end
    
//     foreach(tr[i]) $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
  initial begin 
    foreach(tr[i])	begin
    	tr[i].data = i*i;
    	tr[i].id = i+1;
    end
    foreach(tr[i]) $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
endmodule