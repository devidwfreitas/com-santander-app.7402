import android.app.Activity;
import java.util.List;

public class ghi implements ghd, ghj {
  private ghh a;
  
  private Activity b;
  
  private ghc c;
  
  public ghi(ghh paramghh) {
    this.a = paramghh;
    this.b = (Activity)paramghh;
    this.c = new ggy(this.b, this);
    a();
    b();
  }
  
  public void a() {
    this.c.a();
  }
  
  public void a(ghu paramghu) {
    this.a.a(paramghu);
  }
  
  public void a(ghu paramghu, ggx paramggx) {
    if (paramggx.b() == ggw.PERDA.getId()) {
      frq.d("Cartoes_Bloqueio_OpcoesMotivo", "Perda");
    } else {
      frq.d("Cartoes_Bloqueio_OpcoesMotivo", "Roubo");
    } 
    this.c.a(paramghu, paramggx);
  }
  
  public void a(gvb paramgvb) {
    this.a.a(paramgvb);
  }
  
  public void a(String paramString) {
    this.a.b(paramString);
  }
  
  public void a(List<ghu> paramList) {
    this.a.a(paramList);
    this.a.a(paramList.get(0));
  }
  
  public void b() {
    this.c.b();
  }
  
  public void b(gvb paramgvb) {
    this.a.a(paramgvb);
  }
  
  public void b(List<ggx> paramList) {
    this.a.b(paramList);
  }
  
  public void c() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */