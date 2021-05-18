import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

public class lqy implements View.OnClickListener {
  public lqy(ScanDocumentActivity paramScanDocumentActivity) {}
  
  public void onClick(View paramView) {
    if (ScanDocumentActivity.a(this.a).a() == aor.CONTENT) {
      if (ScanDocumentActivity.c()) {
        ScanDocumentActivity.d().j();
      } else {
        ScanDocumentActivity.d().k();
      } 
      if (ScanDocumentActivity.b(this.a) != null) {
        ScanDocumentActivity.b(this.a).a();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */