import android.content.Context;
import android.content.Intent;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class kfm implements kdy, kfl {
  private kej a;
  
  private kdx b;
  
  private mip c;
  
  private gvb d;
  
  private ArrayList<gky> e;
  
  private kdg f;
  
  public kfm(kej paramkej) {
    this.a = paramkej;
    this.b = new kdz(this);
    this.c = (mip)miq.C();
    this.f = paramkej.d();
  }
  
  private ArrayList<gky> c(kdk paramkdk) {
    this.e = new ArrayList<gky>();
    gky gky2 = new gky("Plano:", this.f.f());
    this.e.add(gky2);
    gky2 = new gky("Certificado:", this.f.g());
    this.e.add(gky2);
    if (paramkdk != null && paramkdk.c() != null && paramkdk.c().c() != null) {
      gky2 = new gky("Regime de tributação", paramkdk.c().c());
      this.e.add(gky2);
    } 
    gky2 = new gky("Valor:", this.f.b());
    this.e.add(gky2);
    if (paramkdk != null && paramkdk.c() != null && paramkdk.c().d() != null) {
      gky gky = new gky("Data do aporte:", paramkdk.c().d());
      this.e.add(gky);
      return this.e;
    } 
    gky gky1 = new gky("Data do aporte:", d());
    this.e.add(gky1);
    return this.e;
  }
  
  private void d(kdk paramkdk) {
    this.d = new gvb();
    this.d.j("prev.Share");
    this.d.b(c(paramkdk));
    if (paramkdk.getDataHoraTransacao() != null) {
      this.d.g(this.a.j().getString(2131297849) + " " + paramkdk.getDataHoraTransacao());
      this.d.f(paramkdk.getDataHoraTransacao());
    } else {
      this.d.g(this.a.j().getString(2131297849) + " " + e());
      this.d.f(e());
    } 
    if (paramkdk.getAutenticacao() != null)
      this.d.e(paramkdk.getAutenticacao()); 
    this.d.d(false);
    this.d.h("");
    this.d.c(this.a.j().getString(2131298997));
    this.d.d(this.a.j().getString(2131298037));
    this.d.a(gvu.COMPROVANTE_PREVIDENCIA);
    Intent intent = new Intent((Context)this.a.j(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", this.d);
    this.a.j().startActivity(intent);
  }
  
  public void a() {
    this.a.c();
  }
  
  public void a(String paramString) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            this.a.o().setText(2131297871);
            this.a.a(2131297873);
            return;
          case 1:
            break;
        } 
        break;
      case 48:
        if (paramString.equals("0"))
          b = 0; 
      case 49:
        if (paramString.equals("1"))
          b = 1; 
    } 
    this.a.o().setText(2131297884);
    this.a.a(2131297874);
  }
  
  public void a(kdk paramkdk) {
    this.a.h();
    if (paramkdk != null && paramkdk.getConfirmacao().equals("OK"))
      d(paramkdk); 
  }
  
  public void b() {
    this.a.g();
    kdl kdl = new kdl();
    kdl.setTokenTransacao(this.c.f().m());
    kdl.setTokenSessao(this.c.j());
    kdl.setConnUuid(this.c.i());
    kdl.setAgencia(this.f.c());
    kdl.setConta(this.f.d());
    kdl.a(this.f.g());
    kdl.b(naj.m(this.f.b().replace("R$", "").replace("$", "")));
    this.b.a(kdl);
  }
  
  public void b(kdk paramkdk) {
    this.a.h();
    if (paramkdk != null) {
      if (paramkdk.getConfirmacao() != null) {
        if (paramkdk.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.a.a(paramkdk.getMensagemErro());
          return;
        } 
        this.a.i();
        return;
      } 
      this.a.i();
      return;
    } 
    this.a.i();
  }
  
  public void c() {
    if (this.a.k().isChecked())
      this.a.f(); 
  }
  
  public String d() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    return simpleDateFormat.format(calendar.getTime());
  }
  
  public String e() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    Date date = new Date();
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    return simpleDateFormat.format(calendar.getTime());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */