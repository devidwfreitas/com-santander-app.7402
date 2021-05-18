import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

public class lra implements View.OnClickListener {
  public lra(ScanDocumentActivity paramScanDocumentActivity) {}
  
  public void onClick(View paramView) {
    if (ScanDocumentActivity.a(this.a).a() != aor.CONTENT)
      return; 
    ScanDocumentActivity.c(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lra.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */