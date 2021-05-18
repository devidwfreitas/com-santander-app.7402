import android.util.Log;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Vector;

public class fue extends fvu implements gkz, Serializable {
  private static final long a = 1L;
  
  private String A;
  
  private String B;
  
  private String C;
  
  private String D;
  
  private String E;
  
  private String F;
  
  private String G;
  
  private String H;
  
  private String I;
  
  private String J;
  
  private String K;
  
  private String L;
  
  private String M;
  
  private String N;
  
  private String O;
  
  private String P;
  
  private String Q;
  
  private String R;
  
  private String S;
  
  private String T;
  
  private String U;
  
  private String V;
  
  private String W;
  
  private Vector<fuj> X = new Vector<fuj>();
  
  private Boolean Y;
  
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
  
  private String y;
  
  private String z;
  
  public String A() {
    return this.z;
  }
  
  public void A(String paramString) {
    this.B = paramString;
  }
  
  public String B() {
    return this.A;
  }
  
  public void B(String paramString) {
    this.C = paramString;
  }
  
  public String C() {
    return this.B;
  }
  
  public void C(String paramString) {
    this.D = paramString;
  }
  
  public String D() {
    return this.C;
  }
  
  public void D(String paramString) {
    this.E = paramString;
  }
  
  public String E() {
    return this.D;
  }
  
  public void E(String paramString) {
    this.F = paramString;
  }
  
  public String F() {
    return this.E;
  }
  
  public void F(String paramString) {
    this.G = paramString;
  }
  
  public String G() {
    return this.F;
  }
  
  public void G(String paramString) {
    this.H = paramString;
  }
  
  public String H() {
    return this.G;
  }
  
  public void H(String paramString) {
    this.I = paramString;
  }
  
  public String I() {
    return this.H;
  }
  
  public void I(String paramString) {
    this.J = paramString;
  }
  
  public String J() {
    return this.I;
  }
  
  public void J(String paramString) {
    this.K = paramString;
  }
  
  public String K() {
    return this.J;
  }
  
  public void K(String paramString) {
    this.L = paramString;
  }
  
  public String L() {
    return this.K;
  }
  
  public void L(String paramString) {
    this.M = paramString;
  }
  
  public String M() {
    return this.L;
  }
  
  public void M(String paramString) {
    this.N = paramString;
  }
  
  public String N() {
    return this.M;
  }
  
  public void N(String paramString) {
    this.O = paramString;
  }
  
  public String O() {
    return this.N;
  }
  
  public void O(String paramString) {
    this.P = paramString;
  }
  
  public String P() {
    return this.O;
  }
  
  public void P(String paramString) {
    this.Q = paramString;
  }
  
  public String Q() {
    return this.P;
  }
  
  public void Q(String paramString) {
    this.R = paramString;
  }
  
  public String R() {
    return this.Q;
  }
  
  public void R(String paramString) {
    this.S = paramString;
  }
  
  public String S() {
    return this.R;
  }
  
  public void S(String paramString) {
    this.T = paramString;
  }
  
  public String T() {
    return this.S;
  }
  
  public void T(String paramString) {
    this.U = paramString;
  }
  
  public String U() {
    return this.T;
  }
  
  public void U(String paramString) {
    this.V = paramString;
  }
  
  public String V() {
    return this.U;
  }
  
  public void V(String paramString) {
    this.W = paramString;
  }
  
  public String W() {
    return this.V;
  }
  
  public String X() {
    return this.W;
  }
  
  public String Y() {
    return null;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(Boolean paramBoolean) {
    this.Y = paramBoolean;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(Vector<fuj> paramVector) {
    this.X = paramVector;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.e;
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public String d() {
    return this.f;
  }
  
  public void d(String paramString) {
    this.f = paramString;
  }
  
  public Vector<fuj> e() {
    return this.X;
  }
  
  public void e(String paramString) {
    this.g = paramString;
  }
  
  public boolean equals(Object paramObject) {
    Calendar calendar1 = Calendar.getInstance();
    Calendar calendar2 = Calendar.getInstance();
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd/MM/yyyy");
    if (this == paramObject)
      return true; 
    if (paramObject == null)
      return false; 
    if (!(paramObject instanceof fue))
      return false; 
    paramObject = paramObject;
    if (this.e == null) {
      if (((fue)paramObject).i != null)
        return false; 
    } else if (!this.e.equals(((fue)paramObject).i)) {
      return false;
    } 
    if (this.b == null) {
      if (((fue)paramObject).b != null)
        return false; 
    } else {
      try {
        if (this.b.contains("-")) {
          calendar1.setTime(simpleDateFormat1.parse(this.b));
        } else {
          calendar1.setTime(simpleDateFormat2.parse(this.b));
        } 
        if (((fue)paramObject).b.contains("-")) {
          calendar2.setTime(simpleDateFormat1.parse(((fue)paramObject).b));
        } else {
          calendar2.setTime(simpleDateFormat2.parse(((fue)paramObject).b));
        } 
        if (!calendar1.equals(calendar2))
          return false; 
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
      } 
      return true;
    } 
    if (!calendar1.equals(calendar2))
      return false; 
  }
  
  public String f() {
    return this.g;
  }
  
  public void f(String paramString) {
    this.h = paramString;
  }
  
  public String g() {
    return this.h;
  }
  
  public void g(String paramString) {
    this.i = paramString;
  }
  
  public String h() {
    return this.i;
  }
  
  public void h(String paramString) {
    this.d = paramString;
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7 = 0;
    if (this.Y == null) {
      i = 0;
    } else {
      i = this.Y.hashCode();
    } 
    if (this.d == null) {
      j = 0;
    } else {
      j = this.d.hashCode();
    } 
    if (this.h == null) {
      k = 0;
    } else {
      k = this.h.hashCode();
    } 
    if (this.c == null) {
      m = 0;
    } else {
      m = this.c.hashCode();
    } 
    if (this.X == null) {
      n = 0;
    } else {
      n = this.X.hashCode();
    } 
    if (this.j == null) {
      i1 = 0;
    } else {
      i1 = this.j.hashCode();
    } 
    if (this.k == null) {
      i2 = 0;
    } else {
      i2 = this.k.hashCode();
    } 
    if (this.f == null) {
      i3 = 0;
    } else {
      i3 = this.f.hashCode();
    } 
    if (this.g == null) {
      i4 = 0;
    } else {
      i4 = this.g.hashCode();
    } 
    if (this.i == null) {
      i5 = 0;
    } else {
      i5 = this.i.hashCode();
    } 
    if (this.e == null) {
      i6 = 0;
    } else {
      i6 = this.e.hashCode();
    } 
    if (this.b != null)
      i7 = this.b.hashCode(); 
    return (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i7;
  }
  
  public String i() {
    return this.d;
  }
  
  public void i(String paramString) {
    this.j = paramString;
  }
  
  public String j() {
    return this.j;
  }
  
  public void j(String paramString) {
    this.k = paramString;
  }
  
  public String k() {
    return this.k;
  }
  
  public void k(String paramString) {
    this.l = paramString;
  }
  
  public Boolean l() {
    return this.Y;
  }
  
  public void l(String paramString) {
    this.m = paramString;
  }
  
  public String m() {
    return this.l;
  }
  
  public void m(String paramString) {
    this.n = paramString;
  }
  
  public String n() {
    return this.m;
  }
  
  public void n(String paramString) {
    this.o = paramString;
  }
  
  public String o() {
    return this.n;
  }
  
  public void o(String paramString) {
    this.p = paramString;
  }
  
  public String p() {
    return this.o;
  }
  
  public void p(String paramString) {
    this.q = paramString;
  }
  
  public String q() {
    return this.p;
  }
  
  public void q(String paramString) {
    this.r = paramString;
  }
  
  public String r() {
    return this.q;
  }
  
  public void r(String paramString) {
    this.s = paramString;
  }
  
  public String s() {
    return this.r;
  }
  
  public void s(String paramString) {
    this.t = paramString;
  }
  
  public String t() {
    return this.s;
  }
  
  public void t(String paramString) {
    this.u = paramString;
  }
  
  public String toString() {
    return this.b;
  }
  
  public String u() {
    return this.t;
  }
  
  public void u(String paramString) {
    this.v = paramString;
  }
  
  public String v() {
    return this.u;
  }
  
  public void v(String paramString) {
    this.w = paramString;
  }
  
  public String w() {
    return this.v;
  }
  
  public void w(String paramString) {
    this.x = paramString;
  }
  
  public String x() {
    return this.w;
  }
  
  public void x(String paramString) {
    this.y = paramString;
  }
  
  public String y() {
    return this.x;
  }
  
  public void y(String paramString) {
    this.z = paramString;
  }
  
  public String z() {
    return this.y;
  }
  
  public void z(String paramString) {
    this.A = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */