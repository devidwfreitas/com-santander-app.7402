import java.io.Serializable;

public class ftw extends fvu implements Serializable, Cloneable {
  private static final long a = 1L;
  
  private boolean b;
  
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
  
  private int n;
  
  public String a() {
    return (this.e == null) ? "" : this.e;
  }
  
  public void a(int paramInt) {
    this.n = paramInt;
  }
  
  public void a(String paramString) {
    this.e = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public String b() {
    return (this.e == null) ? "false" : "true";
  }
  
  public void b(String paramString) {
    this.f = paramString;
  }
  
  public String c() {
    return this.f;
  }
  
  public void c(String paramString) {
    this.g = paramString;
  }
  
  public Object clone() {
    return super.clone();
  }
  
  public String d() {
    return this.g;
  }
  
  public void d(String paramString) {
    this.h = paramString;
  }
  
  public String e() {
    return this.h;
  }
  
  public void e(String paramString) {
    this.i = paramString;
  }
  
  public String f() {
    return this.i;
  }
  
  public void f(String paramString) {
    this.j = paramString;
  }
  
  public String g() {
    return this.j;
  }
  
  public void g(String paramString) {
    this.k = paramString;
  }
  
  public String h() {
    return (this.k != null) ? this.k : "";
  }
  
  public void h(String paramString) {
    this.d = paramString;
  }
  
  public String i() {
    return this.d;
  }
  
  public void i(String paramString) {
    this.c = paramString;
  }
  
  public String j() {
    return this.c;
  }
  
  public void j(String paramString) {
    this.l = paramString;
  }
  
  public void k(String paramString) {
    this.m = paramString;
  }
  
  public boolean k() {
    return this.b;
  }
  
  public String l() {
    return (this.l != null) ? this.l : "";
  }
  
  public String m() {
    return this.m;
  }
  
  public int n() {
    return this.n;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */