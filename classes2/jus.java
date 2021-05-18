import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class jus implements DatePickerDialog.OnDateSetListener {
  public jus(FormaPagamentosActivity paramFormaPagamentosActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      Calendar calendar = Calendar.getInstance();
      calendar.set(paramInt1, paramInt2, paramInt3);
      FormaPagamentosActivity.a(this.a, (new SimpleDateFormat("dd/MM/yyyy")).format(calendar.getTime()));
      FormaPagamentosActivity.f(this.a).setTextViewInfo(this.a.getResources().getString(2131297841));
      FormaPagamentosActivity.f(this.a).setTextViewDate(FormaPagamentosActivity.g(this.a));
      FormaPagamentosActivity.f(this.a).setEnableDateCircleButton(false);
      FormaPagamentosActivity.h(this.a).setEnableDateCircleButton(false);
      FormaPagamentosActivity.f(this.a).setTextColor(this.a.getResources().getColor(2131623972));
      frq.d("Pagamentos_Pagamento_Acao", FormaPagamentosActivity.g(this.a));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */