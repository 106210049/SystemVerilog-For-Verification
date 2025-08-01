 module basicType;
  bit       x_bit;	// 1 bit
  byte      x_byte;	// 8 bits
  shortint    x_shortint;	// 16 bits
  int       x_int;	// 32 bits
  longint     x_longint;	// 64 bits
   bit [127:0]   x_bit_vect;	// 128 bits 
  logic [31:0]  x_logic_vect;
  reg [7:0]    x_reg_vect;
  integer     x_integer;
  time      x_time;
  real      x_real;
  shortreal    x_short_real;
  initial begin
    $display("x_bit:    = %8b, size = %3d bits", x_bit,     $bits(x_bit)    );  
    $display("x_byte:    = %8b, size = %3d bits", x_byte,    $bits(x_byte)    );
    $display("x_shortint:  = %8b, size = %3d bits", x_shortint,  $bits(x_shortint)  );
    $display("x_int:    = %8b, size = %3d bits", x_int,     $bits(x_int)    ); 
    $display("x_longint:  = %8b, size = %3d bits", x_longint,   $bits(x_longint)  ); 
    $display("x_bit_vect:  = %8b, size = %3d bits", x_bit_vect,  $bits(x_bit_vect)  ); 
    $display("x_logic_vect: = %8b, size = %3d bits", x_logic_vect, $bits(x_logic_vect) );  
    $display("x_reg_vect:  = %8b, size = %3d bits", x_reg_vect,  $bits(x_reg_vect)  );    
    $display("x_integer:  = %8b, size = %3d bits", x_integer,   $bits(x_integer)  ); 
    $display("x_time:    = %8b, size = %3d bits", x_time,    $bits(x_time)    );   
    $display("x_real:    = %8b, size = %3d bits", x_real,    $bits(x_real)    ); 
    $display("x_short_real: = %8b, size = %3d bits", x_short_real, $bits(x_short_real) );    
  end
 endmodule