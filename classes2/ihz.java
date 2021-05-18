import android.app.Activity;
import java.util.List;

public class ihz implements igz, ihy {
  private Activity a;
  
  private ihn b;
  
  private igy c;
  
  public ihz(ihn paramihn) {
    this.b = paramihn;
    this.a = (Activity)paramihn;
    this.c = new iha(this.a, this);
    d();
  }
  
  private boolean b(List<igl> paramList) {
    return (paramList.size() == 1);
  }
  
  public void a() {
    this.b.a("Atenção", "Desculpe, não conseguimos recuperar suas propostas neste momento. Tente Novamente mais tarde.");
  }
  
  public void a(List<igl> paramList) {
    if (b(paramList)) {
      this.b.a(paramList.get(0));
      return;
    } 
    this.b.a(paramList);
  }
  
  public void b() {}
  
  public void c() {}
  
  public void d() {
    this.c.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */