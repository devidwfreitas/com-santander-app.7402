import java.util.Map;
import java.util.Set;

public final class ekc extends ejz {
  private final emd<String, ejz> a = new emd<String, ejz>();
  
  private ejz a(Object paramObject) {
    return (ejz)((paramObject == null) ? ekb.a : new ekf(paramObject));
  }
  
  public ejz a(String paramString) {
    return this.a.remove(paramString);
  }
  
  ekc a() {
    ekc ekc1 = new ekc();
    for (Map.Entry<String, ejz> entry : this.a.entrySet())
      ekc1.a((String)entry.getKey(), ((ejz)entry.getValue()).o()); 
    return ekc1;
  }
  
  public void a(String paramString, ejz paramejz) {
    ekb ekb;
    ejz ejz1 = paramejz;
    if (paramejz == null)
      ekb = ekb.a; 
    this.a.put(paramString, ekb);
  }
  
  public void a(String paramString, Boolean paramBoolean) {
    a(paramString, a(paramBoolean));
  }
  
  public void a(String paramString, Character paramCharacter) {
    a(paramString, a(paramCharacter));
  }
  
  public void a(String paramString, Number paramNumber) {
    a(paramString, a(paramNumber));
  }
  
  public void a(String paramString1, String paramString2) {
    a(paramString1, a(paramString2));
  }
  
  public Set<Map.Entry<String, ejz>> b() {
    return this.a.entrySet();
  }
  
  public boolean b(String paramString) {
    return this.a.containsKey(paramString);
  }
  
  public ejz c(String paramString) {
    return this.a.get(paramString);
  }
  
  public ekf d(String paramString) {
    return (ekf)this.a.get(paramString);
  }
  
  public ejw e(String paramString) {
    return (ejw)this.a.get(paramString);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject == this || (paramObject instanceof ekc && ((ekc)paramObject).a.equals(this.a)));
  }
  
  public ekc f(String paramString) {
    return (ekc)this.a.get(paramString);
  }
  
  public int hashCode() {
    return this.a.hashCode();
  }
  
  public int y() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */