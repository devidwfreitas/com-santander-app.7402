import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

public class khz {
  public static Calendar a(Calendar paramCalendar) {
    switch (paramCalendar.get(7)) {
      default:
        return paramCalendar;
      case 7:
        paramCalendar.set(5, paramCalendar.get(5) + 2);
        return paramCalendar;
      case 1:
        break;
    } 
    paramCalendar.set(5, paramCalendar.get(5) + 1);
    return paramCalendar;
  }
  
  public static Map<String, String> a(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    String str = paramString.replace(" ", "").replace("-", "").replace("*", "");
    paramString = str;
    if (str.contains("+"))
      paramString = str.substring(3); 
    str = paramString;
    if (paramString.substring(0, 1).equalsIgnoreCase("0"))
      str = paramString.substring(1); 
    if (str.length() >= 10) {
      hashMap.put("ddd", str.substring(0, 2));
      hashMap.put("number", str.substring(2));
      return (Map)hashMap;
    } 
    hashMap.put("ddd", "");
    hashMap.put("number", str);
    return (Map)hashMap;
  }
  
  public static String b(String paramString) {
    return paramString.replace(" ", "").replace(",", "").replace("R$", "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */