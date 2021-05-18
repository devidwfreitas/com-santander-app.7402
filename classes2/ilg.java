import android.os.Bundle;
import android.util.Log;
import android.view.View;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

class ilg implements View.OnFocusChangeListener {
  ilg(ikx paramikx, Calendar paramCalendar) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      ije ije = new ije();
      Bundle bundle = new Bundle();
      bundle.putSerializable("listener", this.b);
      try {
        String str;
        if (ikx.i(this.b).getText().toString().compareTo("") == 0) {
          str = this.a.getTime().toString();
        } else {
          str = ikx.i(this.b).getText().toString();
        } 
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        if (str.contains("-"))
          simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
        Date date = simpleDateFormat.parse(str);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        bundle.putBoolean("fechaAgendada", true);
        bundle.putInt("year", calendar.get(1));
        bundle.putInt("month", calendar.get(2));
        bundle.putInt("day", calendar.get(5));
      } catch (ParseException parseException) {
        Log.e("Error", parseException.toString());
      } 
      ije.setArguments(bundle);
      ije.show(this.b.getChildFragmentManager(), "datePicker");
      ikx.i(this.b).clearFocus();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */