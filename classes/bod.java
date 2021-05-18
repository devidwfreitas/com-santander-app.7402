import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bod {
  public static final int a = 2;
  
  public static final int b = 4;
  
  public static final int c = 9;
  
  public static final int d = 17;
  
  public static final int e = 102;
  
  public static final int f = 190;
  
  public static final int g = 341;
  
  public static final String h = "recovery_message";
  
  public static final String i = "name";
  
  public static final String j = "other";
  
  public static final String k = "transient";
  
  public static final String l = "login_recoverable";
  
  private static bod s;
  
  private final Map<Integer, Set<Integer>> m;
  
  private final Map<Integer, Set<Integer>> n;
  
  private final Map<Integer, Set<Integer>> o;
  
  private final String p;
  
  private final String q;
  
  private final String r;
  
  bod(Map<Integer, Set<Integer>> paramMap1, Map<Integer, Set<Integer>> paramMap2, Map<Integer, Set<Integer>> paramMap3, String paramString1, String paramString2, String paramString3) {
    this.m = paramMap1;
    this.n = paramMap2;
    this.o = paramMap3;
    this.p = paramString1;
    this.q = paramString2;
    this.r = paramString3;
  }
  
  public static bod a(JSONArray paramJSONArray) {
    if (paramJSONArray == null)
      return null; 
    int i = 0;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    Map<Integer, Set<Integer>> map1 = null;
    Map<Integer, Set<Integer>> map2 = null;
    Map<Integer, Set<Integer>> map3 = null;
    while (i < paramJSONArray.length()) {
      Map<Integer, Set<Integer>> map4;
      Map<Integer, Set<Integer>> map5;
      Map<Integer, Set<Integer>> map6;
      String str4;
      String str5;
      String str6;
      JSONObject jSONObject = paramJSONArray.optJSONObject(i);
      if (jSONObject == null) {
        str6 = str1;
        str5 = str2;
        str4 = str3;
        map6 = map1;
        map5 = map2;
        map4 = map3;
      } else {
        String str = jSONObject.optString("name");
        map4 = map3;
        map5 = map2;
        map6 = map1;
        str4 = str3;
        str5 = str2;
        str6 = str1;
        if (str != null)
          if (str.equalsIgnoreCase("other")) {
            str4 = jSONObject.optString("recovery_message", null);
            map4 = a(jSONObject);
            map5 = map2;
            map6 = map1;
            str5 = str2;
            str6 = str1;
          } else if (str.equalsIgnoreCase("transient")) {
            str5 = jSONObject.optString("recovery_message", null);
            map5 = a(jSONObject);
            map4 = map3;
            map6 = map1;
            str4 = str3;
            str6 = str1;
          } else {
            map4 = map3;
            map5 = map2;
            map6 = map1;
            str4 = str3;
            str5 = str2;
            str6 = str1;
            if (str.equalsIgnoreCase("login_recoverable")) {
              str6 = jSONObject.optString("recovery_message", null);
              map6 = a(jSONObject);
              map4 = map3;
              map5 = map2;
              str4 = str3;
              str5 = str2;
            } 
          }  
      } 
      i++;
      map3 = map4;
      map2 = map5;
      map1 = map6;
      str3 = str4;
      str2 = str5;
      str1 = str6;
    } 
    return new bod(map3, map2, map1, str3, str2, str1);
  }
  
  private static Map<Integer, Set<Integer>> a(JSONObject paramJSONObject) {
    JSONArray jSONArray = paramJSONObject.optJSONArray("items");
    if (jSONArray.length() == 0)
      return null; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int i = 0;
    while (true) {
      if (i < jSONArray.length()) {
        paramJSONObject = jSONArray.optJSONObject(i);
        if (paramJSONObject != null) {
          int j = paramJSONObject.optInt("code");
          if (j != 0) {
            JSONArray jSONArray1 = paramJSONObject.optJSONArray("subcodes");
            if (jSONArray1 != null && jSONArray1.length() > 0) {
              HashSet<Integer> hashSet = new HashSet();
              for (int k = 0; k < jSONArray1.length(); k++) {
                int m = jSONArray1.optInt(k);
                if (m != 0)
                  hashSet.add(Integer.valueOf(m)); 
              } 
            } else {
              paramJSONObject = null;
            } 
            hashMap.put(Integer.valueOf(j), paramJSONObject);
          } 
        } 
        i++;
        continue;
      } 
      return (Map)hashMap;
    } 
  }
  
  public static bod d() {
    // Byte code:
    //   0: ldc bod
    //   2: monitorenter
    //   3: getstatic bod.s : Lbod;
    //   6: ifnonnull -> 15
    //   9: invokestatic e : ()Lbod;
    //   12: putstatic bod.s : Lbod;
    //   15: getstatic bod.s : Lbod;
    //   18: astore_0
    //   19: ldc bod
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: astore_0
    //   25: ldc bod
    //   27: monitorexit
    //   28: aload_0
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   3	15	24	finally
    //   15	19	24	finally
  }
  
  private static bod e() {
    return new bod(null, new boe(), new bof(), null, null, null);
  }
  
  public bht a(int paramInt1, int paramInt2, boolean paramBoolean) {
    if (paramBoolean)
      return bht.TRANSIENT; 
    if (this.m != null && this.m.containsKey(Integer.valueOf(paramInt1))) {
      Set set = this.m.get(Integer.valueOf(paramInt1));
      if (set == null || set.contains(Integer.valueOf(paramInt2)))
        return bht.OTHER; 
    } 
    if (this.o != null && this.o.containsKey(Integer.valueOf(paramInt1))) {
      Set set = this.o.get(Integer.valueOf(paramInt1));
      if (set == null || set.contains(Integer.valueOf(paramInt2)))
        return bht.LOGIN_RECOVERABLE; 
    } 
    if (this.n != null && this.n.containsKey(Integer.valueOf(paramInt1))) {
      Set set = this.n.get(Integer.valueOf(paramInt1));
      if (set == null || set.contains(Integer.valueOf(paramInt2)))
        return bht.TRANSIENT; 
    } 
    return bht.OTHER;
  }
  
  public String a(bht parambht) {
    switch (bog.a[parambht.ordinal()]) {
      default:
        return null;
      case 1:
        return this.p;
      case 2:
        return this.r;
      case 3:
        break;
    } 
    return this.q;
  }
  
  public Map<Integer, Set<Integer>> a() {
    return this.m;
  }
  
  public Map<Integer, Set<Integer>> b() {
    return this.n;
  }
  
  public Map<Integer, Set<Integer>> c() {
    return this.o;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */