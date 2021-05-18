import android.text.TextUtils;

public class cmq {
  private final String a;
  
  private final String b;
  
  private final long c;
  
  public cmq(String paramString1, String paramString2) {
    this(paramString1, paramString2, cmn.a());
  }
  
  private cmq(String paramString1, String paramString2, long paramLong) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramLong;
  }
  
  public static cmq a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      String[] arrayOfString = paramString.split(" ");
      if (arrayOfString.length == 3)
        try {
          cmq cmq1 = new cmq(arrayOfString[0], arrayOfString[1], Long.parseLong(arrayOfString[2]));
          boolean bool = cmq1.a();
          if (!bool)
            return cmq1; 
        } catch (NumberFormatException numberFormatException) {
          return null;
        }  
    } 
    return null;
  }
  
  public boolean a() {
    return (this.c + 7776000000L < cmn.a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */