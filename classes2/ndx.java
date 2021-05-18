import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ndx implements ndw {
  private ndb a;
  
  private nbf b;
  
  private nbo c;
  
  private final int d = 4;
  
  private final String e = "*";
  
  public ndx(ndb paramndb, Fragment paramFragment) {
    this.a = paramndb;
    this.b = new nbg(this, paramFragment);
    this.c = new nbp(this, paramFragment);
  }
  
  public void a() {
    this.b.a();
  }
  
  public void a(@StringRes int paramInt) {
    this.a.a(paramInt);
  }
  
  public void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, mip parammip) {
    mwx mwx = parammip.f().y().b();
    ive ive = parammip.f().y().c();
    if (!parammip.r()) {
      if (ive != null && ive.a() != null) {
        this.a.b(paramLayoutInflater, paramViewGroup);
        return;
      } 
      if (mwx != null) {
        this.a.a(paramLayoutInflater, paramViewGroup);
        return;
      } 
      return;
    } 
    if (ive != null && ive.a() != null) {
      this.a.d(paramLayoutInflater, paramViewGroup);
      return;
    } 
    if (mwx != null) {
      this.a.c(paramLayoutInflater, paramViewGroup);
      return;
    } 
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.a.a(paramOnClickListener);
  }
  
  public void a(ftz paramftz) {
    this.a.a(paramftz);
  }
  
  public void a(Integer paramInteger) {
    this.a.a(paramInteger);
  }
  
  public void a(String paramString) {
    this.a.a(paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    if (mzv.a(paramString1, 4)) {
      paramString1 = paramString1 + "*";
      this.a.c(paramString1);
      this.b.a(paramString2);
      if (paramString1.length() == 4)
        this.a.a(true); 
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.a.a(paramBoolean);
  }
  
  public void a(String[] paramArrayOfString) {
    this.a.a(paramArrayOfString);
  }
  
  public void b() {
    this.a.d();
  }
  
  public void b(View.OnClickListener paramOnClickListener) {
    this.a.b(paramOnClickListener);
  }
  
  public void b(String paramString) {
    this.a.b(paramString);
  }
  
  public void c() {
    this.a.e();
  }
  
  public void c(View.OnClickListener paramOnClickListener) {
    this.a.c(paramOnClickListener);
  }
  
  public void c(String paramString) {
    this.a.c(paramString);
  }
  
  public void d() {
    this.a.f();
  }
  
  public void e() {
    this.a.g();
  }
  
  public void f() {
    this.a.c();
  }
  
  public void g() {
    this.c.a();
  }
  
  public void h() {
    this.a.h();
  }
  
  public void i() {
    this.b.b();
  }
  
  public void j() {
    this.c.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */