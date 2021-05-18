public class mgi {
  public static final int a = -1;
  
  public static final int b = 0;
  
  public static final int c = 1;
  
  public static final int d = 2;
  
  public static final int e = 3;
  
  public static final int f = 4;
  
  private static final String[] g = new String[] { "Visa", "Mastercard", "American Express", "En Route", "Diner's CLub/Carte Blanche" };
  
  public static String a(int paramInt) {
    return (paramInt > -1 && paramInt < g.length) ? g[paramInt] : "";
  }
  
  public static boolean a(String paramString) {
    return (b(paramString) != -1) ? d(paramString) : false;
  }
  
  public static int b(String paramString) {
    byte b = -1;
    try {
      String str1 = paramString.substring(0, 1);
      String str2 = paramString.substring(0, 2);
      String str3 = paramString.substring(0, 3);
      String str4 = paramString.substring(0, 4);
      byte b1 = b;
      if (c(paramString)) {
        if (str1.equals("4")) {
          if (paramString.length() != 13) {
            b1 = b;
            return (paramString.length() == 16) ? 0 : b1;
          } 
        } else {
          if (str2.compareTo("51") >= 0 && str2.compareTo("55") <= 0) {
            b1 = b;
            if (paramString.length() == 16)
              return 1; 
          } else if (str2.equals("34") || str2.equals("37")) {
            b1 = b;
            if (paramString.length() == 15)
              return 2; 
          } else if (str4.equals("2014") || str4.equals("2149")) {
            b1 = b;
            if (paramString.length() == 15)
              return 3; 
          } else {
            if (!str2.equals("36") && !str2.equals("38")) {
              b1 = b;
              if (str3.compareTo("300") >= 0) {
                b1 = b;
                if (str3.compareTo("305") <= 0) {
                  int j = paramString.length();
                  b1 = b;
                } 
              } 
              return b1;
            } 
            int i = paramString.length();
            b1 = b;
          } 
          return b1;
        } 
      } else {
        return b1;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return -1;
    } 
    return 0;
  }
  
  public static boolean c(String paramString) {
    try {
      Double.valueOf(paramString).doubleValue();
      return true;
    } catch (NumberFormatException numberFormatException) {
      numberFormatException.printStackTrace();
      return false;
    } 
  }
  
  public static boolean d(String paramString) {
    try {
      String[] arrayOfString = new String[paramString.length()];
      int i;
      for (i = 0; i < paramString.length(); i++)
        arrayOfString[i] = "" + paramString.charAt(i); 
      int j = arrayOfString.length - 1;
      i = 0;
      while (true) {
        if (j >= 0) {
          if (j > 0) {
            int m = Integer.valueOf(arrayOfString[j - 1]).intValue() * 2;
            int k = m;
            if (m > 9) {
              paramString = "" + m;
              k = Integer.valueOf(paramString.substring(0, 1)).intValue();
              k = Integer.valueOf(paramString.substring(1)).intValue() + k;
            } 
            i = k + Integer.valueOf(arrayOfString[j]).intValue() + i;
          } else {
            i = Integer.valueOf(arrayOfString[0]).intValue() + i;
          } 
        } else {
          return (i % 10 == 0);
        } 
        j -= 2;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */