import android.text.TextWatcher;
import android.widget.EditText;

public class anx {
  public static final String a = "##.###.###/####-##";
  
  public static final String b = "###.###.###-##";
  
  private static final int[] c = new int[] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
  
  private static final int[] d = new int[] { 
      6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 
      4, 3, 2 };
  
  private static int a(String paramString, int[] paramArrayOfint) {
    int i = paramString.length() - 1;
    int j = 0;
    while (i >= 0) {
      j += Integer.parseInt(paramString.substring(i, i + 1)) * paramArrayOfint[paramArrayOfint.length - paramString.length() + i];
      i--;
    } 
    i = 11 - j % 11;
    return (i > 9) ? 0 : i;
  }
  
  public static TextWatcher a(String paramString, EditText paramEditText) {
    return new any(paramString, paramEditText);
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[.]", "").replaceAll("[-]", "").replaceAll("[/]", "").replaceAll("[(]", "").replaceAll("[)]", "").replaceAll(" ", "").replaceAll(",", "");
  }
  
  public static String a(String paramString1, String paramString2) {
    int i = 0;
    StringBuilder stringBuilder = new StringBuilder();
    paramString1 = a(paramString1);
    int j = 0;
    while (i < paramString2.length()) {
      if (paramString2.charAt(i) == '#') {
        if (j < paramString1.length()) {
          stringBuilder.append(paramString1.charAt(j));
          j++;
        } else {
          break;
        } 
      } else {
        stringBuilder.append(paramString2.charAt(i));
      } 
      i++;
    } 
    return stringBuilder.toString();
  }
  
  private static boolean b(char paramChar) {
    return (paramChar == '.' || paramChar == '-' || paramChar == '/' || paramChar == '(' || paramChar == ')' || paramChar == ',' || paramChar == ' ');
  }
  
  public static boolean b(String paramString) {
    if (paramString == null || paramString.length() != 11)
      return false; 
    Integer integer = Integer.valueOf(a(paramString.substring(0, 9), c));
    int i = a(paramString.substring(0, 9) + integer, c);
    return paramString.equals(paramString.substring(0, 9) + integer.toString() + Integer.valueOf(i).toString());
  }
  
  public static boolean c(String paramString) {
    if (paramString == null || paramString.length() != 14)
      return false; 
    Integer integer = Integer.valueOf(a(paramString.substring(0, 12), d));
    int i = a(paramString.substring(0, 12) + integer, d);
    return paramString.equals(paramString.substring(0, 12) + integer.toString() + Integer.valueOf(i).toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */