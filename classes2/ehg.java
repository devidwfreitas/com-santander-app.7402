class ehg implements Runnable {
  ehg(ehf paramehf, egv paramegv) {}
  
  public void run() {
    try {
      Object object = ehf.a(this.b).a(this.a);
      ehf.b(this.b).a(object);
      return;
    } catch (egu egu) {
      if (egu.getCause() instanceof Exception) {
        ehf.b(this.b).a((Exception)egu.getCause());
        return;
      } 
      ehf.b(this.b).a(egu);
      return;
    } catch (Exception exception) {
      ehf.b(this.b).a(exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */