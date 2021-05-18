import android.util.Log;

public final class cuf {
  public static final int a = 23 - " PII_LOG".length();
  
  private static final String b = null;
  
  private final String c;
  
  private final String d;
  
  public cuf(String paramString) {
    this(paramString, null);
  }
  
  public cuf(String paramString1, String paramString2) {
    boolean bool;
    csp.a(paramString1, "log tag cannot be null");
    if (paramString1.length() <= 23) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "tag \"%s\" is longer than the %d character maximum", new Object[] { paramString1, Integer.valueOf(23) });
    this.c = paramString1;
    if (paramString2 == null || paramString2.length() <= 0) {
      this.d = null;
      return;
    } 
    this.d = paramString2;
  }
  
  private String a(String paramString) {
    return (this.d == null) ? paramString : this.d.concat(paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    if (a(3))
      Log.d(paramString1, a(paramString2)); 
  }
  
  public void a(String paramString1, String paramString2, Throwable paramThrowable) {
    if (a(4))
      Log.i(paramString1, a(paramString2), paramThrowable); 
  }
  
  public boolean a(int paramInt) {
    return Log.isLoggable(this.c, paramInt);
  }
  
  public void b(String paramString1, String paramString2) {
    if (a(5))
      Log.w(paramString1, a(paramString2)); 
  }
  
  public void b(String paramString1, String paramString2, Throwable paramThrowable) {
    if (a(5))
      Log.w(paramString1, a(paramString2), paramThrowable); 
  }
  
  public void c(String paramString1, String paramString2) {
    if (a(6))
      Log.e(paramString1, a(paramString2)); 
  }
  
  public void c(String paramString1, String paramString2, Throwable paramThrowable) {
    if (a(6))
      Log.e(paramString1, a(paramString2), paramThrowable); 
  }
  
  public void d(String paramString1, String paramString2, Throwable paramThrowable) {
    if (a(7)) {
      Log.e(paramString1, a(paramString2), paramThrowable);
      Log.wtf(paramString1, a(paramString2), paramThrowable);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */