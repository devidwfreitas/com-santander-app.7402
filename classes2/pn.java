import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.TextView;
import java.util.Calendar;

class pn implements DatePickerDialog.OnDateSetListener {
  pn(pc parampc, Calendar paramCalendar1, Calendar paramCalendar2, TextView paramTextView) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(paramInt1, paramInt2, paramInt3);
    if (calendar.after(this.a) && calendar.before(this.b)) {
      if (pc.R(this.d).b()) {
        pc.S(this.d).b(pc.a(this.d, calendar));
      } else {
        pc.T(this.d).a(pc.a(this.d, calendar));
      } 
      this.c.setText(pc.b(this.d, calendar));
      return;
    } 
    this.c.setText(pc.b(this.d, this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */