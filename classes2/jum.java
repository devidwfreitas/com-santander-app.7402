import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class jum implements DatePickerDialog.OnDateSetListener {
  public jum(FormaPagamentosActivity paramFormaPagamentosActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      Calendar calendar = Calendar.getInstance();
      calendar.set(paramInt1, paramInt2, paramInt3);
      FormaPagamentosActivity.b(this.a, (new SimpleDateFormat("dd/MM/yyyy")).format(calendar.getTime()));
      FormaPagamentosActivity.k(this.a).setText(FormaPagamentosActivity.j(this.a));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */