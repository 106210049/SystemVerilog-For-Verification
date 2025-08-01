module packed_array;
  bit [3:0][7:0] bytes; // 4 bytes packed into 32 bits

  initial begin
    bytes = 32'hDEAD_BEEF; // Assign 32-bit hex value
	// Show all 32 bits
    $displayh(
      bytes
   	 );
   	$displayh(
      bytes[3]	// Most significant byte: DE
    );
    $displayh(
      bytes[1][6]    // Bit 6 of byte[1], most significant bit of that byte
   	 );       
      
  end
endmodule
