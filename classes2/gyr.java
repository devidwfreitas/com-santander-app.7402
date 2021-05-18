import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

public class gyr implements gyk, gyq {
  private Activity a;
  
  private gyp b;
  
  private gyj c;
  
  private mip d;
  
  public gyr(gyp paramgyp) {
    this.a = (Activity)paramgyp;
    this.b = paramgyp;
    this.c = new gyl(this, this.a);
    this.d = (mip)miq.C();
  }
  
  private void b() {
    Intent intent = new Intent((Context)this.a, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    this.a.startActivity(intent);
  }
  
  private void f(gxa paramgxa) {
    gyi gyi = this.c.a();
    switch (a()) {
      default:
        return;
      case 0:
        if (gyi.c()) {
          this.c.a(paramgxa.a(), true);
          return;
        } 
        this.c.a(paramgxa.a(), false);
        return;
      case 1:
        break;
    } 
    this.c.a(paramgxa.a(), true);
  }
  
  public int a() {
    byte b = -1;
    gyi gyi = this.c.a();
    return gyi.b().equalsIgnoreCase(miq.C().f().k()) ? 0 : (!gyi.b().equalsIgnoreCase(miq.C().f().k()) ? 1 : b);
  }
  
  public void a(gxa paramgxa) {
    Intent intent;
    if (paramgxa.d() != null) {
      gws gws = gws.valueOf(paramgxa.d());
      if (this.d.f().i().equals("CL")) {
        intent = new Intent((Context)this.a, Poupanca_posicaoconsolidadaActivity.class);
        intent.setFlags(67108864);
        this.b.a(intent);
        return;
      } 
    } else {
      return;
    } 
    switch (gys.a[intent.ordinal()]) {
      default:
        return;
      case 1:
        jcw.c(this.a, "CDB_RECOMPENSA");
        return;
      case 2:
        break;
    } 
    jcw.c(this.a, "POUPANCA");
  }
  
  public void a(gxe paramgxe) {}
  
  public void b(gxa paramgxa) {
    if (!mzr.a()) {
      this.c.a(paramgxa);
      return;
    } 
    b();
  }
  
  public void c(gxa paramgxa) {
    if (!this.d.f().d()) {
      this.d.f().a(true);
      this.c.b(paramgxa);
    } 
  }
  
  public void d(gxa paramgxa) {
    gyi gyi = this.c.a();
    f(paramgxa);
    this.b.a(gyi.c(), paramgxa);
  }
  
  public void e(gxa paramgxa) {
    gyi gyi = this.c.a();
    if (gyi.b().equalsIgnoreCase("") || gyi.a().equalsIgnoreCase("")) {
      this.c.a(paramgxa.a(), false);
      return;
    } 
    if (gyi.b().equalsIgnoreCase(miq.C().f().k()) && gyi.a().equalsIgnoreCase(paramgxa.a()) && gyi.c()) {
      this.c.a(paramgxa.a(), false);
      return;
    } 
    if (!gyi.b().equalsIgnoreCase(miq.C().f().k())) {
      this.c.a(paramgxa.a(), true);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */