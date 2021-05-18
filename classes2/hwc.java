import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AlertDialog;
import android.text.Spanned;
import android.text.style.StyleSpan;

public class hwc implements hwb {
  private static final int c = 1;
  
  private static final int d = 2;
  
  @Nullable
  private hvv a;
  
  private huz b;
  
  private int e;
  
  private Spanned f;
  
  private hxh g;
  
  private boolean h;
  
  public hwc(@NonNull hvv paramhvv) {
    this.a = paramhvv;
    this.b = new hve();
    this.g = hxh.h();
  }
  
  private void b(boolean paramBoolean) {
    if (this.a == null)
      return; 
    this.a.c();
    this.b.a(paramBoolean, new hwd(this));
    hxi.b(this.b.a(), paramBoolean);
  }
  
  private void e() {
    if (this.a == null)
      return; 
    this.a.c();
    this.b.a(new hwf(this));
  }
  
  private int f() {
    hxn hxn = this.b.a();
    return !hxn.s() ? (hxn.a() ? 2131297036 : 2131297037) : 2131298469;
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.e = 1;
    if (this.b.a().s()) {
      this.a.g();
    } else {
      this.a.h();
    } 
    e();
    this.g.b();
  }
  
  public void a(Context paramContext) {
    if (this.a == null)
      return; 
    if (this.e == 2) {
      b(true);
      this.e = 1;
      this.a.a();
      this.a.a(f());
      return;
    } 
    AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle((CharSequence)new bfj(paramContext.getString(2131298987), new StyleSpan(1))).setMessage((CharSequence)this.f).setNegativeButton(2131298899, new hwi(this)).setPositiveButton(2131298898, new hwh(this)).create();
    alertDialog.setOnShowListener(new hwj(this, paramContext));
    alertDialog.show();
  }
  
  public void a(@huw String paramString) {
    if (this.a == null)
      return; 
    if (paramString.equalsIgnoreCase("cpu_cet")) {
      this.a.b(this.b.a());
    } else {
      this.a.c();
      this.b.a(paramString, new hwg(this));
    } 
    hxi.c(this.b.a(), paramString);
  }
  
  public void a(boolean paramBoolean) {
    this.h = paramBoolean;
    hxi.a(this.b.a(), this.h);
  }
  
  public void b() {
    this.a = null;
  }
  
  public void c() {
    if (this.a == null)
      return; 
    if (this.h) {
      this.g.a();
      this.a.i();
      hxi.e(this.b.a());
      return;
    } 
    this.a.f();
  }
  
  public void d() {
    if (this.a == null)
      return; 
    this.a.c();
    this.b.a(new hwe(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */