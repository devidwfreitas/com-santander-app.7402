import java.net.URL;

final class eom extends ekn<URL> {
  public URL a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    String str = paramepo.h();
    return !"null".equals(str) ? new URL(str) : null;
  }
  
  public void a(eps parameps, URL paramURL) {
    String str;
    if (paramURL == null) {
      paramURL = null;
    } else {
      str = paramURL.toExternalForm();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */