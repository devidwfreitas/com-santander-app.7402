import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class mvm implements mvl {
  @Nullable
  private muq a;
  
  private msc b;
  
  private int c;
  
  public mvm(@NonNull muq parammuq) {
    this.a = parammuq;
    this.b = mse.l();
  }
  
  private void a(String paramString) {
    if (this.a == null)
      return; 
    this.a.d();
    this.a.a(paramString);
  }
  
  private void b() {
    if (this.a == null)
      return; 
    this.a.b(2131299166);
    this.b.a(new mvn(this));
  }
  
  private void c() {
    if (this.a == null)
      return; 
    this.a.b(2131299155);
    this.b.b(new mvp(this));
  }
  
  private void d() {
    if (this.a == null)
      return; 
    if (this.b.j()) {
      this.a.b(2131299155);
    } else {
      this.a.b(2131299165);
    } 
    this.b.a(new mvr(this));
  }
  
  private void e() {
    if (this.a == null)
      return; 
    this.a.a("Opçõas inválida", null);
  }
  
  public void a() {
    this.a = null;
  }
  
  public void a(Bundle paramBundle) {
    if (this.a == null)
      return; 
    int i = paramBundle.getInt("EXTRA_TRANSFER_STEP");
    if (i == 1) {
      this.c = i;
      b();
      return;
    } 
    if (i == 3) {
      this.c = i;
      c();
      return;
    } 
    if (i == 2) {
      mwm.a(this.b.a());
      d();
      return;
    } 
    e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mvm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */