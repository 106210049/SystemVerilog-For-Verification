// Code your testbench here
// or browse Examples
class transaction;
  static int s_id;
  int id;
  
  function static int incr_id();
    int status;
    status=s_id++;
    id++;
    return status;
  endfunction
endclass

module FunctionStaticCall;
  transaction tr[5];
  int localStatus;
  initial begin
    foreach(tr[i])	begin
      tr[i]=new();
      localStatus=tr[i].incr_id();
            $display("Value of s_id = %0h, id = %0h, local_status = %0h", tr[i].s_id, tr[i].id,  localStatus);

    end
  end
endmodule
  