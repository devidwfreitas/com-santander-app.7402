import java.util.ArrayList;

public class klj implements klo {
  private gky a = null;
  
  private ArrayList<gky> b = new ArrayList<gky>();
  
  private klb c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public klj(klb paramklb) {
    this.c = paramklb;
    paramklb.a(0);
  }
  
  public ArrayList<gky> a() {
    b("COMPROVANTE DE TRANSFERÊNCIA DOC\n(2ª VIA)");
    a("Transação exclusiva para Transferência – DOC Sujeito à confirmação de saldo na data agendada.");
    c("Comprovante de Transferência DOC (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    d(((klv)this.c.d().get(this.c.b())).k());
    e(((klv)this.c.d().get(this.c.b())).y());
    f(((klv)this.c.d().get(this.c.b())).l());
    this.a = new gky("DADOS DO DESTINATÁRIO:", "");
    this.b.add(this.a);
    if (this.c.a() != null) {
      this.a = new gky("TIPO DE DOC:", this.c.a());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).D() != null) {
      this.a = new gky("Finalidade:", ((klv)this.c.d().get(this.c.b())).D());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).v() != null) {
      this.a = new gky("Banco:", ((klv)this.c.d().get(this.c.b())).v());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).f() != null) {
      this.a = new gky("ISPB:", ((klv)this.c.d().get(this.c.b())).f());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).t() != null) {
      this.a = new gky("Agência:", ((klv)this.c.d().get(this.c.b())).t());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).w() != null) {
      this.a = new gky("Conta:", ((klv)this.c.d().get(this.c.b())).w());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).F() != null) {
      this.a = new gky("Tipo de conta:", ((klv)this.c.d().get(this.c.b())).F());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).z() != null) {
      this.a = new gky("Favorecido:", ((klv)this.c.d().get(this.c.b())).z());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).C() != null) {
      this.a = new gky("CPF/CNPJ:", nai.c(((klv)this.c.d().get(this.c.b())).C()));
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).s() != null) {
      this.a = new gky("Valor:", naj.f(((klv)this.c.d().get(this.c.b())).s()));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\klj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */