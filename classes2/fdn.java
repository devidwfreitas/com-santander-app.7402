class fdn implements fev {
  fdn(fdl paramfdl) {}
  
  public void a(fdv paramfdv) {
    synchronized (fdl.b(this.a)) {
      if (fdl.c(this.a))
        fdl.d(this.a).obtainMessage(erz.zxing_decode, paramfdv).sendToTarget(); 
      return;
    } 
  }
  
  public void a(Exception paramException) {
    synchronized (fdl.b(this.a)) {
      if (fdl.c(this.a))
        fdl.d(this.a).obtainMessage(erz.zxing_preview_failed).sendToTarget(); 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */