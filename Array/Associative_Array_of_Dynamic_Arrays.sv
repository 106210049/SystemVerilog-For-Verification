// Code your testbench here
// or browse Examples
 // Associated array of dynamic arrays
 module multidim_arr_ex3;
  typedef int dyn_ar [];
  dyn_ar arr [string];
  initial begin
    arr["dyn_arr 1"] = new [2];
    arr["dyn_arr 1"] = '{1, 2};
    arr["dyn_arr 2"] = new [3];
    arr["dyn_arr 2"] = '{1, 2, 3};
    $display("arr = %p", arr);
    $display("===========================");
    if(arr.exists("dyn_arr 2"))	begin
      $display("An element exists at index = \"dyn_arr 2\"");
    	foreach (arr["dyn_arr 2"][i])
  			$display("arr[\"dyn_arr 2\"][%0d] = %0d", i, arr["dyn_arr 2"][i]);
    end
    else
      $display("An element doesn't exist at index = \"dyn_arr 2\"");
  end
   
 endmodule: multidim_arr_ex3
