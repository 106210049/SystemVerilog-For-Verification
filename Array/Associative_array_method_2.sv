//--------------------------Associative array------------------------------

module associative_array_example;
   bit [7:0] array [int];
   int index;
  
  initial begin
    // initialize value to array
    array[5] = 2;
    array[10] = 4;
    array[7] = 6;
    array[9] = 8;
    array[20] = 10;
    array[13] = 12;
    array[14] = 22;
    $display("array = {%0p}", array);
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // Print array size and number of entries
    $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
    $display("--------------------------");
    
    // exists method
    if(array.exists(7)) $display("An element exists at index = 7");
    else $display("An element doesn't exists at index = 7");
    
    if(array.exists(8)) $display("An element exists at index = 8");
    else $display("An element doesn't exists at index = 8");
    $display("--------------------------");
    
    // first, last, prev, next method
    array.first(index);	// we get first index of array
    $display("First index of array = %0d", index);
    
    array.last(index);	// we get last index of array
    $display("Last index of array = %0d", index);
    
    index = 9;
    array.prev(index);  // Previous index of 9
    $display("Prev index of 9 is %0d", index);
    
    index = 10;
    array.next(index); // Next index of 10
    $display("Next index of 10 is %0d", index);
    //     Delete particular value (12)
    foreach (array[i])	begin	if(array[i]==12)	begin index=i;  end	end	// we get index of element which have value is 12
    
    array.delete(index); // delete element which have value 12 at index
    $display("After deleting element having value 12");
    $display("Index of value 12 and need to delete is: %0d",index);
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("--------------------------");
    // Delete particular index
    array.delete(7); // we delete array which index=7
    
    // Print array elements
    $display("After deleting element having index 7");
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("--------------------------");
    
    // Delete complete array
    array.delete();	// delete all elements in array
    $display("size = %0d of array", array.size());
  end
endmodule