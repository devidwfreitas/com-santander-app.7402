import java.util.regex.Pattern;

public final class etp extends etb {
  private static final Pattern a = Pattern.compile("[IOQ]");
  
  private static final Pattern b = Pattern.compile("[A-Z0-9]{17}");
  
  private static int a(int paramInt) {
    int i = 10;
    if (paramInt >= 1 && paramInt <= 7)
      return 9 - paramInt; 
    if (paramInt != 8) {
      if (paramInt == 9)
        return 0; 
      if (paramInt >= 10 && paramInt <= 17)
        return 19 - paramInt; 
      throw new IllegalArgumentException();
    } 
    return i;
  }
  
  private static boolean a(CharSequence paramCharSequence) {
    boolean bool = false;
    int i = 0;
    int j = 0;
    while (i < paramCharSequence.length()) {
      j += a(i + 1) * b(paramCharSequence.charAt(i));
      i++;
    } 
    if (paramCharSequence.charAt(8) == b(j % 11))
      bool = true; 
    return bool;
  }
  
  private static char b(int paramInt) {
    if (paramInt < 10)
      return (char)(paramInt + 48); 
    if (paramInt == 10)
      return 'X'; 
    throw new IllegalArgumentException();
  }
  
  private static int b(char paramChar) {
    if (paramChar >= 'A' && paramChar <= 'I')
      return paramChar - 65 + 1; 
    if (paramChar >= 'J' && paramChar <= 'R')
      return paramChar - 74 + 1; 
    if (paramChar >= 'S' && paramChar <= 'Z')
      return paramChar - 83 + 2; 
    if (paramChar >= '0' && paramChar <= '9')
      return paramChar - 48; 
    throw new IllegalArgumentException();
  }
  
  private static String b(CharSequence paramCharSequence) {
    char c1 = paramCharSequence.charAt(0);
    char c2 = paramCharSequence.charAt(1);
    switch (c1) {
      default:
        return null;
      case '1':
      case '4':
      case '5':
        return "US";
      case '2':
        return "CA";
      case '3':
        if (c2 >= 'A' && c2 <= 'W')
          return "MX"; 
      case '9':
        if ((c2 >= 'A' && c2 <= 'E') || (c2 >= '3' && c2 <= '9'))
          return "BR"; 
      case 'J':
        if (c2 >= 'A' && c2 <= 'T')
          return "JP"; 
      case 'K':
        if (c2 >= 'L' && c2 <= 'R')
          return "KO"; 
      case 'L':
        return "CN";
      case 'M':
        if (c2 >= 'A' && c2 <= 'E')
          return "IN"; 
      case 'S':
        if (c2 >= 'A' && c2 <= 'M')
          return "UK"; 
        if (c2 >= 'N' && c2 <= 'T')
          return "DE"; 
      case 'V':
        if (c2 >= 'F' && c2 <= 'R')
          return "FR"; 
        if (c2 >= 'S' && c2 <= 'W')
          return "ES"; 
      case 'W':
        return "DE";
      case 'X':
        if (c2 == '0' || (c2 >= '3' && c2 <= '9'))
          return "RU"; 
      case 'Z':
        break;
    } 
    if (c2 >= 'A' && c2 <= 'R')
      return "IT"; 
  }
  
  private static int c(char paramChar) {
    if (paramChar >= 'E' && paramChar <= 'H')
      return paramChar - 69 + 1984; 
    if (paramChar >= 'J' && paramChar <= 'N')
      return paramChar - 74 + 1988; 
    if (paramChar == 'P')
      return 1993; 
    if (paramChar >= 'R' && paramChar <= 'T')
      return paramChar - 82 + 1994; 
    if (paramChar >= 'V' && paramChar <= 'Y')
      return paramChar - 86 + 1997; 
    if (paramChar >= '1' && paramChar <= '9')
      return paramChar - 49 + 2001; 
    if (paramChar >= 'A' && paramChar <= 'D')
      return paramChar - 65 + 2010; 
    throw new IllegalArgumentException();
  }
  
  public eto a(eqm parameqm) {
    if (parameqm.d() != epu.CODE_39)
      return null; 
    String str = parameqm.a();
    str = a.matcher(str).replaceAll("").trim();
    if (!b.matcher(str).matches())
      return null; 
    try {
      if (!a(str))
        return null; 
      String str1 = str.substring(0, 3);
      return new eto(str, str1, str.substring(3, 9), str.substring(9, 17), b(str1), str.substring(3, 8), c(str.charAt(9)), str.charAt(10), str.substring(11));
    } catch (IllegalArgumentException illegalArgumentException) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */