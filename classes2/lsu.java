import android.app.DatePickerDialog;
import android.content.Context;
import android.widget.DatePicker;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;
import java.util.Calendar;

public class lsu implements DatePickerDialog.OnDateSetListener {
  public lsu(SurveyActivity paramSurveyActivity, Calendar paramCalendar) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    this.a.set(paramInt1, paramInt2, paramInt3);
    if (this.a.getTime().before(SurveyActivity.b(this.b))) {
      mhj.a((Context)this.b.i, String.format(this.b.getResources().getString(2131297104), new Object[] { mhj.a(SurveyActivity.b(this.b)) }), new lsv(this));
      return;
    } 
    if (this.a.get(7) == 1) {
      mhj.a((Context)this.b.i, this.b.getResources().getString(2131298656), new lsw(this));
      return;
    } 
    SurveyActivity.a(this.b, this.a.getTime());
    SurveyActivity.d(this.b).setText(mhj.a(SurveyActivity.c(this.b), "dd/MM/yyyy"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */