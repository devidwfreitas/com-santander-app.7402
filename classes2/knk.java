import android.app.DatePickerDialog;
import android.widget.Button;
import android.widget.DatePicker;
import java.text.SimpleDateFormat;
import java.util.Calendar;

class knk implements DatePickerDialog.OnDateSetListener {
  knk(knj paramknj, Button paramButton, SimpleDateFormat paramSimpleDateFormat) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    knj.a(this.c, Calendar.getInstance());
    knj.a(this.c).set(paramInt1, paramInt2, paramInt3);
    this.a.setText(this.b.format(knj.a(this.c).getTime()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */