import java.util.regex.Pattern;

public final class esq extends esh {
  private static final Pattern a = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");
  
  static boolean a(String paramString) {
    return (paramString != null && a.matcher(paramString).matches() && paramString.indexOf('@') >= 0);
  }
  
  public eso a(eqm parameqm) {
    String str = c(parameqm);
    if (str.startsWith("MATMSG:")) {
      String[] arrayOfString = a("TO:", str, true);
      if (arrayOfString != null) {
        int j = arrayOfString.length;
        int i = 0;
        while (i < j) {
          if (a(arrayOfString[i])) {
            i++;
            continue;
          } 
          return null;
        } 
        return new eso(arrayOfString, null, null, b("SUB:", str, false), b("BODY:", str, false));
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */