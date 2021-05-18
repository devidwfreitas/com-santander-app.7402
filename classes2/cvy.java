import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;

public class cvy {
  private static final Pattern a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
  
  private static final Pattern b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
  
  private static final Pattern c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");
  
  private static String a(String paramString1, String paramString2) {
    if (paramString2 == null)
      paramString2 = "ISO-8859-1"; 
    try {
      return URLDecoder.decode(paramString1, paramString2);
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new IllegalArgumentException(unsupportedEncodingException);
    } 
  }
  
  public static Map<String, String> a(URI paramURI, String paramString) {
    Map<?, ?> map2 = Collections.emptyMap();
    String str = paramURI.getRawQuery();
    Map<?, ?> map1 = map2;
    if (str != null) {
      map1 = map2;
      if (str.length() > 0) {
        map2 = new HashMap<Object, Object>();
        Scanner scanner = new Scanner(str);
        scanner.useDelimiter("&");
        while (scanner.hasNext()) {
          String str1;
          String[] arrayOfString = scanner.next().split("=");
          if (arrayOfString.length == 0 || arrayOfString.length > 2)
            throw new IllegalArgumentException("bad parameter"); 
          String str2 = a(arrayOfString[0], paramString);
          map1 = null;
          if (arrayOfString.length == 2)
            str1 = a(arrayOfString[1], paramString); 
          map2.put(str2, str1);
        } 
        map1 = map2;
      } 
    } 
    return (Map)map1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */