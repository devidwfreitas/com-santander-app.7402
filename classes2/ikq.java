import android.app.DatePickerDialog;
import android.content.Context;
import android.view.View;
import java.util.Calendar;

class ikq implements View.OnFocusChangeListener {
  ikq(ikl paramikl, DatePickerDialog.OnDateSetListener paramOnDateSetListener, Calendar paramCalendar) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean)
      (new DatePickerDialog((Context)this.c.getActivity(), this.a, this.b.get(1), this.b.get(2), this.b.get(5))).show(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */