import java.util.ArrayList;
import java.util.List;

public class gvc extends gvf implements gvv {
  private static final long a = 3061400932042681348L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private frb e;
  
  public gvc(frb paramfrb) {
    this.e = paramfrb;
    h();
  }
  
  private void h() {
    g(this.e.J());
    h(this.e.L());
    i(this.e.P());
    j(this.e.Q());
    a(this.e.V());
    b(this.e.X());
    c(this.e.W());
    l(this.e.U());
    k(this.e.O());
    f(this.e.T());
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
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
    gvi5.a("Número do Contrato CDB:");
    gvi5.b(a());
    gvi gvi6 = new gvi();
    gvi6.a("Taxa do CDB:");
    gvi6.b(b() + "%");
    gvi gvi7 = new gvi();
    gvi7.a("Prazo do CDB:");
    gvi7.b(c() + " Dia(s)");
    gvi gvi8 = new gvi();
    gvi8.a("Data/Hora da Solicitação:");
    gvi8.b(p());
    gvi gvi9 = new gvi();
    gvi9.a("Canal:");
    gvi9.b(j());
    gvi gvi10 = new gvi();
    gvi10.a("Número do Protocolo:");
    gvi10.b(o());
    gvi gvi11 = new gvi();
    gvi11.a("Data/Hora da Transação:");
    gvi11.b(e());
    gvi gvi12 = new gvi();
    gvi12.a("Autenticação Bancária:");
    gvi12.b(f());
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
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */