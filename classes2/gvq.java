import java.util.ArrayList;
import java.util.List;

public class gvq extends gvf implements gvv {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  private String k;
  
  private frb l;
  
  public gvq(frb paramfrb) {
    this.l = paramfrb;
    x();
  }
  
  private void x() {
    g(this.l.J());
    h(this.l.L());
    i(this.l.P());
    j(this.l.Q());
    d(this.l.u());
    e(this.l.ah());
    a(this.l.a());
    n(this.l.ai());
    m(this.l.ac());
    p(this.l.ak());
    q(this.l.aj());
    r(this.l.al());
    s(this.l.am());
    l(this.l.U());
    k(this.l.O());
    f(this.l.T());
    c(this.l.v());
    b(this.l.an());
  }
  
  public String a() {
    return this.c;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public String b() {
    return this.k;
  }
  
  public void b(String paramString) {
    this.k = paramString;
  }
  
  public String c() {
    return this.j;
  }
  
  public void c(String paramString) {
    this.j = paramString;
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
    gvi gvi2 = new gvi();
    gvi2.a("Data Agendada:");
    gvi2.b(k());
    gvi gvi3 = new gvi();
    gvi3.a("Descrição:");
    gvi3.b(l());
    gvi gvi4 = new gvi();
    gvi4.a("Status:");
    gvi4.b(m());
    gvi gvi5 = new gvi();
    gvi5.a("Valor:");
    gvi5.b(n());
    gvi gvi6 = new gvi();
    gvi6.a("Banco:");
    gvi6.b(c() + " " + h());
    gvi gvi7 = new gvi();
    gvi7.a("Agência:");
    if (a() != null) {
      str = a();
    } else {
      str = "";
    } 
    gvi7.b(i() + " " + str);
    gvi gvi8 = new gvi();
    gvi8.a("Ispb:");
    gvi8.b(b());
    gvi gvi9 = new gvi();
    gvi9.a("Conta:");
    gvi9.b(r());
    gvi gvi10 = new gvi();
    gvi10.a("Tipo:");
    gvi10.b(q());
    gvi gvi11 = new gvi();
    gvi11.a("Favorecido:");
    gvi11.b(t());
    gvi gvi12 = new gvi();
    gvi12.a("Documento:");
    String str = null;
    if (u() != null)
      str = nai.c(u()); 
    gvi12.b(str);
    gvi gvi1 = new gvi();
    gvi1.a("Finalidade:");
    gvi1.b(v());
    gvi gvi13 = new gvi();
    gvi13.a("Histórico:");
    gvi13.b(w());
    gvi gvi14 = new gvi();
    gvi14.a("Data/Hora da Solicitação:");
    gvi14.b(p());
    gvi gvi15 = new gvi();
    gvi15.a("Canal:");
    gvi15.b(j());
    gvi gvi16 = new gvi();
    gvi16.a("Número do Protocolo:");
    gvi16.b(o());
    gvi gvi17 = new gvi();
    gvi17.a("Data/Hora da Transação:");
    gvi17.b(e());
    gvi gvi18 = new gvi();
    gvi18.a("Autenticação Bancária:");
    gvi18.b(f());
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
    arrayList.add(gvi1);
    arrayList.add(gvi13);
    arrayList.add(gvi14);
    arrayList.add(gvi15);
    arrayList.add(gvi16);
    arrayList.add(gvi17);
    arrayList.add(gvi18);
    return arrayList;
  }
  
  public String h() {
    return this.a;
  }
  
  public String i() {
    return this.b;
  }
  
  public void n(String paramString) {
    this.d = paramString;
  }
  
  public void o(String paramString) {
    this.e = paramString;
  }
  
  public void p(String paramString) {
    this.f = paramString;
  }
  
  public void q(String paramString) {
    this.g = paramString;
  }
  
  public String r() {
    return this.d;
  }
  
  public void r(String paramString) {
    this.h = paramString;
  }
  
  public String s() {
    return this.e;
  }
  
  public void s(String paramString) {
    this.i = paramString;
  }
  
  public String t() {
    return this.f;
  }
  
  public String u() {
    return this.g;
  }
  
  public String v() {
    return this.h;
  }
  
  public String w() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */