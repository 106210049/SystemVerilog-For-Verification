module element_locator_methods;
  int array[8]='{2,1,7,3,1,8,9,6};
  int res[];
  initial begin
    res=array.find(x)with (x>4);
    $display("find(x) :{%0p}",res);
    res=array.find with (item>4);
    $display("find(x) :{%0p}",res);
    res=array.find with (item>4&item<8);
    $display("find(x) :{%0p}",res);
    res=array.find_first with (item<3 & item<6);
    $display("find_first :{%0p}",res);
    res=array.find_last with (item<7 & item>=1);
    $display("find_last :{%0p}",res);
//-------------------optional with clause-------------------
    res = array.min();
    $display("min :{%0p}",res);
    res = array.max();
    $display("max :{%0p}",res);
    res = array.unique();
    $display("unique :{%0p}",res);
  end
endmodule
//--------------------------------------------------------------
module index_locator_methods;
  int array[8]='{2,1,7,3,1,8,9,6};
  int res[];
  initial begin
    res=array.find_index(x) with (x>4);
    $display("find_index :{%0p}",res);
    res=array.find_index with (item>2&item<5);	// res is 3 because value which lower 5 and greater 3 in array is number 3 at index=3
    $display("find_index :{%0p}",res);
    res=array.find_first_index with (item>7 & item<9);
    $display("find_first_index :{%0p}",res);
    res=array.find_last_index with (item>6);
    $display("find_last_index :{%0p}",res);
//-------------------optional with clause-------------------
    res = array.unique_index();
    $display("unique :{%0p}",res);
  end
endmodule
//--------------------------------------------------
module array_reduction_methods;
  int array[8]='{2,1,7,3,1,8,9,6};
  initial begin
  
    $display("array sum=%0d",array.sum);
    
    $display("array product=%0d",array.product);
    
    $display("array and=%0d",array.and);
    
    $display("array or=%0d",array.or);
    
    $display("array xor=%0d",array.xor);

  end
endmodule
//-------------------------------------------
module array_ordering_methods;
  int array[8]='{2,1,7,3,1,8,9,6};
  initial begin
    $display("before sort :%0p",array);
    array.sort();
    $display("after sort------>%0p",array);

    $display("before shuffle :%0p",array);
    array.shuffle();
    $display("after shuffle------>%0p",array);
    
    $display("before rsort :%0p",array);
  array.rsort();
  $display("after rsort------>%0p",array);

 $display("before reverse :%0p",array);
 array.reverse();
 $display("after reverse------>%0p",array);
 end
endmodule
