import java.util.ArrayList;

public class klm implements klo {
  private gky a = null;
  
  private ArrayList<gky> b = new ArrayList<gky>();
  
  private klb c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public klm(klb paramklb) {
    this.c = paramklb;
    paramklb.a(0);
  }
  
  public ArrayList<gky> a() {
    b("COMPROVANTE DE PAGAMENTO DE TÍTULOS\n(2ª VIA)");
    a("Transação exclusiva para pagamento de Ficha de Compensação. Pagamento válido somente se informados corretamente os dados do título. A veracidade dessas informações é de responsabilidade do Cliente, que se obriga a apresentar os títulos para verificação sempre que solicitado, nos termos da lei. Havendo divergências entre as informações ora oferecida e o valor efetivamente devido, será facultado ao banco efetuar ou não o pagamento, ficando no caso de efetivação, desde já autorizado a debitar ou creditar na conta do cliente a diferença encontrada.");
    c("Comprovante de Pagamento de Títulos (2ª VIA)" + ((klv)this.c.d().get(this.c.b())).y());
    d(((klv)this.c.d().get(this.c.b())).k());
    e(((klv)this.c.d().get(this.c.b())).y());
    f(((klv)this.c.d().get(this.c.b())).l());
    if (((klv)this.c.d().get(this.c.b())).m() != null) {
      this.a = new gky("Código de barras:", ((klv)this.c.d().get(this.c.b())).m());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).z() != null) {
      this.a = new gky("Favorecido:", ((klv)this.c.d().get(this.c.b())).z());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).e() != null) {
      this.a = new gky("Favorecido:", ((klv)this.c.d().get(this.c.b())).e());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).I() != null) {
      this.a = new gky("Cliente/Pagador:", ((klv)this.c.d().get(this.c.b())).I());
      this.a.a(true);
      this.b.add(this.a);
    } 
    if (((klv)this.c.d().get(this.c.b())).H() != null) {
      this.a = new gky("Data do vencimento:", ((klv)this.c.d().get(this.c.b())).H());
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
    if (((klv)this.c.d().get(this.c.b())).d() != null) {
      this.a = new gky("Valor:", naj.f(((klv)this.c.d().get(this.c.b())).d()));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\klm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */