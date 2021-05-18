import android.util.Log;

class fef implements Runnable {
  fef(fec paramfec) {}
  
  public void run() {
    try {
      Log.d(fec.k(), "Opening camera");
      fec.a(this.a).a();
      return;
    } catch (Exception exception) {
      fec.a(this.a, exception);
      Log.e(fec.k(), "Failed to open camera", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */