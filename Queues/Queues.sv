// Code your testbench here
// or browse Examples
module Queues_example;
  
  string animal_q[$];
  //	basic example of queues
  initial begin	
    $display("Initial Size: animal_q = %0d", animal_q.size());	// result of this command is 0
    $display("-----------------------");
    animal_q = {"TIGER","LION"};	// add two elements to animal_q
    $display("Size: animal_q = %0d", animal_q.size());	// result of this command will be 2
    $display("-----------------------");
    
    // Example of insertion element to queue
    animal_q.insert(1, "ELEPHANT");
    animal_q.insert(2, "FOX");
    animal_q.insert(3, "ZEBRA");
    $display("Size: animal_q = %0d", animal_q.size());	// Result of this command is: 5
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);	// Result of this command is: TIGER, ELEPHANT, FOX, ZEBRA, LION
    $display("-----------------------");
    
    // Example of access queue item
    $display("--- Access queue item ---");
    $display("The second element of animal_q = %s", animal_q[2]);	// Result of this command is FOX
    $display("The fourth element of animal_q = %s", animal_q[4]);	// Result of this command is LION
    $display("-----------------------");
    
    // Example of delete queue item
    $display("--- Delete queue item ---");
    animal_q.delete(2);	// Delete item with index is 2, the element will be decrease 1; result of this command is: TIGER, ELEPHANT, ZEBRA, LION
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    
    // Example of delete complete queue
    $display("--- Delete complete queue ---");
    animal_q.delete();	// delete all element in this queue
    $display("Size after queue deletion: animal_q size = %0d", animal_q.size());	// Result of this command is: 0
    $display("-----------------------");
    
    
    animal_q = {"TIGER","LION"};	// Insert 2 elements to queue animal_q
//     foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    
    // Example of push_back
    $display("--- push_back methods ---");
    animal_q.push_back("ELEPHANT");	// insert element ELEPHANT to last index of queue
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);	// Result of this command is: TIGER, LION, ELEPHANT
    $display("-----------------------");
    
    // Example of push_front
    $display("--- push_front methods ---");
    animal_q.push_front("FOX");	// insert element ELEPHANT to first index of queue
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);	// Result of this command is: FOX, TIGER, LION, ELEPHANT
    $display("-----------------------");
    
    //  Example of pop_back
    $display("--- pop_back methods ---");
    animal_q.pop_back();	// Get the element of last index and delete this element
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);	// Result of this command is: FOX, TIGER, LION
    $display("-----------------------");
    
    // Example of pop_front
    $display("--- pop_front methods ---");
    animal_q.pop_front();	// Get the element of first index and delete this element
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]); // Result of this command is: TIGER, LION
    $display("-----------------------");
  end
  
endmodule