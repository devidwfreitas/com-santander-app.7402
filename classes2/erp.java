import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public final class erp {
  private static final String a = erp.class.getSimpleName();
  
  private static final Pattern b = Pattern.compile(",");
  
  public static Map<epy, Object> a(Intent paramIntent) {
    Bundle bundle = paramIntent.getExtras();
    if (bundle == null || bundle.isEmpty())
      return null; 
    EnumMap<epy, Object> enumMap = new EnumMap<epy, Object>(epy.class);
    for (epy epy : epy.values()) {
      if (epy != epy.CHARACTER_SET && epy != epy.NEED_RESULT_POINT_CALLBACK && epy != epy.POSSIBLE_FORMATS) {
        String str = epy.name();
        if (bundle.containsKey(str))
          if (epy.getValueType().equals(Void.class)) {
            enumMap.put(epy, Boolean.TRUE);
          } else {
            Object object = bundle.get(str);
            if (epy.getValueType().isInstance(object)) {
              enumMap.put(epy, object);
            } else {
              Log.w(a, "Ignoring hint " + epy + " because it is not assignable from " + object);
            } 
          }  
      } 
    } 
    Log.i(a, "Hints from the Intent: " + enumMap);
    return enumMap;
  }
  
  static Map<epy, ?> a(Uri paramUri) {
    String str = paramUri.getEncodedQuery();
    if (str == null || str.isEmpty())
      return null; 
    Map<String, String> map = a(str);
    EnumMap<epy, Object> enumMap = new EnumMap<epy, Object>(epy.class);
    for (epy epy : epy.values()) {
      if (epy != epy.CHARACTER_SET && epy != epy.NEED_RESULT_POINT_CALLBACK && epy != epy.POSSIBLE_FORMATS) {
        String str1 = map.get(epy.name());
        if (str1 != null)
          if (epy.getValueType().equals(Object.class)) {
            enumMap.put(epy, str1);
          } else if (epy.getValueType().equals(Void.class)) {
            enumMap.put(epy, Boolean.TRUE);
          } else if (epy.getValueType().equals(String.class)) {
            enumMap.put(epy, str1);
          } else if (epy.getValueType().equals(Boolean.class)) {
            if (str1.isEmpty()) {
              enumMap.put(epy, Boolean.TRUE);
            } else if ("0".equals(str1) || "false".equalsIgnoreCase(str1) || "no".equalsIgnoreCase(str1)) {
              enumMap.put(epy, Boolean.FALSE);
            } else {
              enumMap.put(epy, Boolean.TRUE);
            } 
          } else if (epy.getValueType().equals(int[].class)) {
            str = str1;
            if (!str1.isEmpty()) {
              str = str1;
              if (str1.charAt(str1.length() - 1) == ',')
                str = str1.substring(0, str1.length() - 1); 
            } 
            String[] arrayOfString = b.split(str);
            int[] arrayOfInt = new int[arrayOfString.length];
            int i = 0;
            while (i < arrayOfString.length) {
              try {
                arrayOfInt[i] = Integer.parseInt(arrayOfString[i]);
                i++;
              } catch (NumberFormatException numberFormatException) {
                Log.w(a, "Skipping array of integers hint " + epy + " due to invalid numeric value: '" + arrayOfString[i] + '\'');
                numberFormatException = null;
                break;
              } 
            } 
            if (numberFormatException != null)
              enumMap.put(epy, numberFormatException); 
          } else {
            Log.w(a, "Unsupported hint type '" + epy + "' of type " + epy.getValueType());
          }  
      } 
    } 
    Log.i(a, "Hints from the URI: " + enumMap);
    return enumMap;
  }
  
  private static Map<String, String> a(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (int i = 0;; i = j + 1) {
      int j;
      int k;
      if (i < paramString.length()) {
        if (paramString.charAt(i) == '&') {
          i++;
          continue;
        } 
        j = paramString.indexOf('&', i);
        k = paramString.indexOf('=', i);
        if (j < 0) {
          String str;
          if (k < 0) {
            str = Uri.decode(paramString.substring(i).replace('+', ' '));
            paramString = "";
          } else {
            str = Uri.decode(paramString.substring(i, k).replace('+', ' '));
            paramString = Uri.decode(paramString.substring(k + 1).replace('+', ' '));
          } 
          if (!hashMap.containsKey(str))
            hashMap.put(str, paramString); 
          return (Map)hashMap;
        } 
      } else {
        return (Map)hashMap;
      } 
      if (k < 0 || k > j) {
        String str = Uri.decode(paramString.substring(i, j).replace('+', ' '));
        if (!hashMap.containsKey(str))
          hashMap.put(str, ""); 
        i = j + 1;
        continue;
      } 
      String str1 = Uri.decode(paramString.substring(i, k).replace('+', ' '));
      String str2 = Uri.decode(paramString.substring(k + 1, j).replace('+', ' '));
      if (!hashMap.containsKey(str1))
        hashMap.put(str1, str2); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */