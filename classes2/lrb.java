import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

public class lrb implements View.OnClickListener {
  public lrb(ScanDocumentActivity paramScanDocumentActivity) {}
  
  public void onClick(View paramView) {
    if (ScanDocumentActivity.a(this.a).a() != aor.CONTENT)
      return; 
    ScanDocumentActivity.d(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */