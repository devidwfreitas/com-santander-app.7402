import android.content.Intent;
import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.DemaisPaisesListActivity;
import java.io.Serializable;

public class gcn implements View.OnClickListener {
  public gcn(DemaisPaisesListActivity paramDemaisPaisesListActivity) {}
  
  public void onClick(View paramView) {
    DemaisPaisesListActivity.a(this.a, (gbd)paramView.getTag());
    Intent intent = new Intent();
    intent.putExtra("demais_paises_selected", (Serializable)DemaisPaisesListActivity.c(this.a));
    this.a.setResult(-1, intent);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */