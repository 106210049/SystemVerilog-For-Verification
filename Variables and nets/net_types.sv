// Code your testbench here
// or browse Examples
module net_ex;
  wire    single_wire;  // a single wire
  tri     two_port;     // a two-port driver (tri allows multiple drivers)
  wire [7:0] bus;        // an 8-bit bus

  // Assign constant values
  assign single_wire = 1'b1;
  assign bus = 8'b1001_0111;

  // Multiple drivers on tri type net
  assign two_port = 1'b1;
  assign two_port = 1'b1; // Conflicting driver

  initial begin
    #1; // Wait for assignments to take effect
    $display("single_wire = %b", single_wire);
    $display("bus         = %b", bus);
    $display("two_port    = %b", two_port);
  end
endmodule
