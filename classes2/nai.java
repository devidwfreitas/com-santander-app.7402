import java.text.DecimalFormat;

public class nai {
  private static final String a = "value cannot be null";
  
  private static final String b = "value cannot be null or empty";
  
  private static final String c = "size of value cannot be bigger then 14";
  
  private static final String d = "value is not a valid CPF or CPNJ";
  
  private static final DecimalFormat e = new DecimalFormat("00000000000000");
  
  private static final DecimalFormat f = new DecimalFormat("00000000000");
  
  private static final int[] g = new int[] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
  
  private static final int[] h = new int[] { 
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
  
  public static String a(long paramLong, boolean paramBoolean) {
    return paramBoolean ? f.format(paramLong) : e.format(paramLong);
  }
  
  public static String a(Long paramLong) {
    return a(paramLong, true);
  }
  
  public static String a(Long paramLong, boolean paramBoolean) {
    DecimalFormat decimalFormat;
    if (paramLong == null)
      throw new IllegalArgumentException("value cannot be null"); 
    int i = paramLong.toString().length();
    if (i > 14)
      throw new IllegalArgumentException("size of value cannot be bigger then 14"); 
    if (paramBoolean && !b(paramLong))
      throw new IllegalArgumentException("value is not a valid CPF or CPNJ"); 
    if (i < 12) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i != 0) {
      decimalFormat = f;
    } else {
      decimalFormat = e;
    } 
    String str = decimalFormat.format(paramLong);
    return (i != 0) ? str.replaceAll("([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})", "$1.$2.$3-$4") : str.replaceAll("([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})([0-9]{2})", "$1.$2.$3/$4-$5");
  }
  
  public static String a(String paramString) {
    return naj.a(paramString, 11).replaceAll("[^0-9]+", "");
  }
  
  public static String a(String paramString, boolean paramBoolean) {
    if (paramString == null || paramString.isEmpty())
      throw new IllegalArgumentException("value cannot be null or empty"); 
    return a(Long.valueOf(Long.parseLong(paramString.replaceAll("[^0-9]+", ""))), paramBoolean);
  }
  
  public static String b(Long paramLong, boolean paramBoolean) {
    if (paramLong == null)
      throw new IllegalArgumentException("value cannot be null"); 
    if (paramLong.toString().length() > 14)
      throw new IllegalArgumentException("size of value cannot be bigger then 14"); 
    if (paramBoolean && !b(paramLong))
      throw new IllegalArgumentException("value is not a valid CPF or CPNJ"); 
    return e.format(paramLong).replaceAll("([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})([0-9]{2})", "$1.$2.$3/$4-$5");
  }
  
  public static String b(String paramString) {
    if (paramString != null) {
      paramString = paramString.replaceAll("[^0-9]+", "");
      if (!paramString.isEmpty()) {
        if (paramString.length() > 11)
          throw new IllegalArgumentException("size of value cannot be bigger then 14"); 
        return String.format("%1$11s", new Object[] { paramString }).replaceAll("([0-9 ]{3})([0-9 ]{3})([0-9 ]{3})([0-9 ]{2})", "$1.$2.$3-$4");
      } 
    } 
    return "   .   .   -  ";
  }
  
  public static boolean b(Long paramLong) {
    int i = paramLong.toString().length();
    if (i <= 14) {
      if (i < 12) {
        i = 1;
      } else {
        i = 0;
      } 
      if (!paramLong.equals(Long.valueOf("11111111111")) && !paramLong.equals(Long.valueOf("22222222222")) && !paramLong.equals(Long.valueOf("33333333333")) && !paramLong.equals(Long.valueOf("44444444444")) && !paramLong.equals(Long.valueOf("55555555555")) && !paramLong.equals(Long.valueOf("66666666666")) && !paramLong.equals(Long.valueOf("77777777777")) && !paramLong.equals(Long.valueOf("88888888888")) && !paramLong.equals(Long.valueOf("99999999999")))
        return (i != 0) ? c(paramLong) : d(paramLong); 
    } 
    return false;
  }
  
  public static String c(String paramString) {
    return (paramString == null || paramString.isEmpty()) ? "" : a(Long.valueOf(Long.parseLong(paramString.replaceAll("[^0-9]+", ""))), false);
  }
  
  public static boolean c(Long paramLong) {
    if (paramLong.longValue() == 0L)
      return false; 
    String str = f.format(paramLong);
    int i = a(str.substring(0, 9), g);
    int j = a(str.substring(0, 9) + i, g);
    return str.substring(9).equals(String.format("%d%d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) }));
  }
  
  public static String d(String paramString) {
    return (paramString == null || paramString.isEmpty()) ? "" : b(Long.valueOf(Long.parseLong(paramString.replaceAll("[^0-9]+", ""))), false);
  }
  
  public static boolean d(Long paramLong) {
    if (paramLong.longValue() == 0L)
      return false; 
    String str = e.format(paramLong);
    Integer integer = Integer.valueOf(a(str.substring(0, 12), h));
    int i = a(str.substring(0, 12) + integer, h);
    return str.substring(12).equals(String.format("%d%d", new Object[] { integer, Integer.valueOf(i) }));
  }
  
  public static boolean e(String paramString) {
    if (paramString == null || paramString.isEmpty())
      throw new IllegalArgumentException("value cannot be null or empty"); 
    if (Long.parseLong(paramString.replaceAll("[^0-9]+", "")) == 0L)
      throw new IllegalArgumentException("value cannot be null or empty"); 
    return f(paramString.replaceAll("[^0-9]+", ""));
  }
  
  public static boolean f(String paramString) {
    int i = paramString.toString().length();
    if (i <= 14) {
      if (i < 12) {
        i = 1;
      } else {
        i = 0;
      } 
      if (!paramString.equals(Long.valueOf("11111111111")) && !paramString.equals(Long.valueOf("22222222222")) && !paramString.equals(Long.valueOf("33333333333")) && !paramString.equals(Long.valueOf("44444444444")) && !paramString.equals(Long.valueOf("55555555555")) && !paramString.equals(Long.valueOf("66666666666")) && !paramString.equals(Long.valueOf("77777777777")) && !paramString.equals(Long.valueOf("88888888888")) && !paramString.equals(Long.valueOf("99999999999")))
        return (i != 0) ? g(paramString) : h(paramString); 
    } 
    return false;
  }
  
  public static boolean g(String paramString) {
    byte b = 48;
    if (paramString.equals("00000000000") || paramString.equals("11111111111") || paramString.equals("22222222222") || paramString.equals("33333333333") || paramString.equals("44444444444") || paramString.equals("55555555555") || paramString.equals("66666666666") || paramString.equals("77777777777") || paramString.equals("88888888888") || paramString.equals("99999999999") || paramString.length() != 11)
      return false; 
    int j = 10;
    int i = 0;
    int k = 0;
    while (i < 9) {
      try {
        k += (paramString.charAt(i) - 48) * j;
        j--;
        i++;
      } catch (Exception exception) {
        return false;
      } 
    } 
    i = 11 - k % 11;
    if (i == 10 || i == 11) {
      i = 48;
    } else {
      i = (char)(i + 48);
    } 
    j = 11;
    k = 0;
    int m = 0;
    while (k < 10) {
      m += (exception.charAt(k) - 48) * j;
      j--;
      k++;
    } 
    k = 11 - m % 11;
    j = b;
    if (k != 10)
      if (k == 11) {
        j = b;
      } else {
        j = (char)(k + 48);
      }  
    if (i == exception.charAt(9)) {
      i = exception.charAt(10);
      if (j == i)
        return true; 
    } 
    return false;
  }
  
  public static boolean h(String paramString) {
    if (paramString.equals("00000000000000") || paramString.equals("11111111111111") || paramString.equals("22222222222222") || paramString.equals("33333333333333") || paramString.equals("44444444444444") || paramString.equals("55555555555555") || paramString.equals("66666666666666") || paramString.equals("77777777777777") || paramString.equals("88888888888888") || paramString.equals("99999999999999") || paramString.length() != 14)
      return false; 
    int j = 11;
    int k = 0;
    int i = 2;
    while (j >= 0) {
      try {
        k += (paramString.charAt(j) - 48) * i;
        int n = i + 1;
        i = n;
        if (n == 10)
          i = 2; 
      } catch (Exception exception) {
        return false;
      } 
      j--;
    } 
    i = k % 11;
    if (i == 0 || i == 1) {
      j = 48;
    } else {
      j = (char)(11 - i + 48);
    } 
    k = 12;
    int m = 0;
    i = 2;
    while (k >= 0) {
      m += (exception.charAt(k) - 48) * i;
      int n = i + 1;
      i = n;
      if (n == 10)
        i = 2; 
      k--;
    } 
    i = m % 11;
    if (i == 0 || i == 1) {
      i = 48;
    } else {
      i = (char)(11 - i + 48);
    } 
    if (j == exception.charAt(12)) {
      j = exception.charAt(13);
      if (i == j)
        return true; 
    } 
    return false;
  }
  
  public static String i(String paramString) {
    return (new StringBuilder(new String(paramString))).replace(4, 11, "***.***").toString();
  }
  
  public static String j(String paramString) {
    return (new StringBuilder(new String(paramString))).replace(3, 9, "******").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */