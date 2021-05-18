import android.util.Log;

class feh implements Runnable {
  feh(fec paramfec) {}
  
  public void run() {
    try {
      Log.d(fec.k(), "Starting preview");
      fec.a(this.a).a(fec.d(this.a));
      fec.a(this.a).c();
      return;
    } catch (Exception exception) {
      fec.a(this.a, exception);
      Log.e(fec.k(), "Failed to start preview", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\feh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */