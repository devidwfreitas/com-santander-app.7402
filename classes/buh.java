class buh implements Runnable {
  buh(bug parambug, Object paramObject) {}
  
  public void run() {
    try {
      synchronized (this.a) {
        this.a.notify();
        return;
      } 
    } catch (Exception exception) {
      bug.a("Exception waiting for main looper", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */