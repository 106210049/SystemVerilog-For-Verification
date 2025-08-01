// Code your testbench here
// or browse Examples
module fsa_ex2;
  logic [7:0] arr1 [2];
  int arr2 [0:15];
  int arr3 [63], arr4[63];
  initial begin
    arr1 = '{8'b1011_0110, 8'b1111_0000}; // directly initialization
 	arr2 = '{16{2}}; // all 16 items off arr2 are assigned by 2
    
    foreach(arr2[i]) $display("arr2 = %d",arr2[i]);
    
    // init arr3[i] = i
    for(int i=0; i< $size(arr3); i++)	arr3[i]=i;
    
    // init arr4[i] = 64 - i
    foreach(arr4[i])	arr4[i] = $size(arr4)-i;
  end
  
  initial begin
     // print all arr3 with packed array format using %p
    $display("arr3 = %p ",arr3);
    // print arr2 with list format: {2, 2, ..., 2}
    $write("arr2 = {");
    
    foreach (arr2[i]) begin
     if(i == $size(arr2)-1) $display("%0d}", arr2[i]);
     else $write("%0d, ", arr2[i]);
 	end
 end
 endmodule: fsa_ex2