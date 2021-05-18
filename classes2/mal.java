import android.app.DatePickerDialog;
import android.content.Context;
import android.widget.DatePicker;
import java.util.Calendar;

class mal implements DatePickerDialog.OnDateSetListener {
  mal(maj parammaj, Calendar paramCalendar) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    this.a.set(paramInt1, paramInt2, paramInt3);
    if (this.a.getTime().before(maj.b(this.b))) {
      mhj.a((Context)maj.c(this.b), String.format(this.b.getResources().getString(2131297104), new Object[] { mhj.a(maj.b(this.b)) }), new mam(this));
      return;
    } 
    if (this.a.get(7) == 1) {
      mhj.a((Context)maj.c(this.b), this.b.getResources().getString(2131298656), new man(this));
      return;
    } 
    maj.d(this.b).setText(mhj.a(this.a.getTime(), "dd/MM/yyyy"));
    maj.a(this.b, this.a.getTime());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */