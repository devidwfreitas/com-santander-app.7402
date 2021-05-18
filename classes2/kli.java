import java.util.ArrayList;

public class kli implements klo {
  private gky a = null;
  
  private ArrayList<gky> b = new ArrayList<gky>();
  
  private klb c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public kli(klb paramklb) {
    this.c = paramklb;
    paramklb.a(0);
  }
  
  public ArrayList<gky> a() {
    d(((klv)this.c.d().get(this.c.b())).k());
    e(((klv)this.c.d().get(this.c.b())).y());
    f(((klv)this.c.d().get(this.c.b())).l());
    if (((klv)this.c.d().get(this.c.b())).E().equals("1001")) {
      b("COMPROVANTE DE PAGAMENTO ÁGUA\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Água (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } else if (((klv)this.c.d().get(this.c.b())).E().equals("1002")) {
      b("COMPROVANTE DE PAGAMENTO LUZ\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Luz (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } else if (((klv)this.c.d().get(this.c.b())).E().equals("1003")) {
      b("COMPROVANTE DE PAGAMENTO GÁS\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Gás (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } else if (((klv)this.c.d().get(this.c.b())).E().equals("1004")) {
      b("COMPROVANTE DE PAGAMENTO TELEFONE FIXO\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Telefone Fixo (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } else if (((klv)this.c.d().get(this.c.b())).E().equals("1005")) {
      b("COMPROVANTE DE PAGAMENTO TELEFONE PÓS-PAGO\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Telefone Pós-Pago (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } else if (((klv)this.c.d().get(this.c.b())).E().equals("1006")) {
      b("COMPROVANTE DE PAGAMENTO OUTROS PAG.NET, SEGUROS, ETC.\n(2ª VIA)");
      a("Pagamento efetuado com base nas informações do código de barras.");
      c("Comprovante de Pagamento Outros Pag. NET, Seguros, etc. (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    } 
    if (((klv)this.c.d().get(this.c.b())).q() != null) {
      this.a = new gky("Empresa:", ((klv)this.c.d().get(this.c.b())).q());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).n() != null) {
      this.a = new gky("Convênio:", ((klv)this.c.d().get(this.c.b())).n());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).m() != null) {
      this.a = new gky("Código de barras:", ((klv)this.c.d().get(this.c.b())).m());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).o() != null) {
      this.a = new gky("Data do pagamento:", ((klv)this.c.d().get(this.c.b())).o());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kli.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */