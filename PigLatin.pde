public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String word){
  for (int i = 0; i < word.length(); i++){
    if (word.substring(i, i+1).equals("a")||word.substring(i, i+1).equals("e")||word.substring(i, i+1).equals("i")||word.substring(i, i+1).equals("o")||word.substring(i, i+1).equals("u"))
      return i;
  }
  return -1;
}
public String pigLatin(String sWord)
{
  if (sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u")){
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if (sWord.substring(0, 2).equals("qu"))
  {
    return (sWord.substring(2, sWord.length()) + "quay");
  }
  else
  {
    return (sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay");
  }
}
