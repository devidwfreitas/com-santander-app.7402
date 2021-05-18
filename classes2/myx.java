import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class myx {
  public static String a(String paramString) {
    Matcher matcher = Pattern.compile("\\*\\*([^\\*]*)\\*\\*").matcher(paramString);
    while (matcher.find())
      paramString = paramString.replace(matcher.group(0).trim(), "<b>" + matcher.group(1) + "</b>"); 
    return paramString;
  }
  
  public static String b(String paramString) {
    return paramString.replace("\\n", "<br/>");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */