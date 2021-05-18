class eho implements Runnable {
  eho(ehn paramehn, egv paramegv) {}
  
  public void run() {
    synchronized (ehn.a(this.b)) {
      if (ehn.b(this.b) != null)
        ehn.b(this.b).a(this.a.c()); 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */