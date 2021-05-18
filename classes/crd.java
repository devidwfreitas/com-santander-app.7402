import android.content.ContentValues;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class crd {
  private final String[] a;
  
  private final ArrayList<HashMap<String, Object>> b;
  
  private final String c;
  
  private final HashMap<Object, Integer> d;
  
  private boolean e;
  
  private String f;
  
  private crd(String[] paramArrayOfString, String paramString) {
    this.a = (String[])csp.a(paramArrayOfString);
    this.b = new ArrayList<HashMap<String, Object>>();
    this.c = paramString;
    this.d = new HashMap<Object, Integer>();
    this.e = false;
    this.f = null;
  }
  
  private int b(HashMap<String, Object> paramHashMap) {
    if (this.c == null)
      return -1; 
    paramHashMap = (HashMap<String, Object>)paramHashMap.get(this.c);
    if (paramHashMap == null)
      return -1; 
    Integer integer = this.d.get(paramHashMap);
    if (integer == null) {
      this.d.put(paramHashMap, Integer.valueOf(this.b.size()));
      return -1;
    } 
    return integer.intValue();
  }
  
  public DataHolder a(int paramInt) {
    return new DataHolder(this, paramInt, null, null);
  }
  
  public crd a(ContentValues paramContentValues) {
    csz.a(paramContentValues);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>(paramContentValues.size());
    for (Map.Entry entry : paramContentValues.valueSet())
      hashMap.put(entry.getKey(), entry.getValue()); 
    return a((HashMap)hashMap);
  }
  
  public crd a(HashMap<String, Object> paramHashMap) {
    csz.a(paramHashMap);
    int i = b(paramHashMap);
    if (i == -1) {
      this.b.add(paramHashMap);
      this.e = false;
      return this;
    } 
    this.b.remove(i);
    this.b.add(i, paramHashMap);
    this.e = false;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */