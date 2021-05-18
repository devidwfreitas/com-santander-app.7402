import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public final class ngm extends ngp {
  private volatile int a;
  
  private final nfu<nfw> b;
  
  private final nfu<nfx> c;
  
  private final ngl d;
  
  private final String e;
  
  private final boolean f;
  
  private ngm(long paramLong, Collection<nfw> paramCollection, Collection<nfx> paramCollection1, Collection<nfz> paramCollection2, Collection<nga> paramCollection3, Collection<ngb> paramCollection4, Collection<ngc> paramCollection5, ngl paramngl, boolean paramBoolean, String paramString) {
    super(paramLong, paramCollection2, paramCollection3, paramCollection4, paramCollection5);
    if (paramngl == null) {
      this.d = new ngl();
    } else {
      this.d = paramngl;
    } 
    this.c = new nfu<nfx>(paramCollection1);
    this.b = new nfu<nfw>(paramCollection);
    this.f = paramBoolean;
    this.e = paramString;
  }
  
  private static Set<nfw> a(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<nfw> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      String str;
      HashSet<nfw> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        str = iterator.next().toString();
        hashSet.add(new nfw(str, paramJSONObject.getString(str)));
        continue;
      } 
      return (Set<nfw>)str;
    } 
  }
  
  public static ngm a(String paramString) {
    if (paramString == null)
      return null; 
    JSONObject jSONObject = new JSONObject(paramString);
    return (new ngo()).a(jSONObject.optLong("creation_ts", 0L)).a(a(jSONObject.optJSONObject("audiences"))).b(b(jSONObject.optJSONObject("badges"))).c(f(jSONObject.optJSONObject("dates"))).d(c(jSONObject.optJSONObject("flags"))).e(d(jSONObject.optJSONObject("metrics"))).f(e(jSONObject.optJSONObject("properties"))).a(g(jSONObject.optJSONObject("current_visit"))).a(jSONObject.optBoolean("new_visitor", false)).a(paramString).a();
  }
  
  private static Set<nfx> b(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<nfx> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      HashSet<nfx> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        hashSet.add(new nfx(iterator.next().toString()));
        continue;
      } 
      return hashSet1;
    } 
  }
  
  private static Set<nga> c(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<nga> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      String str;
      HashSet<nga> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        str = iterator.next().toString();
        hashSet.add(new nga(str, paramJSONObject.getBoolean(str)));
        continue;
      } 
      return (Set<nga>)str;
    } 
  }
  
  private static Set<ngb> d(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<ngb> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      String str;
      HashSet<ngb> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        str = iterator.next().toString();
        hashSet.add(new ngb(str, paramJSONObject.optDouble(str, 0.0D)));
        continue;
      } 
      return (Set<ngb>)str;
    } 
  }
  
  private static Set<ngc> e(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<ngc> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      String str;
      HashSet<ngc> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        str = iterator.next().toString();
        hashSet.add(new ngc(str, paramJSONObject.optString(str, "")));
        continue;
      } 
      return (Set<ngc>)str;
    } 
  }
  
  private static Set<nfz> f(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    HashSet<nfz> hashSet = new HashSet(paramJSONObject.length());
    Iterator<E> iterator = paramJSONObject.keys();
    while (true) {
      String str;
      HashSet<nfz> hashSet1 = hashSet;
      if (iterator.hasNext()) {
        str = iterator.next().toString();
        hashSet.add(new nfz(str, paramJSONObject.optLong(str, 0L)));
        continue;
      } 
      return (Set<nfz>)str;
    } 
  }
  
  private static ngl g(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return null; 
    JSONObject jSONObject2 = paramJSONObject.optJSONObject("dates");
    JSONObject jSONObject1 = jSONObject2;
    if (jSONObject2 == null)
      jSONObject1 = new JSONObject(); 
    return new ngl(paramJSONObject.optLong("creation_ts", 0L), f(paramJSONObject.optJSONObject("dates")), c(paramJSONObject.optJSONObject("flags")), d(paramJSONObject.optJSONObject("metrics")), e(paramJSONObject.optJSONObject("properties")), jSONObject1.optLong("last_event_ts", 0L), paramJSONObject.optInt("total_event_count", 0));
  }
  
  public nfu<nfw> a() {
    return this.b;
  }
  
  public nfu<nfx> b() {
    return this.c;
  }
  
  public boolean c() {
    return this.f;
  }
  
  public ngl d() {
    return this.d;
  }
  
  public String e() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (super.equals(paramObject) && paramObject instanceof ngm) {
      paramObject = paramObject;
      if (this.b.equals(((ngm)paramObject).b) && this.c.equals(((ngm)paramObject).c) && this.d.equals(paramObject.d()) && this.f == ((ngm)paramObject).f && super.equals(paramObject))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.a;
    int i = j;
    if (j == 0) {
      j = super.hashCode();
      if (this.f) {
        i = 1;
      } else {
        i = 0;
      } 
      i = (((i + (j + 527) * 31) * 31 + this.b.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode();
      this.a = i;
    } 
    return i;
  }
  
  public String toString() {
    String str = System.getProperty("line.separator");
    return "Profile : {" + str + "    " + "creation_ts : " + f() + str + "    " + "is_new_visitor : " + this.f + str + "    " + "audiences : " + this.b.c("    ") + str + "    " + "badges : " + this.c.c("    ") + str + "    " + "dates : " + j().c("    ") + str + "    " + "flags : " + g().c("    ") + str + "    " + "metrics : " + h().c("    ") + str + "    " + "properties : " + i().c("    ") + str + "    " + "current_visit : " + this.d.a("    ") + str + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */