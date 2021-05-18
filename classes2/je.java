public class je {
  private io a;
  
  private iv b;
  
  private ip c;
  
  private il d;
  
  private in e;
  
  private boolean f = false;
  
  private void b(il paramil, in paramin) {
    if (this.c == null || this.c.equals(ip.HUB)) {
      this.a = ic.a(paramil, paramin, this.f);
      return;
    } 
    this.a = ic.a(paramil, paramin);
  }
  
  public io a() {
    return this.a;
  }
  
  public je a(il paramil, in paramin) {
    this.d = paramil;
    this.e = paramin;
    return this;
  }
  
  public je a(ip paramip) {
    this.c = paramip;
    b(this.d, this.e);
    return this;
  }
  
  public je a(iv paramiv) {
    this.b = paramiv;
    return this;
  }
  
  public je a(Boolean paramBoolean) {
    this.f = paramBoolean.booleanValue();
    return this;
  }
  
  public void a(iq paramiq, ih paramih) {
    jg jg = new jg(paramiq, paramih);
    if (this.b != null) {
      (new jf(this.a, new iz(this.b, this.c))).execute((Object[])new jg[] { jg });
      return;
    } 
    (new jf(this.a, new iz(this.c))).execute((Object[])new jg[] { jg });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\je.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */