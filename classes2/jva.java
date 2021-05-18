import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosDDAActivity;
import java.util.Calendar;

public class jva implements DatePickerDialog.OnDateSetListener {
  public jva(FormaPagamentosDDAActivity paramFormaPagamentosDDAActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      Calendar calendar = Calendar.getInstance();
      calendar.set(paramInt1, paramInt2, paramInt3);
      FormaPagamentosDDAActivity.a(this.a, nak.a(calendar.getTime(), "dd/MM/yyyy"));
      FormaPagamentosDDAActivity.f(this.a).setTextViewInfo(this.a.getResources().getString(2131297841));
      FormaPagamentosDDAActivity.f(this.a).setTextViewDate(FormaPagamentosDDAActivity.g(this.a));
      FormaPagamentosDDAActivity.f(this.a).setEnableDateCircleButton(false);
      FormaPagamentosDDAActivity.h(this.a).setEnableDateCircleButton(false);
      FormaPagamentosDDAActivity.f(this.a).setTextColor(this.a.getResources().getColor(2131623972));
      FormaPagamentosDDAActivity.i(this.a).setVisibility(0);
      ((LinearLayout.LayoutParams)FormaPagamentosDDAActivity.b(this.a).getLayoutParams()).weight = 0.35F;
      if (FormaPagamentosDDAActivity.j(this.a) != null)
        FormaPagamentosDDAActivity.j(this.a).c(); 
      frq.d("Pagamentos_Pagamento_Acao", FormaPagamentosDDAActivity.g(this.a));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */