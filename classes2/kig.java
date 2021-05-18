import com.santander.app.contacorrente.domain.Conta;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class kig {
  private khx a = miq.C().f().c();
  
  private final String b = "Ocorreu um erro ao carregar as informações";
  
  private Vector<fqa> c;
  
  private Vector<fos> d;
  
  private Vector<fvf> e;
  
  private kiz f = new kiz();
  
  private kip g;
  
  private List<Conta> h;
  
  public kig(kip paramkip) {
    this.g = paramkip;
  }
  
  private gkv<kic> e() {
    return new kij(this);
  }
  
  private void f() {
    if (this.a != null && this.a.b() != null) {
      ArrayList<khs> arrayList = new ArrayList();
      for (fvf fvf : this.a.b()) {
        Vector<fqa> vector = new Vector();
        khs khs = new khs();
        for (String str : fvf.f().split("\\|")) {
          if (Integer.parseInt(str) > 0) {
            fqa fqa = new fqa();
            fqa.a(naj.f(str));
            vector.add(fqa);
          } 
        } 
        khs.a(vector);
        arrayList.add(khs);
        this.g.a(vector);
      } 
      this.a.a(arrayList);
      miq.C().f().a(this.a);
    } 
  }
  
  private Vector<fos> g() {
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    fos fos = new fos();
    fos.a("RECARREGAR HOJE");
    fos.b(simpleDateFormat.format(new Date()));
    vector.add(fos);
    fos = new fos();
    fos.a("AGENDAR");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    fos.b(simpleDateFormat.format(calendar.getTime()));
    fos.a(fot.PICKER);
    vector.add(fos);
    this.a.c(vector);
    miq.C().f().a(this.a);
    return vector;
  }
  
  public void a() {
    this.f.a(new kih(this));
  }
  
  public void a(int paramInt) {
    if (this.a != null && this.a.b() != null)
      this.c = ((khs)this.a.c().get(paramInt)).a(); 
    if (this.c == null) {
      this.g.a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    this.g.a(this.c);
  }
  
  public void a(khv paramkhv) {
    this.f.a(paramkhv);
  }
  
  public void a(kid paramkid) {
    paramkid.e(miq.C().i());
    paramkid.A(miq.C().j());
    paramkid.B(miq.C().f().m());
    (new kjc(paramkid, e())).execute((Object[])new Void[0]);
  }
  
  public fvf b(int paramInt) {
    fvf fvf = null;
    if (this.e != null)
      fvf = this.e.get(paramInt); 
    return fvf;
  }
  
  public void b() {
    if (this.a != null && this.a.e() != null) {
      this.d = this.a.e();
    } else {
      this.d = g();
    } 
    if (this.d == null) {
      this.g.a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    this.g.b(this.d);
  }
  
  public fuu c(int paramInt) {
    fuu fuu = null;
    if (this.h != null)
      fuu = (fuu)this.h.get(paramInt); 
    return fuu;
  }
  
  public void c() {
    this.f.b(new kii(this));
  }
  
  public fos d(int paramInt) {
    fos fos = null;
    if (this.d != null)
      fos = this.d.get(paramInt); 
    return fos;
  }
  
  public khv d() {
    return this.f.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */