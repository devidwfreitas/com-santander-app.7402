import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;

class mry implements mru {
  private static final String a = "LoginInteractorImpl";
  
  private Activity b;
  
  private itn c;
  
  private ieu d;
  
  @Nullable
  private iex e;
  
  private boolean f;
  
  private boolean g;
  
  mry(Activity paramActivity) {
    this.b = paramActivity;
    this.c = new itp(paramActivity);
    this.d = new ieu((Context)paramActivity);
  }
  
  public void a(String paramString, mrw parammrw) {
    if (TextUtils.isEmpty(paramString)) {
      parammrw.b(new Exception("Informe a senha"));
      return;
    } 
    this.c.a(new msa(this, parammrw), paramString);
  }
  
  public void a(String paramString, mrx parammrx) {
    try {
      paramString = paramString.replaceAll("[^0-9*]", "");
      fnx fnx = new fnx();
      fnx.a(paramString);
      (new fnu<fnp>(fnp.class)).a((Context)this.b, null, fnx, new mrz(this, paramString, parammrx));
      return;
    } catch (Exception exception) {
      parammrx.a(exception);
      return;
    } 
  }
  
  public void a(mrv parammrv) {
    if (this.e == null)
      return; 
    this.e.a(new msb(this, parammrv));
  }
  
  public void a(mrx parammrx) {
    if (this.g) {
      parammrx.a();
      return;
    } 
    a(d(), parammrx);
  }
  
  public boolean a() {
    return !TextUtils.isEmpty(b());
  }
  
  public String b() {
    try {
      String str2 = nag.b(this.c.b());
      String str1 = str2;
      if (str2 == null)
        str1 = ""; 
      return str1;
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String c() {
    return (new StringBuilder(b())).replace(4, 11, "***.***").toString();
  }
  
  public String d() {
    return b().replaceAll("[^0-9*]", "");
  }
  
  public boolean e() {
    try {
      boolean bool;
      String str = b();
      if (this.d.b() && this.d.a(str)) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool)
        this.e = new iey(this.b); 
      return bool;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return false;
    } 
  }
  
  public boolean f() {
    return this.f;
  }
  
  public boolean g() {
    return mzr.a();
  }
  
  public void h() {
    if (this.e == null)
      return; 
    this.e.a();
  }
  
  public void i() {
    if (this.e == null)
      return; 
    this.e.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */