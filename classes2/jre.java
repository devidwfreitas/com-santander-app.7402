import android.app.Activity;
import android.content.Context;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.List;

public class jre implements jrd {
  private Context a;
  
  private jra b;
  
  private jqe c;
  
  private mip d = (mip)miq.C();
  
  public jre(Context paramContext, jra paramjra) {
    this.a = paramContext;
    this.b = paramjra;
    this.c = new jqf(this, (Activity)paramContext);
  }
  
  private boolean d() {
    return this.d.f().p().l().equals("S");
  }
  
  public List<Conta> a(List<Conta> paramList) {
    ArrayList<Conta> arrayList = new ArrayList();
    for (Conta conta : paramList) {
      if (!conta.toString().equals(naq.d(this.d.f().f(), this.d.f().g())))
        arrayList.add(conta); 
    } 
    return arrayList;
  }
  
  public void a() {
    this.b.a();
  }
  
  public void a(Conta paramConta) {
    this.c.a(paramConta.getAgencia(), paramConta.getCuenta());
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4) {
    if (paramString1 == null || paramString1.isEmpty() || !paramString1.equals("0")) {
      jra jra1 = this.b;
      if (paramString2 == null)
        paramString2 = ""; 
      jra1.a(false, paramString2);
      return;
    } 
    mzn mzn = new mzn();
    mzp mzp = mzp.RELOAD_CONTA;
    jrf jrf = new jrf(this, paramString3, paramString4);
    mzn.a(new mzp[] { mzp }, jrf);
  }
  
  public void a(boolean paramBoolean) {
    this.b.a(paramBoolean);
  }
  
  public void b() {
    if (d())
      return; 
    this.b.b();
  }
  
  public void c() {
    if (d()) {
      this.b.c();
      return;
    } 
    this.b.d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */