import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

public class lqz implements View.OnClickListener {
  public lqz(ScanDocumentActivity paramScanDocumentActivity) {}
  
  public void onClick(View paramView) {
    boolean bool;
    if (ScanDocumentActivity.a(this.a).a() != aor.CONTENT)
      return; 
    if (!ScanDocumentActivity.c()) {
      bool = true;
    } else {
      bool = false;
    } 
    ScanDocumentActivity.a(bool);
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */