import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class etc extends etb {
  private static void a(Collection<String> paramCollection1, Collection<String> paramCollection2, String paramString) {
    String str;
    Collection collection = null;
    int i = paramString.indexOf(';');
    if (i < 0) {
      paramCollection1.add(paramString);
      paramCollection2.add(null);
      return;
    } 
    paramCollection1.add(paramString.substring(0, i));
    paramString = paramString.substring(i + 1);
    paramCollection1 = collection;
    if (paramString.startsWith("via="))
      str = paramString.substring(4); 
    paramCollection2.add(str);
  }
  
  public etd a(eqm parameqm) {
    String str1;
    String str2 = c(parameqm);
    if (!str2.startsWith("sms:") && !str2.startsWith("SMS:") && !str2.startsWith("mms:") && !str2.startsWith("MMS:"))
      return null; 
    Map<String, String> map = d(str2);
    int i = 0;
    if (map != null && !map.isEmpty()) {
      str1 = map.get("subject");
      String str = map.get("body");
      i = 1;
    } else {
      map = null;
      str1 = null;
    } 
    int j = str2.indexOf('?', 4);
    if (j < 0 || !i) {
      str2 = str2.substring(4);
    } else {
      str2 = str2.substring(4, j);
    } 
    i = -1;
    ArrayList<String> arrayList1 = new ArrayList(1);
    ArrayList<String> arrayList2 = new ArrayList(1);
    while (true) {
      j = str2.indexOf(',', i + 1);
      if (j > i) {
        a(arrayList1, arrayList2, str2.substring(i + 1, j));
        i = j;
        continue;
      } 
      a(arrayList1, arrayList2, str2.substring(i + 1));
      return new etd(arrayList1.<String>toArray(new String[arrayList1.size()]), arrayList2.<String>toArray(new String[arrayList2.size()]), str1, (String)map);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */