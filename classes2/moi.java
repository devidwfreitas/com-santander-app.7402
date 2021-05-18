import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class moi implements DatePickerDialog.OnDateSetListener {
  public moi(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      FormaTransferenciaActivity.a(this.a, Calendar.getInstance());
      FormaTransferenciaActivity.q(this.a).set(paramInt1, paramInt2, paramInt3);
      FormaTransferenciaActivity.a(this.a, (new SimpleDateFormat("dd/MM/yyyy")).format(FormaTransferenciaActivity.q(this.a).getTime()));
      FormaTransferenciaActivity.d(this.a).setTextViewDate(FormaTransferenciaActivity.r(this.a));
      FormaTransferenciaActivity.d(this.a).setTextColor(this.a.getResources().getColor(2131623972));
      FormaTransferenciaActivity.g(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\moi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */