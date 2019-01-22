public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
    
    String word1 = noCapitals(sWord);
    if(word1.equals(reverse(word1)))
        return true;
    return false;
}
public String reverse(String sWord){
  String backwards = "";
  int last = sWord.length()-1;
  for(int i = last; i >= 0; i--)
  {
    backwards = backwards + sWord.substring(i, i+1);
  }
  return backwards;
}

public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}
