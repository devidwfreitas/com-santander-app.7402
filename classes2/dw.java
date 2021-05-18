public class dw {
  public static int a(String paramString1, String paramString2) {
    paramString1 = paramString1.toLowerCase();
    paramString2 = paramString2.toLowerCase();
    int[] arrayOfInt = new int[paramString2.length() + 1];
    int i = 0;
    label23: while (true) {
      if (i > paramString1.length())
        return arrayOfInt[paramString2.length()]; 
      int j = 0;
      for (int k = i;; k = m) {
        int m;
        if (j > paramString2.length()) {
          if (i > 0)
            arrayOfInt[paramString2.length()] = k; 
          i++;
          continue label23;
        } 
        if (i == 0) {
          arrayOfInt[j] = j;
          m = k;
        } else {
          m = k;
          if (j > 0) {
            int n = arrayOfInt[j - 1];
            m = n;
            if (paramString1.charAt(i - 1) != paramString2.charAt(j - 1))
              m = Math.min(Math.min(n, k), arrayOfInt[j]) + 1; 
            arrayOfInt[j - 1] = k;
          } 
        } 
        j++;
      } 
      break;
    } 
  }
  
  public static boolean a(String paramString1, String paramString2, float paramFloat) {
    if (paramString1 != null || paramString1 != null) {
      if (paramString1 == null || paramString2 == null)
        return false; 
      if (!paramString1.equalsIgnoreCase(paramString2)) {
        double d;
        String str;
        if (paramString1.length() < paramString2.length()) {
          str = paramString2;
          paramString2 = paramString1;
        } else {
          str = paramString1;
        } 
        int i = str.length();
        int j = a(str, paramString2);
        if (i == 0) {
          d = 1.0D;
        } else {
          d = (i - j) / i;
        } 
        if (d <= paramFloat)
          return false; 
      } 
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */