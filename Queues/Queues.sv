// Code your testbench here
// or browse Examples
module queue_example;
  
  string animal_q[$];
  // using size method
  initial begin
    $display("--- Size method ---");
    $display("Initial Size: animal_q = %0d", animal_q.size());
    $display("-----------------------");
    animal_q = {"TIGER","LION"};
    $display("Size: animal_q = %0d", animal_q.size());
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    end
  
  // using insert method
  initial begin
    $display("--- Insert queue method ---");
    animal_q.insert(1,"ELEPHANT");
    animal_q.insert(3,"FOX");
    animal_q.insert(4,"ZEBRA");
    $display("Size: animal_q = %0d", animal_q.size());
    
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
    
  // Access queue item
  initial  begin
    $display("--- Access queue item ---");
    $display("The second element of animal_q = %s", animal_q[2]);
    $display("The fourth element of animal_q = %s", animal_q[4]);
    $display("-----------------------");
  end
  
  // using delete mehod
  initial begin
    $display("--- Delete queue item ---");
    $display("Size before delete: animal_q = %0d", animal_q.size());
    animal_q.delete(3);
    $display("Size after delete: animal_q = %0d", animal_q.size());
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
  initial begin
    $display("--- Delete complete queue ---");
    animal_q.delete();
    $display("Size after queue deletion: animal_q size = %0d", animal_q.size());
    $display("-----------------------");
  end
    
  // using push back method
  initial  begin
    animal_q = {"TIGER","LION"};
    $display("--- push_back methods ---");
    animal_q.push_back("ELEPHANT");
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
  
  // using push front method
  initial begin
    $display("--- push_front methods ---");
    animal_q.push_front("FOX");
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
  
  //using pop back method
  initial begin
    $display("--- pop_back methods ---");
    $display("animal_q pop_back is = %s", animal_q.pop_back()); 
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
  
  //using pop front method
  initial begin
    $display("--- pop_front methods ---");
    $display("animal_q pop_front is = %s", animal_q.pop_front()); 
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
endmodule