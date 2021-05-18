import android.text.TextUtils;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;

public final class cwa {
  private static final Pattern a = Pattern.compile("\\\\.");
  
  private static final Pattern b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");
  
  public static String a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      Matcher matcher = b.matcher(paramString);
      StringBuffer stringBuffer;
      for (stringBuffer = null; matcher.find(); stringBuffer = stringBuffer1) {
        StringBuffer stringBuffer1 = stringBuffer;
        if (stringBuffer == null)
          stringBuffer1 = new StringBuffer(); 
        switch (matcher.group().charAt(0)) {
          default:
            stringBuffer = stringBuffer1;
            continue;
          case '\b':
            matcher.appendReplacement(stringBuffer1, "\\\\b");
            stringBuffer = stringBuffer1;
            continue;
          case '"':
            matcher.appendReplacement(stringBuffer1, "\\\\\\\"");
            stringBuffer = stringBuffer1;
            continue;
          case '\\':
            matcher.appendReplacement(stringBuffer1, "\\\\\\\\");
            stringBuffer = stringBuffer1;
            continue;
          case '/':
            matcher.appendReplacement(stringBuffer1, "\\\\/");
            stringBuffer = stringBuffer1;
            continue;
          case '\f':
            matcher.appendReplacement(stringBuffer1, "\\\\f");
            stringBuffer = stringBuffer1;
            continue;
          case '\n':
            matcher.appendReplacement(stringBuffer1, "\\\\n");
            stringBuffer = stringBuffer1;
            continue;
          case '\r':
            matcher.appendReplacement(stringBuffer1, "\\\\r");
            stringBuffer = stringBuffer1;
            continue;
          case '\t':
            break;
        } 
        matcher.appendReplacement(stringBuffer1, "\\\\t");
      } 
      if (stringBuffer != null) {
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
      } 
    } 
    return paramString;
  }
  
  public static boolean a(Object paramObject1, Object paramObject2) {
    boolean bool2 = false;
    if (paramObject1 == null && paramObject2 == null)
      return true; 
    boolean bool1 = bool2;
    if (paramObject1 != null) {
      bool1 = bool2;
      if (paramObject2 != null) {
        if (paramObject1 instanceof org.json.JSONObject && paramObject2 instanceof org.json.JSONObject) {
          paramObject1 = paramObject1;
          paramObject2 = paramObject2;
          bool1 = bool2;
          if (paramObject1.length() == paramObject2.length()) {
            Iterator<String> iterator = paramObject1.keys();
            while (true) {
              if (iterator.hasNext()) {
                String str = iterator.next();
                bool1 = bool2;
                if (paramObject2.has(str)) {
                  try {
                    bool1 = a(paramObject1.get(str), paramObject2.get(str));
                    if (!bool1)
                      return false; 
                  } catch (JSONException null) {
                    return false;
                  } 
                  continue;
                } 
                return bool1;
              } 
              return true;
            } 
          } 
          return bool1;
        } 
        if (jSONException instanceof JSONArray && paramObject2 instanceof JSONArray) {
          JSONArray jSONArray = (JSONArray)jSONException;
          paramObject2 = paramObject2;
          bool1 = bool2;
          if (jSONArray.length() == paramObject2.length()) {
            int i = 0;
            while (true) {
              if (i < jSONArray.length()) {
                try {
                  boolean bool = a(jSONArray.get(i), paramObject2.get(i));
                  bool1 = bool2;
                  if (bool) {
                    i++;
                    continue;
                  } 
                } catch (JSONException jSONException) {
                  return false;
                } 
                return bool1;
              } 
              return true;
            } 
          } 
          return bool1;
        } 
        return jSONException.equals(paramObject2);
      } 
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */