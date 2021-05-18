import android.app.DatePickerDialog;
import android.content.Context;
import android.view.View;
import java.util.Calendar;

class ldt implements View.OnClickListener {
  ldt(lds paramlds) {}
  
  public void onClick(View paramView) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(5, calendar.get(5) + 1);
    DatePickerDialog datePickerDialog = new DatePickerDialog((Context)this.a.getActivity(), this.a, calendar.get(1), calendar.get(2), calendar.get(5));
    datePickerDialog.getDatePicker().setMinDate(calendar.getTimeInMillis());
    datePickerDialog.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */