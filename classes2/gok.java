import android.util.Log;
import java.io.File;

class gok implements Runnable {
  gok(goj paramgoj) {}
  
  public void run() {
    try {
      File file = new File(goj.a(this.a));
      if (file.exists())
        file.delete(); 
      return;
    } catch (Exception exception) {
      Log.e("CapturableActivity", exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */