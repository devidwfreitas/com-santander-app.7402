import com.santander.app.contacorrente.domain.Conta;
import java.util.List;
import java.util.Vector;

public class kjh {
  private kjo a;
  
  private khx b;
  
  private final String c = "Ocorreu um erro ao carregar as informações";
  
  private Vector<fqa> d;
  
  private List<Conta> e;
  
  private kkd f;
  
  public kjh(kjo paramkjo) {
    this.a = paramkjo;
    this.f = new kkd();
    this.b = miq.C().f().c();
  }
  
  public fvf a(int paramInt) {
    Vector<fvf> vector = this.f.b();
    fvf fvf = null;
    if (vector != null)
      fvf = vector.get(paramInt); 
    return fvf;
  }
  
  public void a() {
    this.f.a(new kji(this));
  }
  
  public void a(String paramString) {
    Vector<fvf> vector = this.f.b();
    for (int i = 0;; i++) {
      if (i < vector.size()) {
        if (((fvf)vector.get(i)).d().trim().equalsIgnoreCase(paramString.trim())) {
          this.a.a(i);
          return;
        } 
      } else {
        return;
      } 
    } 
  }
  
  public void a(String paramString, int paramInt) {
    if (this.b != null && this.b.b() != null)
      this.d = ((khs)this.b.c().get(paramInt)).a(); 
    if (this.d == null) {
      this.a.a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    paramInt = 0;
    while (true) {
      if (paramInt < this.d.size()) {
        if (((fqa)this.d.get(paramInt)).a().equalsIgnoreCase(naj.f(paramString))) {
          this.a.b(paramInt);
          return;
        } 
        paramInt++;
        continue;
      } 
      return;
    } 
  }
  
  public void a(kid paramkid) {
    paramkid.e(miq.C().i());
    paramkid.A(miq.C().j());
    paramkid.B(miq.C().f().m());
    (new kke(paramkid, new kjj(this))).execute((Object[])new Void[0]);
  }
  
  public fuu b(int paramInt) {
    fuu fuu = null;
    if (this.e != null)
      fuu = (fuu)this.e.get(paramInt); 
    return fuu;
  }
  
  public void b() {
    this.a.b(this.f.a());
  }
  
  public void c(int paramInt) {
    if (this.b != null && this.b.b() != null)
      this.d = ((khs)this.b.c().get(paramInt)).a(); 
    if (this.d == null) {
      this.a.a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    this.a.a(this.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */