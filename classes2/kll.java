import java.util.ArrayList;

public class kll implements klo {
  private gky a = null;
  
  private ArrayList<gky> b = new ArrayList<gky>();
  
  private klb c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public kll(klb paramklb) {
    this.c = paramklb;
    paramklb.a(0);
  }
  
  public ArrayList<gky> a() {
    d(((klv)this.c.d().get(this.c.b())).k());
    e(((klv)this.c.d().get(this.c.b())).y());
    f(((klv)this.c.d().get(this.c.b())).l());
    b("COMPROVANTE DE PAGAMENTO TELEFONE PRÉ-PAGO\n(2ª VIA)");
    a("Pagamento efetuado com base nas informações do código de barras.");
    c("Comprovante de Pagamento Telefone Pré-Pago (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    if (((klv)this.c.d().get(this.c.b())).q() != null) {
      this.a = new gky("Operadora:", ((klv)this.c.d().get(this.c.b())).q());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).i() != null) {
      this.a = new gky("Número do Telefone:", ((klv)this.c.d().get(this.c.b())).i());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).s() != null) {
      this.a = new gky("Valor:", naj.f(((klv)this.c.d().get(this.c.b())).s()));
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).g() != null) {
      this.a = new gky("Número da Transação:", ((klv)this.c.d().get(this.c.b())).g());
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).a() != null) {
      this.a = new gky("Protocolo Autorizado:", ((klv)this.c.d().get(this.c.b())).a());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */