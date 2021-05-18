import android.os.Bundle;
import android.view.View;
import com.santander.app.InvestimentosConsolidadaActivity;
import java.io.Serializable;

public class fij implements View.OnClickListener {
  public fij(InvestimentosConsolidadaActivity paramInvestimentosConsolidadaActivity) {}
  
  public void onClick(View paramView) {
    ije ije = new ije();
    Bundle bundle = new Bundle();
    bundle.putSerializable("listener", (Serializable)this.a);
    bundle.putBoolean("maximumDate", true);
    if (InvestimentosConsolidadaActivity.b(this.a) != null) {
      bundle.putBoolean("fechaAgendada", true);
      bundle.putInt("year", Integer.parseInt(InvestimentosConsolidadaActivity.b(this.a).substring(0, 4)));
      bundle.putInt("month", Integer.parseInt(InvestimentosConsolidadaActivity.b(this.a).substring(4, 6)) - 1);
      bundle.putInt("day", Integer.parseInt(InvestimentosConsolidadaActivity.b(this.a).substring(6, 8)));
    } 
    ije.setArguments(bundle);
    ije.show(this.a.getSupportFragmentManager(), "datePicker");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */