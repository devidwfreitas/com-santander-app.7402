import java.util.ArrayList;
import java.util.List;

public class gvk extends gvf implements gvv {
  private String a;
  
  private String b;
  
  private frb c;
  
  public gvk(frb paramfrb) {
    this.c = paramfrb;
    c();
  }
  
  private void c() {
    g(this.c.J());
    h(this.c.L());
    i(this.c.P());
    j(this.c.Q());
    a(this.c.af());
    b(this.c.d());
    l(this.c.U());
    k(this.c.O());
    f(this.c.T());
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String d() {
    return null;
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
    gvi6.a("Concessionária:");
    if (b() != null)
      gvi6.b(b().substring(0, 40).trim()); 
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */