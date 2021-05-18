abstract class dmu extends dmt {
  private boolean a;
  
  dmu(dlv paramdlv) {
    super(paramdlv);
    this.n.a(this);
  }
  
  boolean Q() {
    return this.a;
  }
  
  protected void R() {
    if (!Q())
      throw new IllegalStateException("Not initialized"); 
  }
  
  public final void S() {
    if (this.a)
      throw new IllegalStateException("Can't initialize twice"); 
    a();
    this.n.M();
    this.a = true;
  }
  
  protected abstract void a();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */