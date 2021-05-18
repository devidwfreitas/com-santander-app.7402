import android.util.Log;

public class nad {
  private static final String a = "ERROR_DLCRYPTO";
  
  private static nad b;
  
  private ji c = new ji();
  
  public static nad a() {
    if (b == null)
      b = new nad(); 
    return b;
  }
  
  private void d(String paramString) {
    try {
      this.c.a(paramString);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.getMessage());
      return;
    } 
  }
  
  public ih a(ih paramih) {
    return new nae(this, paramih);
  }
  
  public void a(String paramString) {
    try {
      this.c.b(paramString);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.getMessage());
      return;
    } 
  }
  
  public String b() {
    this.c.a(true);
    try {
      return this.c.c();
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.getMessage());
      return "";
    } 
  }
  
  public String b(String paramString) {
    String str1;
    String str2 = "";
    try {
      paramString = this.c.f(paramString);
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.getMessage());
      str1 = str2;
    } 
    return str1.replaceAll("//s", "");
  }
  
  public String c(String paramString) {
    try {
      return this.c.c(paramString);
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.getMessage());
      return "";
    } 
  }
  
  public ji c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */