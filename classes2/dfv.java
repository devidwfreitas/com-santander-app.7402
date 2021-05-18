import android.util.Log;

public class dfv {
  private final String a;
  
  private final String b;
  
  private final cuf c;
  
  private final int d;
  
  private dfv(String paramString1, String paramString2) {
    this.b = paramString2;
    this.a = paramString1;
    this.c = new cuf(paramString1);
    this.d = a();
  }
  
  public dfv(String paramString, String... paramVarArgs) {
    this(paramString, a(paramVarArgs));
  }
  
  private int a() {
    int i;
    for (i = 2; 7 >= i && !Log.isLoggable(this.a, i); i++);
    return i;
  }
  
  private static String a(String... paramVarArgs) {
    if (paramVarArgs.length == 0)
      return ""; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('[');
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      if (stringBuilder.length() > 1)
        stringBuilder.append(","); 
      stringBuilder.append(str);
    } 
    stringBuilder.append(']').append(' ');
    return stringBuilder.toString();
  }
  
  public void a(String paramString, Object... paramVarArgs) {
    if (a(2))
      Log.v(this.a, e(paramString, paramVarArgs)); 
  }
  
  public boolean a(int paramInt) {
    return (this.d <= paramInt);
  }
  
  public void b(String paramString, Object... paramVarArgs) {
    if (a(3))
      Log.d(this.a, e(paramString, paramVarArgs)); 
  }
  
  public void c(String paramString, Object... paramVarArgs) {
    Log.i(this.a, e(paramString, paramVarArgs));
  }
  
  public void d(String paramString, Object... paramVarArgs) {
    Log.w(this.a, e(paramString, paramVarArgs));
  }
  
  protected String e(String paramString, Object... paramVarArgs) {
    String str = paramString;
    if (paramVarArgs != null) {
      str = paramString;
      if (paramVarArgs.length > 0)
        str = String.format(paramString, paramVarArgs); 
    } 
    return this.b.concat(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */