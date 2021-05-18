import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

class blp implements Serializable {
  private static final long a = 20160629001L;
  
  private HashMap<bkf, List<bkl>> b = new HashMap<bkf, List<bkl>>();
  
  public blp() {}
  
  public blp(HashMap<bkf, List<bkl>> paramHashMap) {
    this.b.putAll(paramHashMap);
  }
  
  private Object writeReplace() {
    return new blr(this.b, null);
  }
  
  public List<bkl> a(bkf parambkf) {
    return this.b.get(parambkf);
  }
  
  public Set<bkf> a() {
    return this.b.keySet();
  }
  
  public void a(bkf parambkf, List<bkl> paramList) {
    if (!this.b.containsKey(parambkf)) {
      this.b.put(parambkf, paramList);
      return;
    } 
    ((List<bkl>)this.b.get(parambkf)).addAll(paramList);
  }
  
  public boolean b(bkf parambkf) {
    return this.b.containsKey(parambkf);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */