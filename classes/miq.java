import android.net.Uri;
import android.support.annotation.Nullable;

public class miq implements mip {
  private static miq a = null;
  
  private boolean A = false;
  
  private mir b;
  
  private boolean c = false;
  
  private boolean d = false;
  
  private boolean e = false;
  
  private boolean f;
  
  private boolean g = false;
  
  private byte[] h;
  
  private fwu i;
  
  private fwv j;
  
  private String k;
  
  private String l;
  
  private String m = "https://mbbocu.santander.com.br/";
  
  private String n = "https://esbapi.santander.com.br/";
  
  private String o = "37826a50a428013485b60050569009ca";
  
  private boolean p;
  
  private Uri q;
  
  private String r;
  
  private boolean s = false;
  
  private boolean t;
  
  private boolean u = false;
  
  private boolean v = true;
  
  private jnc w;
  
  private il x;
  
  private fvu y;
  
  private boolean z;
  
  public static miq C() {
    if (a == null) {
      a = new miq();
      a.a(new mir());
    } 
    return a;
  }
  
  public static void a(miq parammiq) {
    a = parammiq;
  }
  
  private void a(mir parammir) {
    this.b = parammir;
  }
  
  public il A() {
    return this.x;
  }
  
  public boolean B() {
    return this.A;
  }
  
  public Uri a() {
    return this.q;
  }
  
  public void a(Uri paramUri) {
    this.q = paramUri;
  }
  
  public void a(fvu paramfvu) {
    this.y = paramfvu;
  }
  
  public void a(fwu paramfwu) {
    this.i = paramfwu;
  }
  
  public void a(fwv paramfwv) {
    this.j = paramfwv;
  }
  
  public void a(il paramil) {
    this.x = paramil;
  }
  
  public void a(String paramString) {
    this.l = paramString;
  }
  
  public void a(jnc paramjnc) {
    this.w = paramjnc;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public void a(byte[] paramArrayOfbyte) {
    this.h = paramArrayOfbyte;
  }
  
  public void b(String paramString) {
    this.r = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public boolean b() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.m = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public boolean c() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.n = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public boolean d() {
    return this.g;
  }
  
  public void e(String paramString) {
    this.o = paramString;
  }
  
  public void e(boolean paramBoolean) {
    this.u = paramBoolean;
  }
  
  public boolean e() {
    return this.e;
  }
  
  public mir f() {
    return this.b;
  }
  
  public void f(String paramString) {
    this.k = paramString;
  }
  
  public void f(boolean paramBoolean) {
    this.s = paramBoolean;
  }
  
  public fwu g() {
    return this.i;
  }
  
  public void g(boolean paramBoolean) {
    this.t = paramBoolean;
  }
  
  public void h(boolean paramBoolean) {
    this.p = paramBoolean;
  }
  
  public byte[] h() {
    return this.h;
  }
  
  public String i() {
    return this.l;
  }
  
  public void i(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public String j() {
    return this.r;
  }
  
  public void j(boolean paramBoolean) {
    this.z = paramBoolean;
  }
  
  public fwv k() {
    return this.j;
  }
  
  public void k(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void l(boolean paramBoolean) {
    this.A = paramBoolean;
  }
  
  public boolean l() {
    return this.u;
  }
  
  public String m() {
    return this.m;
  }
  
  public fvu n() {
    return this.y;
  }
  
  public void o() {
    this.i = null;
    this.h = null;
    this.l = null;
    this.r = null;
    this.j = null;
    this.v = true;
    this.z = false;
    this.A = false;
    f().D();
    ism.b = false;
    hyb.i();
  }
  
  public String p() {
    return this.n;
  }
  
  public String q() {
    return this.o;
  }
  
  public boolean r() {
    return this.s;
  }
  
  public boolean s() {
    return this.t;
  }
  
  public boolean t() {
    return this.p;
  }
  
  public boolean u() {
    return this.v;
  }
  
  public boolean v() {
    return (C().f().b() != null && !"".equals(C().f().b()));
  }
  
  public boolean w() {
    return this.z;
  }
  
  public String x() {
    return this.k;
  }
  
  public boolean y() {
    return this.f;
  }
  
  @Nullable
  public jnc z() {
    return this.w;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\miq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */