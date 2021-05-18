import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class nkz {
  static String a(String paramString) {
    Pattern pattern2 = Pattern.compile("<script(.*?)>(.*?)</script>");
    Pattern pattern1 = Pattern.compile(";? *var +[\\w]+ *= *");
    Matcher matcher = pattern2.matcher(paramString);
    paramString = null;
    while (matcher.find() && paramString == null) {
      if (!matcher.group(1).toLowerCase(Locale.ROOT).contains("src"))
        paramString = a(pattern1, matcher.group(2)); 
    } 
    return paramString;
  }
  
  private static String a(Pattern paramPattern, String paramString) {
    Matcher matcher = paramPattern.matcher(paramString);
    int i = -1;
    int j = -1;
    while (matcher.find()) {
      String str = matcher.group(0);
      if (str.toLowerCase(Locale.ROOT).contains("mps")) {
        j = paramString.indexOf(str) + str.length();
        continue;
      } 
      if (j != -1 && i == -1)
        i = paramString.indexOf(str); 
    } 
    if (j == -1)
      return null; 
    int k = i;
    if (i == -1)
      k = paramString.length(); 
    return paramString.substring(j, k);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */