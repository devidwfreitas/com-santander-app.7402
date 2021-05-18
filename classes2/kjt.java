import android.app.DatePickerDialog;
import android.util.Log;
import android.widget.DatePicker;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

class kjt implements DatePickerDialog.OnDateSetListener {
  kjt(kjo paramkjo) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar1 = Calendar.getInstance();
    calendar1.set(1, paramInt1);
    calendar1.set(2, paramInt2);
    calendar1.set(5, paramInt3);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    Calendar calendar2 = khz.a(calendar1);
    try {
      String str = nak.a(new Date(), "dd/MM/yyyy");
      SimpleDateFormat simpleDateFormat1 = simpleDateFormat;
      if (str != null) {
        simpleDateFormat1 = simpleDateFormat;
        if (str.contains("-"))
          simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd", new Locale("pt", "BR")); 
      } 
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(simpleDateFormat1.parse(str));
      if (paramInt3 > calendar.get(5) && paramInt1 >= calendar.get(1)) {
        kjo.a(this.a).c(simpleDateFormat1.format(calendar2.getTime()));
        switch (kjo.a(this.a).q()) {
          case 0:
            calendar2.add(5, 7);
            break;
          case 1:
            calendar2.add(2, 1);
            break;
        } 
        Calendar calendar3 = khz.a(calendar2);
        kjo.a(this.a).d(nak.a(calendar3.getTime(), "dd/MM/yyyy"));
        return;
      } 
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */