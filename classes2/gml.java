import android.content.Context;
import android.content.Intent;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

abstract class gml {
  protected Context a;
  
  protected hxo b;
  
  protected hya c;
  
  private int d;
  
  gml(Context paramContext, @hyr int paramInt) {
    this.a = paramContext;
    this.d = paramInt;
    this.c = hyb.j();
    this.b = miq.C().f().u().a();
  }
  
  abstract String a();
  
  abstract void a(@hyr int paramInt);
  
  public void a(hxy paramhxy) {
    this.c.a(this.d, paramhxy);
  }
  
  abstract String b();
  
  abstract String c();
  
  abstract String d();
  
  abstract boolean e();
  
  public boolean f() {
    return false;
  }
  
  public int g() {
    return this.d;
  }
  
  public void h() {
    this.c.a(this.a, this.d);
  }
  
  public void i() {
    this.c.b(this.a, this.d);
  }
  
  public boolean j() {
    return !this.c.a(this.d);
  }
  
  public void k() {
    Intent intent = new Intent(this.a, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */