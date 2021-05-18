import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;

public class gbl implements gbj {
  private gdk a;
  
  private gbk b;
  
  private gds c;
  
  private miq d;
  
  public gbl(gdk paramgdk, Activity paramActivity) {
    this.a = paramgdk;
    this.b = (gbk)paramgdk;
    this.c = new gdt(paramActivity);
    this.d = miq.C();
    a();
  }
  
  public void a() {
    if (this.a == null)
      return; 
    ArrayList<Conta> arrayList = new ArrayList();
    if (this.d.f().q().a() != null)
      arrayList.addAll(this.d.f().q().a()); 
    this.a.b(arrayList);
  }
  
  public void a(gaz paramgaz1, gaz paramgaz2, String paramString1, String paramString2, String paramString3) {
    gao gao = new gao();
    gao.setConnUuid(this.d.i());
    gao.setTokenSessao(this.d.j());
    gao.setTokenTransacao(this.d.f().m());
    if (paramgaz1.b().equals(gba.real)) {
      gao.e(paramgaz1.d());
      gao.b(paramgaz2.d());
    } else {
      gao.b(paramgaz1.d());
      gao.e(null);
    } 
    gao.a(paramString2);
    gao.c(paramString3);
    gao.d(paramString1);
    this.c.a(new gbn(this), gao);
  }
  
  public void b() {
    gat gat = new gat();
    gat.setTokenTransacao(this.d.f().m());
    gat.setTokenSessao(this.d.j());
    gat.setConnUuid(this.d.i());
    if (this.c != null)
      this.c.a(new gbm(this), gat); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */