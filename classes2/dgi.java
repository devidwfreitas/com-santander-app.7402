import android.os.Process;

class dgi implements Runnable {
  private final Runnable a;
  
  private final int b;
  
  public dgi(Runnable paramRunnable, int paramInt) {
    this.a = paramRunnable;
    this.b = paramInt;
  }
  
  public void run() {
    Process.setThreadPriority(this.b);
    this.a.run();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */