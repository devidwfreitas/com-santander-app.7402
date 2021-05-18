import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.TextView;
import java.util.Calendar;

class xc implements DatePickerDialog.OnDateSetListener {
  xc(wx paramwx, int paramInt, TextView paramTextView) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(paramInt1, paramInt2, paramInt3);
    calendar = wx.b(this.c, calendar, Integer.valueOf(this.a));
    this.b.setText(wx.b(this.c, calendar));
    wx.e(this.c).a(calendar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\xc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */