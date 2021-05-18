import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

final class enh<K, V> extends ekn<Map<K, V>> {
  private final ekn<K> b;
  
  private final ekn<V> c;
  
  private final eml<? extends Map<K, V>> d;
  
  public enh(eng parameng, ejm paramejm, Type paramType1, ekn<K> paramekn, Type paramType2, ekn<V> paramekn1, eml<? extends Map<K, V>> parameml) {
    this.b = new enx<K>(paramejm, paramekn, paramType1);
    this.c = new enx<V>(paramejm, paramekn1, paramType2);
    this.d = parameml;
  }
  
  private String b(ejz paramejz) {
    if (paramejz.r()) {
      paramejz = paramejz.v();
      if (paramejz.y())
        return String.valueOf(paramejz.c()); 
      if (paramejz.b())
        return Boolean.toString(paramejz.n()); 
      if (paramejz.z())
        return paramejz.d(); 
      throw new AssertionError();
    } 
    if (paramejz.s())
      return "null"; 
    throw new AssertionError();
  }
  
  public Map<K, V> a(epo paramepo) {
    epr epr = paramepo.f();
    if (epr == epr.NULL) {
      paramepo.j();
      return null;
    } 
    Map<K, V> map = this.d.a();
    if (epr == epr.BEGIN_ARRAY) {
      paramepo.a();
      while (paramepo.e()) {
        paramepo.a();
        epr = (epr)this.b.b(paramepo);
        if (map.put(epr, this.c.b(paramepo)) != null)
          throw new ekj("duplicate key: " + epr); 
        paramepo.b();
      } 
      paramepo.b();
      return map;
    } 
    paramepo.c();
    while (paramepo.e()) {
      elr.a.a(paramepo);
      epr = (epr)this.b.b(paramepo);
      if (map.put((K)epr, this.c.b(paramepo)) != null)
        throw new ekj("duplicate key: " + epr); 
    } 
    paramepo.d();
    return map;
  }
  
  public void a(eps parameps, Map<K, V> paramMap) {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramMap == null) {
      parameps.f();
      return;
    } 
    if (!this.a.a) {
      parameps.d();
      for (Map.Entry<K, V> entry : paramMap.entrySet()) {
        parameps.a(String.valueOf(entry.getKey()));
        this.c.a(parameps, (V)entry.getValue());
      } 
      parameps.e();
      return;
    } 
    ArrayList<ejz> arrayList = new ArrayList(paramMap.size());
    ArrayList<V> arrayList1 = new ArrayList(paramMap.size());
    Iterator<Map.Entry> iterator = paramMap.entrySet().iterator();
    int i;
    for (i = 0; iterator.hasNext(); i = j | i) {
      int j;
      Map.Entry entry = iterator.next();
      ejz ejz = this.b.b((K)entry.getKey());
      arrayList.add(ejz);
      arrayList1.add(entry.getValue());
      if (ejz.p() || ejz.q()) {
        j = 1;
      } else {
        j = 0;
      } 
    } 
    if (i != 0) {
      parameps.b();
      for (i = bool1; i < arrayList.size(); i++) {
        parameps.b();
        emn.a(arrayList.get(i), parameps);
        this.c.a(parameps, arrayList1.get(i));
        parameps.c();
      } 
      parameps.c();
      return;
    } 
    parameps.d();
    for (i = bool2; i < arrayList.size(); i++) {
      parameps.a(b(arrayList.get(i)));
      this.c.a(parameps, arrayList1.get(i));
    } 
    parameps.e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */