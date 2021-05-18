import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.cancellation.activities.CancellationResidenceActivity;
import com.santander.app.seguros.ui.cancellation.activities.HistoricResidenceActivity;

public class lek implements View.OnClickListener {
  public lek(CancellationResidenceActivity paramCancellationResidenceActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, HistoricResidenceActivity.class);
    intent.putExtra("residence-address", CancellationResidenceActivity.b(this.a));
    if (CancellationResidenceActivity.c(this.a) != null && CancellationResidenceActivity.c(this.a).size() > 0)
      intent.putExtra("list-historic-residence", (new ejm()).b(CancellationResidenceActivity.c(this.a))); 
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */