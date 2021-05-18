class gnm implements Runnable {
  gnm(gnl paramgnl, Runnable paramRunnable) {}
  
  public void run() {
    try {
      this.a.run();
      return;
    } finally {
      this.b.a();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */