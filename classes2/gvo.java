import java.util.ArrayList;
import java.util.List;

public class gvo extends gvf implements gvv {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private frb f;
  
  public gvo(frb paramfrb) {
    this.f = paramfrb;
    r();
  }
  
  private void r() {
    g(this.f.J());
    h(this.f.L());
    i(this.f.P());
    j(this.f.Q());
    b(this.f.Z());
    c(this.f.aa());
    a(this.f.h());
    d(this.f.o());
    e(this.f.b());
    l(this.f.U());
    k(this.f.O());
    f(this.f.T());
  }
  
  public String a() {
    return this.e;
  }
  
  public void a(String paramString) {
    this.e = paramString;
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
    this.a = paramString;
  }
  
  public String e() {
    return null;
  }
  
  public void e(String paramString) {
    this.b = paramString;
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
    if (h() != null) {
      gvi5.a("Conta de Crédito:");
      gvi5.b(a() + " " + naq.h(h()));
    } 
    gvi gvi6 = new gvi();
    gvi6.a("Conta Fundo de Débito:");
    gvi6.b(i());
    gvi gvi7 = new gvi();
    gvi7.a("Data/Hora da Solicitação:");
    gvi7.b(p());
    gvi gvi8 = new gvi();
    gvi8.a("Canal:");
    gvi8.b(j());
    gvi gvi9 = new gvi();
    gvi9.a("Número do Protocolo:");
    gvi9.b(o());
    gvi gvi10 = new gvi();
    gvi10.a("Data/Hora da Transação:");
    gvi10.b(e());
    gvi gvi11 = new gvi();
    gvi11.a("Autenticação Bancária:");
    gvi11.b(f());
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
    return arrayList;
  }
  
  public String h() {
    return this.a;
  }
  
  public String i() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */