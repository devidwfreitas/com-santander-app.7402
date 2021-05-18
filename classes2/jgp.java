import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class jgp implements DatePickerDialog.OnDateSetListener {
  public jgp(FundosAplicacaoActivity paramFundosAplicacaoActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      FundosAplicacaoActivity.a(this.a, Calendar.getInstance());
      FundosAplicacaoActivity.i(this.a).set(paramInt1, paramInt2, paramInt3);
      FundosAplicacaoActivity.a(this.a, (new SimpleDateFormat("dd/MM/yyyy")).format(FundosAplicacaoActivity.i(this.a).getTime()));
      FundosAplicacaoActivity.k(this.a).setTextViewDate(FundosAplicacaoActivity.j(this.a));
      FundosAplicacaoActivity.k(this.a).setTextColor(this.a.getResources().getColor(2131623972));
      FundosAplicacaoActivity.l(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */