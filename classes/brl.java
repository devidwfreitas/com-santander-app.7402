class brl implements brk {
  private final Runnable c;
  
  private brl d;
  
  private brl e;
  
  private boolean f;
  
  static {
    boolean bool;
    if (!bri.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  brl(bri parambri, Runnable paramRunnable) {
    this.c = paramRunnable;
  }
  
  brl a(brl parambrl) {
    if (!a && this.d == null)
      throw new AssertionError(); 
    if (!a && this.e == null)
      throw new AssertionError(); 
    brl brl1 = parambrl;
    if (parambrl == this) {
      if (this.d == this) {
        brl1 = null;
        this.d.e = this.e;
        this.e.d = this.d;
        this.e = null;
        this.d = null;
        return brl1;
      } 
    } else {
      this.d.e = this.e;
      this.e.d = this.d;
      this.e = null;
      this.d = null;
      return brl1;
    } 
    brl1 = this.d;
    this.d.e = this.e;
    this.e.d = this.d;
    this.e = null;
    this.d = null;
    return brl1;
  }
  
  brl a(brl parambrl, boolean paramBoolean) {
    if (!a && this.d != null)
      throw new AssertionError(); 
    if (!a && this.e != null)
      throw new AssertionError(); 
    if (parambrl == null) {
      this.e = this;
      this.d = this;
      parambrl = this;
    } else {
      this.d = parambrl;
      this.e = parambrl.e;
      brl brl1 = this.d;
      this.e.d = this;
      brl1.e = this;
    } 
    return paramBoolean ? this : parambrl;
  }
  
  void a(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public boolean a() {
    synchronized (bri.a(this.b)) {
      if (!b()) {
        bri.b(this.b, a(bri.b(this.b)));
        return true;
      } 
      return false;
    } 
  }
  
  void b(boolean paramBoolean) {
    if (!a && this.e.d != this)
      throw new AssertionError(); 
    if (!a && this.d.e != this)
      throw new AssertionError(); 
    if (!a && b() != paramBoolean)
      throw new AssertionError(); 
  }
  
  public boolean b() {
    return this.f;
  }
  
  public void c() {
    synchronized (bri.a(this.b)) {
      if (!b()) {
        bri.b(this.b, a(bri.b(this.b)));
        bri.b(this.b, a(bri.b(this.b), true));
      } 
      return;
    } 
  }
  
  Runnable d() {
    return this.c;
  }
  
  brl e() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */