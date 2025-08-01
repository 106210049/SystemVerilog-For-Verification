////-------------------Packed array---------------------------
module packed_array_example;
//  bit [2:0][3:0] array = {4'h2, 4'h4, 4'h6};
  bit [2:0][3:0] array = {12'h5ff};
 
  initial begin
    $display("=====Binary=====");
    $display("array = %12b",array);
    foreach (array[i,j]) begin 
      $display("array[%0h][%0h] = %0h", i,j, array[i][j]);
    end
  end
  
  initial begin
    $display("=====Hexa=====");
    $display("array = %12h",array);
    foreach (array[i]) begin 
      $display("array[%0h] = %0h", i, array[i]);
    end
  end
  
endmodule