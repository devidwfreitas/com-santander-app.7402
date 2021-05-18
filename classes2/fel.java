public class fel {
  private int a = -1;
  
  private boolean b = false;
  
  private boolean c = false;
  
  private boolean d = false;
  
  private boolean e = true;
  
  private boolean f = false;
  
  private boolean g = false;
  
  private boolean h = false;
  
  private fem i = fem.AUTO;
  
  public int a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(fem paramfem) {
    this.i = paramfem;
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public void b(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public boolean b() {
    return this.b;
  }
  
  public void c(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public boolean c() {
    return this.c;
  }
  
  public void d(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public boolean d() {
    return this.g;
  }
  
  public void e(boolean paramBoolean) {
    this.e = paramBoolean;
    if (paramBoolean && this.f) {
      this.i = fem.CONTINUOUS;
      return;
    } 
    if (paramBoolean) {
      this.i = fem.AUTO;
      return;
    } 
    this.i = null;
  }
  
  public boolean e() {
    return this.d;
  }
  
  public void f(boolean paramBoolean) {
    this.f = paramBoolean;
    if (paramBoolean) {
      this.i = fem.CONTINUOUS;
      return;
    } 
    if (this.e) {
      this.i = fem.AUTO;
      return;
    } 
    this.i = null;
  }
  
  public boolean f() {
    return this.e;
  }
  
  public void g(boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public boolean g() {
    return this.f;
  }
  
  public fem h() {
    return this.i;
  }
  
  public boolean i() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */