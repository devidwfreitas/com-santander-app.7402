class ehi implements Runnable {
  ehi(ehh paramehh, egv paramegv) {}
  
  public void run() {
    try {
      egv egv1 = (egv)ehh.a(this.b).a(this.a);
      if (egv1 == null) {
        this.b.a(new NullPointerException("Continuation returned null"));
        return;
      } 
    } catch (egu null) {
      if (exception.getCause() instanceof Exception) {
        ehh.b(this.b).a((Exception)exception.getCause());
        return;
      } 
      ehh.b(this.b).a(exception);
      return;
    } catch (Exception exception) {
      ehh.b(this.b).a(exception);
      return;
    } 
    exception.a(egx.b, this.b);
    exception.a(egx.b, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */