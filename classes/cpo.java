import java.util.ArrayList;
import java.util.List;

public final class cpo {
  private List<cpy<?>> a = new ArrayList<cpy<?>>();
  
  private cpt b;
  
  public cpo(cpt paramcpt) {
    this.b = paramcpt;
  }
  
  public cpm a() {
    return new cpm(this.a, this.b, null);
  }
  
  public <R extends cqg> cpq<R> a(cpy<R> paramcpy) {
    cpq<cqg> cpq = new cpq<cqg>(this.a.size());
    this.a.add(paramcpy);
    return (cpq)cpq;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */