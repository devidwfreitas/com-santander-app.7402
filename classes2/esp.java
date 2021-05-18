import java.util.Map;
import java.util.regex.Pattern;

public final class esp extends etb {
  private static final Pattern a = Pattern.compile(",");
  
  public eso a(eqm parameqm) {
    Map<String, String> map;
    String str2 = null;
    String str3 = null;
    String[] arrayOfString = null;
    String str4 = c(parameqm);
    if (str4.startsWith("mailto:") || str4.startsWith("MAILTO:")) {
      String[] arrayOfString1;
      str3 = str4.substring(7);
      int i = str3.indexOf('?');
      String str = str3;
      if (i >= 0)
        str = str3.substring(0, i); 
      str = e(str);
      if (!str.isEmpty()) {
        arrayOfString1 = a.split(str);
      } else {
        str = null;
      } 
      map = d(str4);
      if (map != null) {
        if (str == null) {
          str2 = map.get("to");
          if (str2 != null)
            arrayOfString1 = a.split(str2); 
        } 
        str2 = map.get("cc");
        if (str2 != null) {
          String[] arrayOfString2 = a.split(str2);
        } else {
          str2 = null;
        } 
        str3 = map.get("bcc");
        if (str3 != null)
          arrayOfString = a.split(str3); 
        str3 = map.get("subject");
        String str5 = map.get("body");
      } else {
        map = null;
        str3 = null;
        arrayOfString = null;
      } 
      return new eso(arrayOfString1, (String[])str2, arrayOfString, str3, (String)map);
    } 
    String str1 = str3;
    return (eso)(esq.a((String)map) ? new eso((String)map) : str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */