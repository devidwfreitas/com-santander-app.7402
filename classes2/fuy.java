import com.santander.app.contacorrente.domain.ExtratoContract;
import com.santander.app.contacorrente.domain.LancamentoContract;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class fuy extends fvu implements ExtratoContract, Serializable {
  private static final long a = 1L;
  
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
  
  private String l;
  
  private String m;
  
  private String n;
  
  private String o;
  
  private String p;
  
  private String q;
  
  private String r;
  
  private String s;
  
  private String t;
  
  private String u;
  
  private String v;
  
  private String w;
  
  private String x;
  
  private Vector<fve> y = new Vector<fve>();
  
  public static long x() {
    return 1L;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(Vector<fve> paramVector) {
    this.y = paramVector;
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
    return this.e;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return this.f;
  }
  
  public void e(String paramString) {
    this.f = paramString;
  }
  
  public String f() {
    return this.g;
  }
  
  public void f(String paramString) {
    this.g = paramString;
  }
  
  public String g() {
    return this.h;
  }
  
  public void g(String paramString) {
    this.h = paramString;
  }
  
  public List<LancamentoContract> getLancamentoList() {
    ArrayList<fve> arrayList = new ArrayList();
    if (this.y != null)
      arrayList.addAll(this.y); 
    return (List)arrayList;
  }
  
  public String h() {
    return this.i;
  }
  
  public void h(String paramString) {
    this.i = paramString;
  }
  
  public boolean hasMorePages() {
    return false;
  }
  
  public String i() {
    return this.j;
  }
  
  public void i(String paramString) {
    this.j = paramString;
  }
  
  public String j() {
    return this.k;
  }
  
  public void j(String paramString) {
    this.k = paramString;
  }
  
  public String k() {
    return this.l;
  }
  
  public void k(String paramString) {
    this.l = paramString;
  }
  
  public String l() {
    return this.m;
  }
  
  public void l(String paramString) {
    this.m = paramString;
  }
  
  public String m() {
    return this.n;
  }
  
  public void m(String paramString) {
    this.n = paramString;
  }
  
  public String n() {
    return this.o;
  }
  
  public void n(String paramString) {
    this.o = paramString;
  }
  
  public String o() {
    return this.p;
  }
  
  public void o(String paramString) {
    this.p = paramString;
  }
  
  public String p() {
    return this.q;
  }
  
  public void p(String paramString) {
    this.q = paramString;
  }
  
  public String q() {
    return this.r;
  }
  
  public void q(String paramString) {
    this.r = paramString;
  }
  
  public String r() {
    return this.s;
  }
  
  public void r(String paramString) {
    this.s = paramString;
  }
  
  public String s() {
    return this.t;
  }
  
  public void s(String paramString) {
    this.t = paramString;
  }
  
  public String t() {
    return this.u;
  }
  
  public void t(String paramString) {
    this.u = paramString;
  }
  
  public String u() {
    return (this.v != null) ? this.v : "0";
  }
  
  public void u(String paramString) {
    this.v = paramString;
  }
  
  public String v() {
    return this.w;
  }
  
  public void v(String paramString) {
    this.w = paramString;
  }
  
  public String w() {
    return this.x;
  }
  
  public void w(String paramString) {
    this.x = paramString;
  }
  
  public Vector<fve> y() {
    return this.y;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fuy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */