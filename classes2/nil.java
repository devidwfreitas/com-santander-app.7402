import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public final class nil {
  private final long a = System.currentTimeMillis();
  
  private Map<String, String> b;
  
  private Map<String, String[]> c;
  
  private String d;
  
  private String e;
  
  public nil() {}
  
  public nil(long paramLong) {}
  
  public nil(long paramLong, JSONObject paramJSONObject) {
    if (paramJSONObject != null) {
      Iterator<String> iterator = paramJSONObject.keys();
      while (iterator.hasNext()) {
        String str = iterator.next();
        Object object = paramJSONObject.opt(str);
        if (!TextUtils.isEmpty(str) && object != null && !JSONObject.NULL.equals(object)) {
          String[] arrayOfString = a(object);
          if (arrayOfString != null) {
            h().put(str, arrayOfString);
            continue;
          } 
          g().put(str, object.toString());
        } 
      } 
    } 
  }
  
  public nil(Map<String, ?> paramMap) {
    if (paramMap != null)
      for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
        if (!TextUtils.isEmpty((CharSequence)entry.getKey()) && entry.getValue() != null) {
          String[] arrayOfString = a(entry.getValue());
          if (arrayOfString != null) {
            h().put((String)entry.getKey(), arrayOfString);
            continue;
          } 
          g().put((String)entry.getKey(), entry.getValue().toString());
        } 
      }  
  }
  
  private static JSONArray a(String[] paramArrayOfString) {
    if (Build.VERSION.SDK_INT >= 19)
      return new JSONArray(paramArrayOfString); 
    JSONArray jSONArray = new JSONArray();
    for (int i = 0; i < paramArrayOfString.length; i++)
      jSONArray.put(paramArrayOfString[i]); 
    return jSONArray;
  }
  
  private static void a(JSONStringer paramJSONStringer, String paramString1, String paramString2) {
    paramJSONStringer.key(paramString1);
    paramJSONStringer.value(paramString2);
  }
  
  private static void a(JSONStringer paramJSONStringer, String paramString, String[] paramArrayOfString) {
    paramJSONStringer.key(paramString);
    paramJSONStringer.array();
    for (int i = 0; i < paramArrayOfString.length; i++)
      paramJSONStringer.value(paramArrayOfString[i]); 
    paramJSONStringer.endArray();
  }
  
  private static String[] a(Object paramObject) {
    if (paramObject != null) {
      if (paramObject.getClass().isArray())
        return b(paramObject); 
      if (paramObject instanceof Collection)
        return b(((Collection)paramObject).toArray()); 
      if (paramObject instanceof JSONArray)
        return a((JSONArray)paramObject); 
    } 
    return null;
  }
  
  private static String[] a(JSONArray paramJSONArray) {
    boolean bool = false;
    if (paramJSONArray == null)
      return null; 
    int i = 0;
    int j;
    for (j = 0; i < paramJSONArray.length(); j = k) {
      int k = j;
      if (paramJSONArray.opt(i) != null)
        k = j + 1; 
      i++;
    } 
    String[] arrayOfString = new String[j];
    j = 0;
    i = bool;
    while (i < paramJSONArray.length()) {
      Object object = paramJSONArray.opt(i);
      int k = j;
      if (object != null) {
        arrayOfString[j] = object.toString();
        k = j + 1;
      } 
      i++;
      j = k;
    } 
    return arrayOfString;
  }
  
  private static String[] b(Object paramObject) {
    boolean bool = false;
    if (paramObject == null)
      return null; 
    int i = 0;
    int j;
    for (j = 0; i < Array.getLength(paramObject); j = k) {
      int k = j;
      if (Array.get(paramObject, i) != null)
        k = j + 1; 
      i++;
    } 
    String[] arrayOfString = new String[j];
    j = 0;
    i = bool;
    while (i < Array.getLength(paramObject)) {
      Object object = Array.get(paramObject, i);
      int k = j;
      if (object != null) {
        arrayOfString[j] = object.toString();
        k = j + 1;
      } 
      i++;
      j = k;
    } 
    return arrayOfString;
  }
  
  private static String c(Map<String, ?> paramMap) {
    try {
      JSONStringer jSONStringer = new JSONStringer();
      jSONStringer.object();
      for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
        if (entry.getValue() instanceof String) {
          a(jSONStringer, (String)entry.getKey(), (String)entry.getValue());
          continue;
        } 
        if (entry.getValue() instanceof String[])
          a(jSONStringer, (String)entry.getKey(), (String[])entry.getValue()); 
      } 
      jSONStringer.endObject();
      return jSONStringer.toString();
    } catch (JSONException jSONException) {
      return null;
    } 
  }
  
  private Map<String, String> g() {
    if (this.b == null)
      this.b = new HashMap<String, String>(); 
    return this.b;
  }
  
  private Map<String, String[]> h() {
    if (this.c == null)
      this.c = (Map)new HashMap<String, String>(); 
    return this.c;
  }
  
  private void i() {
    this.d = null;
    this.e = null;
  }
  
  public int a() {
    int i;
    int j = 0;
    if (this.b == null) {
      i = 0;
    } else {
      i = this.b.size();
    } 
    if (this.c != null)
      j = this.c.size(); 
    return i + j;
  }
  
  public void a(String paramString1, String paramString2) {
    if (TextUtils.isEmpty(paramString1))
      throw new IllegalArgumentException(); 
    if (paramString2 == null && this.b != null) {
      this.b.remove(paramString1);
      i();
      return;
    } 
    if (paramString2 != null) {
      g().put(paramString1, paramString2);
      i();
      return;
    } 
  }
  
  public void a(String paramString, String[] paramArrayOfString) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException(); 
    if (paramArrayOfString == null && this.c != null) {
      this.c.remove(paramString);
      i();
      return;
    } 
    if (paramArrayOfString != null) {
      h().put(paramString, b(paramArrayOfString));
      i();
      return;
    } 
  }
  
  public void a(Map<String, ?> paramMap) {
    if (paramMap == null)
      return; 
    for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
      if (!TextUtils.isEmpty((CharSequence)entry.getKey()) && entry.getValue() != null) {
        String[] arrayOfString = a(entry.getValue());
        if (arrayOfString != null) {
          h().put((String)entry.getKey(), arrayOfString);
          continue;
        } 
        g().put((String)entry.getKey(), entry.getValue().toString());
      } 
    } 
    i();
  }
  
  public boolean a(String paramString) {
    return ((this.b != null && this.b.containsKey(paramString)) || (this.c != null && this.c.containsKey(paramString)));
  }
  
  public Object b(String paramString) {
    if (this.b != null) {
      Object object = this.b.get(paramString);
      if (object != null)
        return object; 
    } 
    return (this.c == null) ? null : this.c.get(paramString);
  }
  
  public JSONObject b() {
    JSONObject jSONObject;
    if (this.b == null) {
      jSONObject = new JSONObject();
    } else {
      jSONObject = new JSONObject(this.b);
    } 
    if (this.c != null)
      try {
        for (Map.Entry<String, String> entry : this.c.entrySet())
          jSONObject.put((String)entry.getKey(), a((String[])entry.getValue())); 
      } catch (JSONException jSONException) {
        throw new RuntimeException(jSONException);
      }  
    return (JSONObject)jSONException;
  }
  
  public void b(String paramString1, String paramString2) {
    if (TextUtils.isEmpty(paramString1))
      throw new IllegalArgumentException(); 
    if (paramString2 != null) {
      if (this.b == null) {
        g().put(paramString1, paramString2);
        i();
        return;
      } 
      if (!this.b.containsKey(paramString1)) {
        this.b.put(paramString1, paramString2);
        i();
        return;
      } 
    } 
  }
  
  public void b(String paramString, String[] paramArrayOfString) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException(); 
    if (paramArrayOfString != null) {
      if (this.c == null) {
        h().put(paramString, b(paramArrayOfString));
        i();
        return;
      } 
      if (!this.c.containsKey(paramString)) {
        this.c.put(paramString, b(paramArrayOfString));
        i();
        return;
      } 
    } 
  }
  
  public void b(Map<String, ?> paramMap) {
    if (paramMap == null)
      return; 
    for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
      if (!TextUtils.isEmpty((CharSequence)entry.getKey()) && entry.getValue() != null) {
        String[] arrayOfString = a(entry.getValue());
        if (arrayOfString != null) {
          b((String)entry.getKey(), arrayOfString);
          continue;
        } 
        b((String)entry.getKey(), entry.getValue().toString());
      } 
    } 
    i();
  }
  
  public String c() {
    if (this.d != null)
      return this.d; 
    try {
      JSONStringer jSONStringer = new JSONStringer();
      jSONStringer.object();
      if (this.b != null)
        for (Map.Entry<String, String> entry : this.b.entrySet())
          a(jSONStringer, (String)entry.getKey(), (String)entry.getValue());  
      if (this.c != null)
        for (Map.Entry<String, String> entry : this.c.entrySet())
          a(jSONStringer, (String)entry.getKey(), (String[])entry.getValue());  
      jSONStringer.endObject();
      String str = jSONStringer.toString();
      this.d = str;
      return str;
    } catch (JSONException jSONException) {
      return null;
    } 
  }
  
  public String c(String paramString) {
    return (this.b == null) ? null : this.b.get(paramString);
  }
  
  public String d() {
    TreeMap<String, String> treeMap;
    if (this.e != null)
      return this.e; 
    if (this.b == null) {
      TreeMap<Object, Object> treeMap1 = new TreeMap<Object, Object>();
    } else {
      treeMap = new TreeMap<String, String>(this.b);
    } 
    if (this.c != null)
      treeMap.putAll((Map)this.c); 
    this.e = c(treeMap);
    String str = this.e;
    this.d = str;
    return str;
  }
  
  public String[] d(String paramString) {
    return (this.c == null) ? null : this.c.get(paramString);
  }
  
  public String[] e() {
    Set<String> set1;
    Iterator<String> iterator;
    Set<String> set2;
    if (this.b == null) {
      set1 = null;
    } else {
      set1 = this.b.keySet();
    } 
    if (this.c == null) {
      set2 = null;
    } else {
      set2 = this.c.keySet();
    } 
    if (set1 != null && set2 != null) {
      String[] arrayOfString = new String[set1.size() + set2.size()];
      iterator = set1.iterator();
      int i;
      for (i = 0; iterator.hasNext(); i++)
        arrayOfString[i] = iterator.next(); 
      iterator = set2.iterator();
      while (iterator.hasNext()) {
        arrayOfString[i] = iterator.next();
        i++;
      } 
      return arrayOfString;
    } 
    return (iterator != null) ? iterator.<String>toArray(new String[iterator.size()]) : ((set2 != null) ? set2.<String>toArray(new String[set2.size()]) : new String[0]);
  }
  
  public long f() {
    return this.a;
  }
  
  public String toString() {
    return d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */