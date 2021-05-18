import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class mhz {
  private List<kpw> a = new ArrayList<kpw>();
  
  private List<krt> b = new ArrayList<krt>();
  
  private kqn c;
  
  private Map<String, String> d = new HashMap<String, String>();
  
  private kqj e = new kqj();
  
  private String f;
  
  private ktl g;
  
  private String h;
  
  private Map<String, String> i = new HashMap<String, String>();
  
  private krz j = new krz();
  
  private String k;
  
  private kql l;
  
  private ksd m;
  
  private Integer n;
  
  private krg o;
  
  private ktj p;
  
  public Integer a() {
    return this.n;
  }
  
  public void a(Integer paramInteger) {
    this.n = paramInteger;
  }
  
  public void a(String paramString) {
    this.f = paramString;
  }
  
  public void a(List<kpw> paramList) {
    this.a = paramList;
  }
  
  public void a(Map<String, String> paramMap) {
    this.i = paramMap;
  }
  
  public void a(kqj paramkqj) {
    this.e = paramkqj;
  }
  
  public void a(kql paramkql) {
    this.l = paramkql;
  }
  
  public void a(kqn paramkqn) {
    this.c = paramkqn;
  }
  
  public void a(krg paramkrg) {
    this.o = paramkrg;
  }
  
  public void a(krz paramkrz) {
    this.j = paramkrz;
  }
  
  public void a(ksd paramksd) {
    this.m = paramksd;
  }
  
  public void a(ktj paramktj) {
    this.p = paramktj;
  }
  
  public void a(ktl paramktl) {
    this.g = paramktl;
  }
  
  public ktl b() {
    return this.g;
  }
  
  public void b(String paramString) {
    this.h = paramString;
  }
  
  public void b(List<krt> paramList) {
    this.b = paramList;
  }
  
  public void b(Map<String, String> paramMap) {
    this.d = paramMap;
  }
  
  public void b(ktl paramktl) {
    this.g = paramktl;
  }
  
  public Map<String, String> c() {
    return this.i;
  }
  
  public void c(String paramString) {
    this.k = paramString;
  }
  
  public void c(ktl paramktl) {
    if (this.g == null) {
      this.g = paramktl;
      return;
    } 
    if (!this.g.b().equalsIgnoreCase(paramktl.b()) || !this.g.a().equalsIgnoreCase(paramktl.a())) {
      this.g = paramktl;
      this.o = null;
      return;
    } 
  }
  
  public krg d() {
    return this.o;
  }
  
  public List<kpw> e() {
    return this.a;
  }
  
  public List<krt> f() {
    return this.b;
  }
  
  public kqn g() {
    return this.c;
  }
  
  public Map<String, String> h() {
    return this.d;
  }
  
  public kqj i() {
    return this.e;
  }
  
  public String j() {
    return this.f;
  }
  
  public String k() {
    return this.h;
  }
  
  public ktj l() {
    return this.p;
  }
  
  public ktl m() {
    return this.g;
  }
  
  public krz n() {
    return this.j;
  }
  
  public String o() {
    return this.k;
  }
  
  public kql p() {
    return this.l;
  }
  
  public ksd q() {
    return this.m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */