// Code your testbench here
// or browse Examples
typedef enum{TRANS,RECIEVE,REPEATER} tr_type;

class transaction;
  bit [31:0] data;
  int id;
endclass

module Associative_Array;
  transaction tr[tr_type];
  initial begin
    tr[TRANS]=new();
    tr[RECIEVE]=new();
    tr[REPEATER]=new();
    
    foreach(tr[i])	begin
      tr[i].data=i*i;
      tr[i].id=i+1;
    end
    
    foreach(tr[i]) begin $display("tr[%0s].data = %0d, tr[%0s].id = %0d",i.name, tr[i].data, i.name, tr[i].id);
    end
  end
endmodule