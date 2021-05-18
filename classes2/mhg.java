import java.util.HashMap;
import java.util.Map;

public class mhg {
  public static final String a = "saved_insurance_family_list";
  
  public static final String b = "saved_coverage_list";
  
  public static final String c = "faq-cache-category-key";
  
  public static final String d = "faq-cache-category-key";
  
  public static final String e = "faq-cache-category-search-key";
  
  public static final String f = "faq-cache-category-key";
  
  public static final String g = "audio-base64-key";
  
  public static final String h = "bank-item-key";
  
  private static final String i = "NO_VALUE";
  
  private static mhg k = new mhg();
  
  private Map<String, Object> j = new HashMap<String, Object>();
  
  public static mhg a() {
    return k;
  }
  
  public float a(String paramString, float paramFloat) {
    Float float_ = (Float)this.j.get(paramString);
    if (float_ != null)
      paramFloat = float_.floatValue(); 
    return paramFloat;
  }
  
  public int a(String paramString, int paramInt) {
    Integer integer = (Integer)this.j.get(paramString);
    if (integer != null)
      paramInt = integer.intValue(); 
    return paramInt;
  }
  
  public long a(String paramString, long paramLong) {
    Long long_ = (Long)this.j.get(paramString);
    if (long_ != null)
      paramLong = long_.longValue(); 
    return paramLong;
  }
  
  public String a(String paramString) {
    paramString = (String)this.j.get(paramString);
    return (paramString != null) ? paramString : "NO_VALUE";
  }
  
  public void a(String paramString1, String paramString2) {
    this.j.put(paramString1, paramString2);
  }
  
  public boolean a(String paramString, boolean paramBoolean) {
    Boolean bool = (Boolean)this.j.get(paramString);
    if (bool != null)
      paramBoolean = bool.booleanValue(); 
    return paramBoolean;
  }
  
  public void b() {
    this.j.clear();
  }
  
  public void b(String paramString, float paramFloat) {
    this.j.put(paramString, Float.valueOf(paramFloat));
  }
  
  public void b(String paramString, int paramInt) {
    this.j.put(paramString, Integer.valueOf(paramInt));
  }
  
  public void b(String paramString, long paramLong) {
    this.j.put(paramString, Long.valueOf(paramLong));
  }
  
  public void b(String paramString, boolean paramBoolean) {
    this.j.put(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public boolean b(String paramString) {
    return this.j.containsKey(paramString);
  }
  
  public void c(String paramString) {
    this.j.remove(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */