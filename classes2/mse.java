import android.app.Activity;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class mse implements msc {
  private static mse a;
  
  private mvv b = new mvy();
  
  private mrq c = new mrs();
  
  private mru d;
  
  private msi e;
  
  private mrp f;
  
  private List<mro> g;
  
  private mse(Activity paramActivity) {
    this.d = new mry(paramActivity);
    this.e = new msl();
  }
  
  public static msc a(Activity paramActivity) {
    mse mse1 = new mse(paramActivity);
    a = mse1;
    return mse1;
  }
  
  private void a(msd parammsd) {
    this.b.a(new msh(this, parammsd));
  }
  
  private boolean a(mrp parammrp) {
    return (parammrp != null && (!TextUtils.isEmpty(parammrp.d()) || !TextUtils.isEmpty(parammrp.c()) || !TextUtils.isEmpty(parammrp.e()) || !TextUtils.isEmpty(parammrp.i()) || !TextUtils.isEmpty(parammrp.f()) || !TextUtils.isEmpty(parammrp.g())));
  }
  
  private void b(msd parammsd) {
    if (a(this.f)) {
      boolean bool = b(this.f);
      parammsd.a(this.f, bool);
      return;
    } 
    parammsd.a();
  }
  
  private boolean b(mrp parammrp) {
    boolean bool;
    if (!TextUtils.isEmpty(parammrp.d()) && !TextUtils.isEmpty(parammrp.c()) && !TextUtils.isEmpty(parammrp.e()) && !TextUtils.isEmpty(parammrp.i())) {
      bool = true;
    } else {
      bool = false;
    } 
    return !parammrp.a() ? ((bool && !TextUtils.isEmpty(parammrp.f()) && !TextUtils.isEmpty(parammrp.g()))) : bool;
  }
  
  public static msc l() {
    if (a == null)
      throw new RuntimeException("Instance null"); 
    return a;
  }
  
  public mrp a() {
    return this.f;
  }
  
  public void a(int paramInt) {
    this.c.a(paramInt);
  }
  
  public void a(String paramString, mrw parammrw) {
    this.d.a(paramString, parammrw);
  }
  
  public void a(String paramString, mrx parammrx) {
    if (paramString == null) {
      this.d.a(parammrx);
      return;
    } 
    this.d.a(paramString, parammrx);
  }
  
  public void a(String paramString, msd parammsd) {
    this.c.a(new msf(this, parammsd, paramString));
  }
  
  public void a(mro parammro, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    this.f.a(parammro).a(paramString1).b(paramString2).d(paramString3).c(paramString4).e(paramString5);
  }
  
  public void a(mrv parammrv) {
    this.d.a(parammrv);
  }
  
  public void a(msj parammsj) {
    this.e.a(parammsj);
  }
  
  public void a(msk parammsk) {
    this.e.a(this.f, parammsk);
  }
  
  public List<mro> b() {
    if (this.g == null)
      this.g = new ArrayList<mro>(); 
    return this.g;
  }
  
  public void b(msk parammsk) {
    this.e.b(this.f, parammsk);
  }
  
  public boolean c() {
    boolean bool = this.c.b();
    if (bool)
      this.c.a(); 
    return bool;
  }
  
  public boolean d() {
    return this.d.a();
  }
  
  public String e() {
    return this.d.c();
  }
  
  public boolean f() {
    return this.d.e();
  }
  
  public boolean g() {
    return this.d.f();
  }
  
  public void h() {
    this.d.h();
  }
  
  public void i() {
    this.d.i();
  }
  
  public boolean j() {
    return this.e.a();
  }
  
  public mrk k() {
    return this.e.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */