/**
 *  Solucion para reto numero 1: El bibliotecario
 *  Everis codeFest 2019
 *
 * @author Santiago Jesus Mas Peña
 */

String or="rincewind";
String abc="abcdefghijklmnñopqrstuvwxyz";
HashMap<Character, Integer> parsedLetters;

void setup() {
  parsedLetters=new HashMap<Character, Integer>();
  addValuesToMap();
  printArray(parsedLetters);
  println(solution());
  exit();
}

void addValuesToMap() {
  for (int i=0; i<abc.length(); i++) {
    char c=abc.charAt(i);
    parsedLetters.put(c, sumAndCalculateRemainder(c));
  }
}

int sumAndCalculateRemainder(char c) {
  return calculateDigitSum(c)%10;
}

int calculateDigitSum(int digit) {
  int sum=0;
  while (digit>0) {
    sum+=digit%10;
    digit/=10;
  }
  return sum;
}


String solution() {
  IntList parsedDigitList=new IntList();
  for (int i=0; i<or.length(); i++) {
    int diff=getLetterDistance(i);
    int valueToAdd=parsedLetters.get(or.charAt(i));
    for (int j=0; j<diff; j++) {
      parsedDigitList.push(valueToAdd);
    }
  }
  println(parsedDigitList);
  IntList reducedList=reduceList(parsedDigitList);
  println(reducedList);
  IntList groupedList=groupList(reducedList);
  println(groupedList);
  String finalValue=concatenateNumbersInList(groupedList);
  return finalValue;
}

int getLetterDistance(int index) {
  char first=or.charAt(index);
  char next=or.charAt((index+1)%or.length());

  return abs(abc.indexOf(next)-abc.indexOf(first));
}

IntList reduceList(IntList list) {
  IntList out=new IntList();
  int current=-1, count=0;
  for (int i=0; i<list.size(); i++) {
    int val=list.get(i);
    if (val!=current) {
      current=val;
      count=1;
      out.push(val);
    } else {
      count++;
      if (count<=current) {
        out.push(val);
      }
    }
  }
  return out;
}

IntList groupList(IntList list) {
  IntList out=new IntList(); 
  int count=0, sum=0;
  while (list.size()>0) {
    int val=list.get(0);
    list.remove(0);
    sum+=val;

    count++;
    if (count==5||list.size()==0) {
      out.push(sum%16);
      count=0; 
      sum=0;
    }
  }
  return out;
}

String concatenateNumbersInList(IntList list) {
  String res="";

  for (int i=0; i<list.size(); i++) {
    res+=Integer.toString(list.get(i));
  }
  return res;
}
