//-------------------------------------------------------
module string_operator;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    if(s1==s2)
         $display("s1=%0s equals to s2=%0s",s1,s2);
    else $display("s1 is not equals to s2");

    if(s1<s2)//<=,>,>=
         $display("s1=%0s is less than s2=%0s",s1,s2);
    else 
         $display("s1 is not less than s2");

    s3={s1," welcome ",s2}; 
    $display("s3=%0s",s3);
    
    s3={3{"We_LSI"}};             //{5{s1}}
    $display("s3=%0s",s3);
    s3="Hello guys";
    $display("s3=%0d s3=%0s",s3[7],s3[7]);
    end
endmodule