import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.widget.DatePicker;
import java.util.Calendar;

public class ije extends DialogFragment implements DatePickerDialog.OnDateSetListener {
  private final String a = "DatePickerFragment";
  
  private gpk b;
  
  private DatePickerDialog.OnDateSetListener c;
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Calendar calendar = Calendar.getInstance();
    int i = calendar.get(1);
    int j = calendar.get(2);
    int k = calendar.get(5);
    if (getArguments().getBoolean("fechaAgendada")) {
      i = getArguments().getInt("year");
      j = getArguments().getInt("month");
      k = getArguments().getInt("day");
    } 
    this.c = (DatePickerDialog.OnDateSetListener)getArguments().get("listener");
    if (getArguments().get("maximumDate") != null) {
      this.b = new gpk((Context)getActivity(), this.c, i, j, k, 1);
    } else if (getArguments().get("minimumDate") != null) {
      Integer integer = (Integer)getArguments().get("minimumDate");
      this.b = new gpk((Context)getActivity(), this.c, i, j, k, integer.intValue());
    } else {
      this.b = new gpk((Context)getActivity(), this.c, i, j, k);
    } 
    if (getArguments().get("title") != null && ((CharSequence)getArguments().get("title")).length() > 0)
      this.b.setTitle(getArguments().get("title") + ":"); 
    return (Dialog)this.b;
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (this.c != null)
      this.c.onDateSet(paramDatePicker, paramInt1, paramInt2, paramInt3); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ije.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */