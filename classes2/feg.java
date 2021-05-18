import android.util.Log;

class feg implements Runnable {
  feg(fec paramfec) {}
  
  public void run() {
    try {
      Log.d(fec.k(), "Configuring camera");
      fec.a(this.a).b();
      if (fec.b(this.a) != null)
        fec.b(this.a).obtainMessage(erz.zxing_prewiew_size_ready, fec.c(this.a)).sendToTarget(); 
      return;
    } catch (Exception exception) {
      fec.a(this.a, exception);
      Log.e(fec.k(), "Failed to configure camera", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\feg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */