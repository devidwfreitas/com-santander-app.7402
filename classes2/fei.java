import android.util.Log;

class fei implements Runnable {
  fei(fec paramfec) {}
  
  public void run() {
    try {
      Log.d(fec.k(), "Closing camera");
      fec.a(this.a).d();
      fec.a(this.a).close();
    } catch (Exception exception) {
      Log.e(fec.k(), "Failed to close camera", exception);
    } 
    fec.e(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */