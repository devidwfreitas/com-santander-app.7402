import java.util.Locale;
import java.util.StringTokenizer;

final class eou extends ekn<Locale> {
  public Locale a(epo paramepo) {
    String str;
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    StringTokenizer stringTokenizer = new StringTokenizer(paramepo.h(), "_");
    if (stringTokenizer.hasMoreElements()) {
      String str1 = stringTokenizer.nextToken();
    } else {
      paramepo = null;
    } 
    if (stringTokenizer.hasMoreElements()) {
      str = stringTokenizer.nextToken();
    } else {
      str = null;
    } 
    if (stringTokenizer.hasMoreElements()) {
      String str1 = stringTokenizer.nextToken();
    } else {
      stringTokenizer = null;
    } 
    return (str == null && stringTokenizer == null) ? new Locale((String)paramepo) : ((stringTokenizer == null) ? new Locale((String)paramepo, str) : new Locale((String)paramepo, str, (String)stringTokenizer));
  }
  
  public void a(eps parameps, Locale paramLocale) {
    String str;
    if (paramLocale == null) {
      paramLocale = null;
    } else {
      str = paramLocale.toString();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */