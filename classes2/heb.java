import android.database.DataSetObserver;
import android.util.Log;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class heb extends DataSetObserver {
  public heb(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onChanged() {
    Log.d("Santander", "Activity observer");
    DPPPreenchimentoActivity.q(this.a);
    super.onChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\heb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */