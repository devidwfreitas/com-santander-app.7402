import java.util.HashMap;
import java.util.Iterator;

public class cwb {
  public static void a(StringBuilder paramStringBuilder, HashMap<String, String> paramHashMap) {
    paramStringBuilder.append("{");
    Iterator<String> iterator = paramHashMap.keySet().iterator();
    boolean bool = true;
    while (iterator.hasNext()) {
      String str1 = iterator.next();
      if (!bool) {
        paramStringBuilder.append(",");
      } else {
        bool = false;
      } 
      String str2 = paramHashMap.get(str1);
      paramStringBuilder.append("\"").append(str1).append("\":");
      if (str2 == null) {
        paramStringBuilder.append("null");
        continue;
      } 
      paramStringBuilder.append("\"").append(str2).append("\"");
    } 
    paramStringBuilder.append("}");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */