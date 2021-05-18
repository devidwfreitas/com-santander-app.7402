import java.util.ArrayList;

public class kln implements klo {
  private gky a = null;
  
  private ArrayList<gky> b = new ArrayList<gky>();
  
  private klb c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public kln(klb paramklb) {
    this.c = paramklb;
    paramklb.a(0);
  }
  
  public ArrayList<gky> a() {
    b("COMPROVANTE DE TRANSFERÊNCIA\n(2ª VIA)");
    a("Transação exclusiva para Transferência de Valores entre contas Santander.");
    c("Comprovante de Transferência (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    d(((klv)this.c.d().get(this.c.b())).k());
    e(((klv)this.c.d().get(this.c.b())).y());
    f(((klv)this.c.d().get(this.c.b())).l());
    this.a = new gky("CONTA CORRENTE DE ORIGEM:", "");
    this.b.add(this.a);
    if (((klv)this.c.d().get(this.c.b())).u() != null) {
      this.a = new gky("Agência:", ((klv)this.c.d().get(this.c.b())).u());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).x() != null) {
      this.a = new gky("Conta:", naq.h(((klv)this.c.d().get(this.c.b())).x()));
      this.b.add(this.a);
    } 
    this.a = new gky("CONTA CORRENTE DE DESTINO:", "");
    this.b.add(this.a);
    if (((klv)this.c.d().get(this.c.b())).t() != null) {
      this.a = new gky("Agência:", ((klv)this.c.d().get(this.c.b())).t());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).w() != null) {
      this.a = new gky("Conta:", naq.h(((klv)this.c.d().get(this.c.b())).w()));
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).z() != null) {
      this.a = new gky("Favorecido:", ((klv)this.c.d().get(this.c.b())).z());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).s() != null) {
      this.a = new gky("Valor:", naj.f(((klv)this.c.d().get(this.c.b())).s()));
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).A() != null) {
      this.a = new gky("Tipo de Transferência:", ((klv)this.c.d().get(this.c.b())).A());
      this.a.a(true);
      this.b.add(this.a);
    } 
    return this.b;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public String b() {
    return this.d;
  }
  
  public void b(String paramString) {
    this.e = paramString;
  }
  
  public String c() {
    return this.e;
  }
  
  public void c(String paramString) {
    this.f = paramString;
  }
  
  public String d() {
    return this.f;
  }
  
  public void d(String paramString) {
    this.g = paramString;
  }
  
  public String e() {
    return this.g;
  }
  
  public void e(String paramString) {
    this.h = paramString;
  }
  
  public String f() {
    return this.h;
  }
  
  public void f(String paramString) {
    this.i = paramString;
  }
  
  public String g() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */