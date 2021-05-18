import java.util.ArrayList;
import java.util.List;

public class gvj extends gvf implements gvv {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private frb f;
  
  public gvj(frb paramfrb) {
    this.f = paramfrb;
    i();
  }
  
  private void i() {
    g(this.f.J());
    h(this.f.L());
    i(this.f.P());
    j(this.f.Q());
    a(this.f.af());
    b(this.f.r());
    c(this.f.q());
    d(this.f.ad());
    l(this.f.U());
    k(this.f.O());
    f(this.f.T());
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return null;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return null;
  }
  
  public String f() {
    return null;
  }
  
  public List<gvi> g() {
    ArrayList<gvi> arrayList = new ArrayList();
    gvi gvi1 = new gvi();
    gvi1.a("Data Agendada:");
    gvi1.b(k());
    gvi gvi2 = new gvi();
    gvi2.a("Descrição:");
    gvi2.b(l());
    gvi gvi3 = new gvi();
    gvi3.a("Status:");
    gvi3.b(m());
    gvi gvi4 = new gvi();
    gvi4.a("Valor:");
    gvi4.b(n());
    gvi gvi5 = new gvi();
    gvi5.a("Código de Barras:");
    gvi5.b(a());
    gvi gvi6 = new gvi();
    gvi6.a("CPF:");
    gvi6.b(b());
    gvi gvi7 = new gvi();
    gvi7.a("CNPJ:");
    gvi7.b(c());
    gvi gvi8 = new gvi();
    if (h() != null) {
      gvi8.a("Data do Vencimento:");
      gvi8.b(nak.r(h()));
    } 
    gvi gvi9 = new gvi();
    gvi9.a("Data/Hora da Solicitação:");
    gvi9.b(p());
    gvi gvi10 = new gvi();
    gvi10.a("Canal:");
    gvi10.b(j());
    gvi gvi11 = new gvi();
    gvi11.a("Número do Protocolo:");
    gvi11.b(o());
    gvi gvi12 = new gvi();
    gvi12.a("Data/Hora da Transação:");
    gvi12.b(e());
    gvi gvi13 = new gvi();
    gvi13.a("Autenticação Bancária:");
    gvi13.b(f());
    arrayList.add(gvi1);
    arrayList.add(gvi2);
    arrayList.add(gvi3);
    arrayList.add(gvi4);
    arrayList.add(gvi5);
    arrayList.add(gvi6);
    arrayList.add(gvi7);
    arrayList.add(gvi8);
    arrayList.add(gvi9);
    arrayList.add(gvi10);
    arrayList.add(gvi11);
    arrayList.add(gvi12);
    arrayList.add(gvi13);
    return arrayList;
  }
  
  public String h() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */