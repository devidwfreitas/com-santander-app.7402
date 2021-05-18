import android.app.Activity;

public class mxf {
  private int a(String paramString, int paramInt) {
    return (paramInt > 7) ? d(paramString) : c(paramString);
  }
  
  private int c(String paramString) {
    int j = paramString.length() - 1;
    int i = 2;
    int k = 0;
    while (j >= 0) {
      int n = Integer.valueOf(paramString.substring(j, j + 1)).intValue() * i;
      int m = n;
      if (n >= 10)
        m = n - 10 + 1; 
      k += m;
      if (i == 2) {
        i = 1;
      } else {
        i = 2;
      } 
      j--;
    } 
    j = 10 - k % 10;
    i = j;
    if (j == 10)
      i = 0; 
    return i;
  }
  
  private int d(String paramString) {
    int i = 0;
    int j = 0;
    while (i < 11) {
      (new int[11])[0] = 4;
      (new int[11])[1] = 3;
      (new int[11])[2] = 2;
      (new int[11])[3] = 9;
      (new int[11])[4] = 8;
      (new int[11])[5] = 7;
      (new int[11])[6] = 6;
      (new int[11])[7] = 5;
      (new int[11])[8] = 4;
      (new int[11])[9] = 3;
      (new int[11])[10] = 2;
      j += (new int[11])[i] * Integer.valueOf(paramString.substring(i, i + 1)).intValue();
      i++;
    } 
    i = 11 - j % 11;
    return (i > 9) ? 0 : i;
  }
  
  public String a(String paramString) {
    String str = paramString;
    if (paramString.length() > 12) {
      str = paramString.substring(0, 12);
      if (paramString.length() > 24) {
        str = str + " " + paramString.substring(12, 24);
        return (paramString.length() > 36) ? (str + " " + paramString.substring(24, 36) + " " + paramString.substring(36)) : (str + " " + paramString.substring(24));
      } 
    } else {
      return str;
    } 
    return str + " " + paramString.substring(12);
  }
  
  public String a(String paramString, Activity paramActivity) {
    try {
      if (paramString.length() != 44)
        throw new Exception(paramActivity.getApplicationContext().getString(2131297170)); 
    } catch (Exception exception) {
      if (exception.getMessage().isEmpty())
        throw new Exception(paramActivity.getApplicationContext().getString(2131297171)); 
    } 
    if (!exception.substring(0, 1).equals("8"))
      throw new Exception(paramActivity.getApplicationContext().getString(2131297172)); 
    String str1 = exception.substring(0, 11);
    String str2 = exception.substring(11, 22);
    String str3 = exception.substring(22, 33);
    String str4 = exception.substring(33, 44);
    int i = Integer.valueOf(exception.substring(2, 3)).intValue();
    return str1 + a(str1, i) + str2 + a(str2, i) + str3 + a(str3, i) + str4 + a(str4, i);
  }
  
  public String b(String paramString) {
    if (paramString.length() != 47 || paramString.substring(paramString.length() - 14).length() == 14);
    String str = paramString;
    if (paramString.length() > 5) {
      str = paramString.substring(0, 5);
      if (paramString.length() > 10) {
        str = str + "." + paramString.substring(5, 10);
        if (paramString.length() > 15) {
          str = str + " " + paramString.substring(10, 15);
          if (paramString.length() > 21) {
            str = str + "." + paramString.substring(15, 21);
            if (paramString.length() > 26) {
              str = str + " " + paramString.substring(21, 26);
              if (paramString.length() > 32) {
                str = str + "." + paramString.substring(26, 32);
                if (paramString.length() > 33) {
                  str = str + " " + paramString.substring(32, 33);
                  return (paramString.length() > 34) ? (str + " " + paramString.substring(33)) : (str + " " + paramString.substring(33));
                } 
                return str + " " + paramString.substring(32);
              } 
              return str + "." + paramString.substring(26);
            } 
            return str + " " + paramString.substring(21);
          } 
          return str + "." + paramString.substring(15);
        } 
        return str + " " + paramString.substring(10);
      } 
    } else {
      return str;
    } 
    return str + "." + paramString.substring(5);
  }
  
  public String b(String paramString, Activity paramActivity) {
    try {
      if (paramString.length() != 44)
        throw new Exception(paramActivity.getApplicationContext().getString(2131297170)); 
    } catch (Exception exception) {
      if (exception.getMessage().isEmpty())
        throw new Exception(paramActivity.getApplicationContext().getString(2131297171)); 
    } 
    String str2 = exception.substring(0, 4) + exception.substring(19, 20) + exception.substring(20, 24);
    String str3 = exception.substring(24, 29) + exception.substring(29, 34);
    String str4 = exception.substring(34, 39) + exception.substring(39, 44);
    String str5 = exception.substring(4, 5);
    String str1 = exception.substring(5, 19);
    if (d(exception.substring(0, 4) + exception.substring(5, 44)) != Integer.valueOf(str5).intValue());
    null = str1;
    if (Long.valueOf(str1).equals(Integer.valueOf(0)))
      null = "000"; 
    return str2 + c(str2) + str3 + c(str3) + str4 + c(str4) + str5 + null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */