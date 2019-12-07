String or="casa";
String abc="abcdefghijklmnñopqrstuvwxyz";


void setup(){
  String dup="";
  for(int i=0; i<or.length(); i++){
    char c=or.charAt(i), n=or.charAt((i+1)%or.length());
    int dif=abc.indexOf(n)-abc.indexOf(c);
    println(c);
    //for(int i=0; i<
  }
  
}
