import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class hif implements DatePickerDialog.OnDateSetListener {
  public hif(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      Calendar calendar = Calendar.getInstance();
      calendar.set(paramInt1, paramInt2, paramInt3);
      SimulacaoAntecipacaoDTPasso1Activity.d(this.a).setText((new SimpleDateFormat("dd/MM/yyyy")).format(calendar.getTime()));
      SimulacaoAntecipacaoDTPasso1Activity.a(this.a, SimulacaoAntecipacaoDTPasso1Activity.e(this.a), SimulacaoAntecipacaoDTPasso1Activity.d(this.a).getText().toString().replaceAll("/", ""));
      SimulacaoAntecipacaoDTPasso1Activity.g(this.a).setVisibility(0);
      frq.d("CreditoFinanciamento_Antecipar13_DataPagamento_Acao", SimulacaoAntecipacaoDTPasso1Activity.d(this.a).getText().toString());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */