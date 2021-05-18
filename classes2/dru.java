class dru implements Runnable {
  private final dsa b;
  
  private final dse c;
  
  private final Runnable d;
  
  public dru(drs paramdrs, dsa paramdsa, dse paramdse, Runnable paramRunnable) {
    this.b = paramdsa;
    this.c = paramdse;
    this.d = paramRunnable;
  }
  
  public void run() {
    if (this.c.a()) {
      this.b.a(this.c.a);
    } else {
      this.b.b(this.c.c);
    } 
    if (this.c.d) {
      this.b.b("intermediate-response");
    } else {
      this.b.c("done");
    } 
    if (this.d != null)
      this.d.run(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */