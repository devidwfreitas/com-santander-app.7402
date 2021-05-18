import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import com.santander.app.contacorrente.domain.Conta;
import java.util.Iterator;
import java.util.LinkedList;

public class ipu implements ipq {
  private ioy a = new ioy();
  
  private ipt b;
  
  private iia c;
  
  private Activity d;
  
  private mip e;
  
  private jla f;
  
  private ils g;
  
  private Dialog h;
  
  private irm i;
  
  public ipu(Activity paramActivity, ipt paramipt) {
    this.d = paramActivity;
    this.b = paramipt;
    this.e = (mip)miq.C();
    this.c = new iib();
    this.f = new jlb();
    this.g = new ils(this.d);
    this.i = new irm();
  }
  
  private mzp[] b(ipp paramipp) {
    switch (iqb.a[paramipp.ordinal()]) {
      default:
        return null;
      case 1:
      case 2:
        return new mzp[] { mzp.RELOAD_POUPANCA };
      case 3:
      case 4:
      case 5:
        return new mzp[] { mzp.RELOAD_CARTOES, mzp.RELOAD_CARTOES_DESBLOQUEIO };
      case 6:
        break;
    } 
    return new mzp[] { mzp.RELOAD_CARTOES };
  }
  
  public void a() {
    if (this.e.f().p().l().equals("N")) {
      this.b.d();
      return;
    } 
    this.b.c();
  }
  
  public void a(Context paramContext, String paramString1, String paramString2) {
    if (paramString1 == null || paramString1.isEmpty())
      return; 
    gyy.a(paramContext, paramString1, paramString2);
  }
  
  public void a(ioy paramioy) {
    this.a = paramioy;
  }
  
  public void a(ipp paramipp) {
    if (this.h != null && this.h.isShowing())
      this.h.cancel(); 
    this.h = mxn.b(this.d);
    (new mzn()).a(b(paramipp), new iqa(this, paramipp));
  }
  
  public void a(ipr paramipr) {
    Conta conta = (new LinkedList<Conta>(miq.C().f().q().a())).getFirst();
    this.i.a(conta.getIndexConta(), new ipy(this, paramipr));
  }
  
  public void b() {
    this.c.a(new ipv(this));
  }
  
  public void b(Context paramContext, String paramString1, String paramString2) {
    if (paramString2 != null && !paramString2.isEmpty() && paramString1 != null && !paramString1.isEmpty()) {
      Iterator<gyv> iterator = gyy.a(paramContext, paramString2).iterator();
      while (true) {
        if (iterator.hasNext()) {
          gyv gyv = iterator.next();
          if (!gyv.a().toString().equals(paramString1))
            gyy.a(paramContext, gyv); 
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void b(ipr paramipr) {
    Conta conta = (new LinkedList<Conta>(miq.C().f().q().a())).getFirst();
    this.i.b(conta.getIndexConta(), new ipz(this, paramipr));
  }
  
  public void c() {
    this.f.a(new ipw(this), new jdg());
  }
  
  public void d() {
    this.f.a(new ipx(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ipu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */