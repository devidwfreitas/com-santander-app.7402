import android.graphics.DashPathEffect;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public abstract class cfj extends cfk {
  private int B = -7829368;
  
  private float C = 1.0F;
  
  private int D = -7829368;
  
  private float E = 1.0F;
  
  private int F = 6;
  
  private DashPathEffect G = null;
  
  private DashPathEffect H = null;
  
  protected chl a;
  
  public float[] b = new float[0];
  
  public float[] c = new float[0];
  
  public int d;
  
  public int e;
  
  protected float f = 1.0F;
  
  protected boolean g = false;
  
  protected boolean h = false;
  
  protected boolean i = true;
  
  protected boolean j = true;
  
  protected boolean k = true;
  
  protected boolean l = false;
  
  protected List<cfw> m = new ArrayList<cfw>();
  
  protected boolean n = false;
  
  protected float o = 0.0F;
  
  protected float p = 0.0F;
  
  protected boolean q = false;
  
  protected boolean r = false;
  
  public float s = 0.0F;
  
  public float t = 0.0F;
  
  public float u = 0.0F;
  
  public boolean A() {
    return this.r;
  }
  
  public void B() {
    this.q = false;
  }
  
  public boolean C() {
    return this.q;
  }
  
  public float D() {
    return this.o;
  }
  
  public float E() {
    return this.p;
  }
  
  public void a(float paramFloat) {
    this.E = clg.a(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    if (this.q) {
      paramFloat1 = this.t;
    } else {
      paramFloat1 -= this.o;
    } 
    if (this.r) {
      paramFloat2 = this.s;
    } else {
      paramFloat2 = this.p + paramFloat2;
    } 
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (Math.abs(paramFloat2 - paramFloat1) == 0.0F) {
      f1 = paramFloat2 + 1.0F;
      f2 = paramFloat1 - 1.0F;
    } 
    this.t = f2;
    this.s = f1;
    this.u = Math.abs(f1 - f2);
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.H = new DashPathEffect(new float[] { paramFloat1, paramFloat2 }, paramFloat3);
  }
  
  public void a(int paramInt) {
    this.B = paramInt;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    c(paramInt);
    this.h = paramBoolean;
  }
  
  public void a(DashPathEffect paramDashPathEffect) {
    this.H = paramDashPathEffect;
  }
  
  public void a(cfw paramcfw) {
    this.m.add(paramcfw);
    if (this.m.size() > 6)
      Log.e("MPAndroiChart", "Warning! You have more than 6 LimitLines on your axis, do you really want that?"); 
  }
  
  public void a(chl paramchl) {
    if (paramchl == null) {
      this.a = new chi(this.e);
      return;
    } 
    this.a = paramchl;
  }
  
  public void a(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public boolean a() {
    return this.i;
  }
  
  public void b(float paramFloat) {
    this.C = clg.a(paramFloat);
  }
  
  public void b(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.G = new DashPathEffect(new float[] { paramFloat1, paramFloat2 }, paramFloat3);
  }
  
  public void b(int paramInt) {
    this.D = paramInt;
  }
  
  public void b(DashPathEffect paramDashPathEffect) {
    this.G = paramDashPathEffect;
  }
  
  public void b(cfw paramcfw) {
    this.m.remove(paramcfw);
  }
  
  public void b(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public boolean b() {
    return this.j;
  }
  
  public void c(float paramFloat) {
    this.f = paramFloat;
    this.g = true;
  }
  
  public void c(int paramInt) {
    byte b2 = 25;
    byte b1 = 2;
    if (paramInt > 25)
      paramInt = b2; 
    if (paramInt < 2)
      paramInt = b1; 
    this.F = paramInt;
    this.h = false;
  }
  
  public void c(boolean paramBoolean) {
    this.l = paramBoolean;
  }
  
  public boolean c() {
    return (this.l && this.d > 0);
  }
  
  public int d() {
    return this.B;
  }
  
  public String d(int paramInt) {
    return (paramInt < 0 || paramInt >= this.b.length) ? "" : q().a(this.b[paramInt], this);
  }
  
  public void d(float paramFloat) {
    this.q = true;
    this.t = paramFloat;
    this.u = Math.abs(this.s - paramFloat);
  }
  
  public void d(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public float e() {
    return this.E;
  }
  
  @Deprecated
  public void e(float paramFloat) {
    d(paramFloat);
  }
  
  public void e(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public float f() {
    return this.C;
  }
  
  public void f(float paramFloat) {
    this.r = true;
    this.s = paramFloat;
    this.u = Math.abs(paramFloat - this.t);
  }
  
  public void f(boolean paramBoolean) {
    this.n = paramBoolean;
  }
  
  public int g() {
    return this.D;
  }
  
  @Deprecated
  public void g(float paramFloat) {
    f(paramFloat);
  }
  
  public void h(float paramFloat) {
    this.o = paramFloat;
  }
  
  public boolean h() {
    return this.k;
  }
  
  public void i(float paramFloat) {
    this.p = paramFloat;
  }
  
  public boolean i() {
    return this.h;
  }
  
  public int j() {
    return this.F;
  }
  
  public boolean k() {
    return this.g;
  }
  
  public float l() {
    return this.f;
  }
  
  public void m() {
    this.m.clear();
  }
  
  public List<cfw> n() {
    return this.m;
  }
  
  public boolean o() {
    return this.n;
  }
  
  public String p() {
    String str = "";
    for (int i = 0; i < this.b.length; i++) {
      String str1 = d(i);
      if (str1 != null && str.length() < str1.length())
        str = str1; 
    } 
    return str;
  }
  
  public chl q() {
    if (this.a == null || (this.a instanceof chi && ((chi)this.a).a() != this.e))
      this.a = new chi(this.e); 
    return this.a;
  }
  
  public void r() {
    this.H = null;
  }
  
  public boolean s() {
    return (this.H != null);
  }
  
  public DashPathEffect t() {
    return this.H;
  }
  
  public void u() {
    this.G = null;
  }
  
  public boolean v() {
    return (this.G != null);
  }
  
  public DashPathEffect w() {
    return this.G;
  }
  
  public float x() {
    return this.s;
  }
  
  public float y() {
    return this.t;
  }
  
  public void z() {
    this.r = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */