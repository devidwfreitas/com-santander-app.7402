import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

public class lre implements Runnable {
  public lre(ScanDocumentActivity paramScanDocumentActivity) {}
  
  public void run() {
    if (this.a.isFinishing())
      return; 
    ScanDocumentActivity.a(this.a, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */