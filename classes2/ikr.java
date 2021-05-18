import android.app.DatePickerDialog;
import android.content.Context;
import android.view.View;
import java.util.Calendar;

class ikr implements View.OnClickListener {
  ikr(ikl paramikl, DatePickerDialog.OnDateSetListener paramOnDateSetListener, Calendar paramCalendar) {}
  
  public void onClick(View paramView) {
    (new DatePickerDialog((Context)this.c.getActivity(), this.a, this.b.get(1), this.b.get(2), this.b.get(5))).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */