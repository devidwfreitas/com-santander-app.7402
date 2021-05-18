import android.content.Context;
import android.content.Intent;
import com.santander.app.segundaviacomprovantes.presentation.ComprovanteActivity;
import com.santander.app.segundaviacomprovantes.presentation.ListarComprovantesActivity;
import com.santander.app.segundaviacomprovantes.presentation.SegundaViaActivity;
import java.util.ArrayList;
import java.util.List;

public class knh implements kme, kmm, kng {
  private ListarComprovantesActivity a;
  
  private kml b;
  
  private kmd c;
  
  private List<klx> d;
  
  private kma e;
  
  private ArrayList<gky> f;
  
  private kkx g;
  
  private klx h;
  
  public knh(ListarComprovantesActivity paramListarComprovantesActivity) {
    this.a = paramListarComprovantesActivity;
    this.b = new kmn(this);
    this.c = new kmf(this);
    this.e = new kma();
    this.h = new klx();
  }
  
  private void c(klb paramklb) {
    this.g = new kkx();
    paramklb.a(0);
    paramklb.a(this.h.f());
    klo klo = (new klp()).a(paramklb);
    kmc kmc = kmb.a(((klv)paramklb.d().get(0)).E());
    this.g.a(((klv)paramklb.d().get(0)).E());
    this.g.a(klo.a());
    this.g.l(klo.b());
    this.g.j(klo.c());
    this.g.d(klo.d());
    this.g.c(klo.e());
    this.g.b(klo.f());
    this.g.k(klo.g());
    this.g.f(kmc.b());
    Intent intent = new Intent((Context)this.a.g(), ComprovanteActivity.class);
    intent.putExtra("comprovante", this.g);
    this.a.g().startActivity(intent);
  }
  
  private void d(klb paramklb) {
    this.g = new kkx();
    paramklb.a(0);
    klo klo = (new klp()).a(paramklb);
    kmc kmc = kmb.a(((klv)paramklb.d().get(0)).E());
    paramklb.a(this.h.f());
    this.g.a(((klv)paramklb.d().get(0)).E());
    this.g.a(klo.a());
    this.g.d(klo.d());
    this.g.c(klo.e());
    this.g.b(klo.f());
    this.g.f(kmc.b());
    this.g.j(((klr)paramklb.e().get(0)).b());
    StringBuilder stringBuilder = new StringBuilder();
    for (klr klr : paramklb.e()) {
      if (klr.c().equals("I"))
        stringBuilder.append(klr.b()).append("\n"); 
    } 
    this.g.l(stringBuilder.toString());
    this.g.a(paramklb.e());
    Intent intent = new Intent((Context)this.a.g(), ComprovanteActivity.class);
    intent.putExtra("comprovante", this.g);
    this.a.g().startActivity(intent);
  }
  
  public kma a() {
    return this.e;
  }
  
  public void a(kla paramkla) {
    this.a.c();
    this.c.a(paramkla);
  }
  
  public void a(klb paramklb) {
    this.a.d();
    if (paramklb != null) {
      ((klv)paramklb.d().get(0)).E(this.a.e().a());
      if (paramklb.e() == null) {
        c(paramklb);
        return;
      } 
    } else {
      return;
    } 
    d(paramklb);
  }
  
  public void a(klu paramklu) {
    this.a.c();
    this.b.a(paramklu);
  }
  
  public void a(klx paramklx) {
    kla kla = new kla();
    kla.setAgencia(this.a.e().b());
    kla.j(this.a.e().c());
    kla.a(this.a.e().f());
    kla.b(this.a.e().g());
    kla.c(paramklx.d());
    kla.h(paramklx.l());
    kla.d(this.a.e().a());
    kla.f(paramklx.i());
    kla.e(paramklx.j());
    kla.g(paramklx.k());
    kla.i(paramklx.J());
    this.h = paramklx;
    a(kla);
  }
  
  public void a(kma paramkma) {
    this.a.d();
    this.d = new ArrayList<klx>();
    this.d.addAll(paramkma.c());
    this.a.a(this.d, "");
    this.e = paramkma;
  }
  
  public void b() {
    Intent intent = new Intent((Context)this.a.g(), SegundaViaActivity.class);
    this.a.g().startActivity(intent);
  }
  
  public void b(klb paramklb) {
    this.a.d();
    if (paramklb != null) {
      if (paramklb.getConfirmacao() != null) {
        if (paramklb.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.a.a(paramklb.getMensagemErro());
          return;
        } 
        this.a.b();
        return;
      } 
      this.a.b();
      return;
    } 
    this.a.b();
  }
  
  public void b(kma paramkma) {
    this.a.d();
    if (paramkma != null) {
      if (paramkma.getConfirmacao() != null) {
        if (paramkma.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.a.a(paramkma.getMensagemErro());
          this.d = null;
          this.a.a(this.d, paramkma.getMensagemErro());
          return;
        } 
        this.a.b();
        return;
      } 
      this.a.b();
      return;
    } 
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */