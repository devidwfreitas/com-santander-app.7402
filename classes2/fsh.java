import android.app.Activity;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;

public class fsh implements fsi {
  private mip a = (mip)miq.C();
  
  private Activity b;
  
  private String c;
  
  private String d;
  
  private final String e = "avaliacaoApp";
  
  private SharedPreferences f;
  
  private String g = "transacaoKey";
  
  private final String h = "versionAppKey";
  
  private final String i = "validacaoCPFKey";
  
  private final String j = "avalieMaisTarde";
  
  private final String k = "avalieAgora";
  
  private final String l = "naoObrigado";
  
  private String m;
  
  private String n;
  
  private fsj o;
  
  public fsh(Activity paramActivity, fsj paramfsj) {
    this.b = paramActivity;
    this.o = paramfsj;
    this.f = paramActivity.getSharedPreferences("avaliacaoApp", 0);
    try {
      this.n = (paramActivity.getPackageManager().getPackageInfo(paramActivity.getPackageName(), 0)).versionName;
      this.d = paramActivity.getPackageName();
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("Error", nameNotFoundException.toString());
    } 
    if (this.f.getString("versionAppKey", "").equals(""))
      e(); 
    this.c = "https://play.google.com/store/apps/details?id=" + this.d;
  }
  
  private void e() {
    SharedPreferences.Editor editor = this.f.edit();
    editor.putString("versionAppKey", this.n);
    editor.commit();
  }
  
  private void f() {
    if (this.f.contains("validacaoCPFKey")) {
      if (nag.b(this.f.getString("validacaoCPFKey", "")).equals(this.a.f().k())) {
        g();
        return;
      } 
      i();
      h();
      return;
    } 
    h();
  }
  
  private void g() {
    boolean bool = this.f.getBoolean(this.g, false);
    String str = this.f.getString(this.m, "");
    if (str.equals("")) {
      if (bool)
        this.o.a(); 
    } else if (str.equals("avalieMaisTarde")) {
      if (this.a.f().x()) {
        this.a.f().c(false);
        this.o.a();
      } 
    } else if (bool && (str.equals("avalieAgora") || str.equals("naoObrigado")) && !this.f.getString("versionAppKey", "").equals(this.n)) {
      e();
      this.o.a();
    } 
    SharedPreferences.Editor editor = this.f.edit();
    editor.putBoolean(this.g, false);
    editor.commit();
  }
  
  private void h() {
    String str = this.a.f().k();
    this.f = this.b.getSharedPreferences("avaliacaoApp", 0);
    SharedPreferences.Editor editor = this.f.edit();
    editor.putString("validacaoCPFKey", nag.a(str));
    editor.commit();
  }
  
  private void i() {
    SharedPreferences.Editor editor = this.f.edit();
    editor.putBoolean(this.g, false);
    editor.putString(this.m, "");
    editor.commit();
    this.a.f().c(false);
  }
  
  public void a() {
    f();
  }
  
  public void b() {
    SharedPreferences.Editor editor = this.f.edit();
    editor.putString(this.m, "avalieAgora");
    editor.putBoolean(this.g, false);
    editor.commit();
    this.o.b();
    this.o.a(this.c);
  }
  
  public void c() {
    SharedPreferences.Editor editor = this.f.edit();
    editor.putString(this.m, "avalieMaisTarde");
    editor.putBoolean(this.g, false);
    editor.commit();
    this.a.f().c(false);
    this.o.b();
  }
  
  public void d() {
    SharedPreferences.Editor editor = this.f.edit();
    editor.putString(this.m, "naoObrigado");
    editor.putBoolean(this.g, false);
    editor.commit();
    this.o.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */