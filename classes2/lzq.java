import android.app.DatePickerDialog;
import android.content.Context;
import android.view.View;
import java.util.Date;
import java.util.GregorianCalendar;

class lzq implements View.OnClickListener {
  lzq(lzp paramlzp) {}
  
  public void onClick(View paramView) {
    GregorianCalendar gregorianCalendar = new GregorianCalendar(mhj.d());
    gregorianCalendar.setTime(lzp.a(this.a));
    DatePickerDialog datePickerDialog = new DatePickerDialog((Context)lzp.b(this.a), new lzr(this, gregorianCalendar), gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
    datePickerDialog.getDatePicker().setMaxDate((new Date()).getTime());
    datePickerDialog.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */