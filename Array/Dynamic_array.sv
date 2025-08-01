//----------------Dynamic array---------------------------------

module dynamic_array_example;
  int array [];
  int index;
  initial begin
    array = new[5];
    array = {5, 10, 15, 20, 25};
    
    // Print elements of an array

//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    
    // size of an array
    $display("size of array = %0d", array.size());

    // Resizing of an array and copy old array content
    array = new[8] (array);
    $display("size of array after resizing = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    // Override existing array: Previous array elememt values will be lost
    array = new[6];
    $display("size of array after overriding = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    array.delete();
    $display("size of array after deleting = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);	
    $display("array = {%0p}", array);

  end
endmodule