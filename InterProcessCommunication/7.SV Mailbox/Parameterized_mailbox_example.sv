// Code your testbench here
// or browse Examples
module mailbox_example();
  mailbox #(string) mb = new(3);
  
  task process_A();
    string name = "Alex";
    mb.put(name);
    $display("Put data = %s", name);
    name = "Robin";
    mb.put(name);
    $display("Put data = %s", name);
  endtask

  task process_B();
    string name;
    mb.get(name);
    $display("Retrieved data = %s", name);
    mb.get(name);
    $display("Retrieved data = %s", name);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
