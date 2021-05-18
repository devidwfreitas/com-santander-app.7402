import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;
import com.santander.app.seguros.utils.DummyActivity;

public class mgr implements View.OnClickListener {
  public mgr(DummyActivity paramDummyActivity) {}
  
  public void onClick(View paramView) {
    this.a.startActivity(new Intent((Context)this.a, TermsOfUseActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */