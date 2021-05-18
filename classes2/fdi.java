import java.util.ArrayList;
import java.util.List;

public class fdi implements eqp {
  private eqk a;
  
  private List<eqo> b = new ArrayList<eqo>();
  
  public fdi(eqk parameqk) {
    this.a = parameqk;
  }
  
  protected eqk a() {
    return this.a;
  }
  
  protected eqm a(epw paramepw) {
    this.b.clear();
    try {
      if (this.a instanceof eqe) {
        eqm = ((eqe)this.a).b(paramepw);
        return eqm;
      } 
      eqm eqm = this.a.a((epw)eqm);
      return eqm;
    } catch (Exception exception) {
      return null;
    } finally {
      this.a.a();
    } 
  }
  
  public eqm a(eqd parameqd) {
    return a(b(parameqd));
  }
  
  public void a(eqo parameqo) {
    this.b.add(parameqo);
  }
  
  protected epw b(eqd parameqd) {
    return new epw(new eub(parameqd));
  }
  
  public List<eqo> b() {
    return new ArrayList<eqo>(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */