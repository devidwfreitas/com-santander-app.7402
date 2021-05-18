import java.util.Locale;
import java.util.regex.Pattern;

public abstract class njq {
  private final String a;
  
  private final String b;
  
  public njq(String paramString1, String paramString2) {
    if (paramString1 == null || !a(paramString1))
      throw new IllegalArgumentException("Invalid remote command name."); 
    this.a = paramString1.toLowerCase(Locale.ROOT);
    paramString1 = paramString2;
    if (paramString2 == null)
      paramString1 = ""; 
    this.b = paramString1;
  }
  
  static boolean a(String paramString) {
    return (paramString == null || paramString.length() == 0) ? false : Pattern.matches("^[\\w-]*$", paramString);
  }
  
  final String a() {
    return this.a;
  }
  
  protected abstract void a(njr paramnjr);
  
  final void a(njv paramnjv) {
    if (paramnjv == null)
      throw new IllegalArgumentException("request must not be null."); 
    try {
      a(paramnjv.b());
      return;
    } catch (Throwable throwable) {
      paramnjv.b().a(555).a(nis.a(throwable)).g();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */