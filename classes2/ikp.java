import android.app.DatePickerDialog;
import android.widget.DatePicker;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

class ikp implements DatePickerDialog.OnDateSetListener {
  ikp(ikl paramikl, Calendar paramCalendar) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    this.a.set(1, paramInt1);
    this.a.set(2, paramInt2);
    this.a.set(5, paramInt3);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", new Locale("pt"));
    ikl.h(this.b).setText(simpleDateFormat.format(this.a.getTime()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */