-------------------------conversion methods------------------------------
    module tb;
  string my_string;
  int i;
 real j;
  initial
    begin
     my_string="3459ah";
      $display("string is=%0s %0d",my_string,my_string);
      i=my_string.atoi();
      $display("%0d",i);
      i=my_string.atohex();
      $display("%0h",i);
      i=my_string.atooct();
      $display("%0o",i);
      i=my_string.atobin();
      $display("%0b",i);
      j=my_string.atoreal();
      $display("j=%0f",j);
       i=65987;
      j=23.87;
      $display("string is=%0s",my_string);
      my_string.itoa( i);
      $display("%0s",my_string);
      my_string.hextoa( i);
      $display("%0s",my_string);
      my_string.octtoa( i);
      $display("%0s",my_string);
      my_string.bintoa( i);
      $display("%0s",my_string);
      my_string.realtoa( j);
      $display("%0s",my_string);
    end      
endmodule