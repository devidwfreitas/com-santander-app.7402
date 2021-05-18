import android.app.DatePickerDialog;
import android.widget.DatePicker;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

class kju implements DatePickerDialog.OnDateSetListener {
  kju(kjo paramkjo) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    calendar = khz.a(calendar);
    try {
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
      Calendar calendar2 = Calendar.getInstance();
      calendar2.setTime(simpleDateFormat1.parse(kjo.a(this.a).u()));
      switch (kjo.a(this.a).q()) {
        case 0:
          calendar2.add(5, 7);
          break;
        case 1:
          calendar2.add(2, 1);
          break;
      } 
      Calendar calendar1 = khz.a(calendar2);
      if ((calendar.get(5) < calendar1.get(5) || calendar.get(2) < calendar1.get(2)) && paramInt1 >= calendar1.get(1))
        kjo.a(this.a).d(simpleDateFormat.format(calendar1.getTime())); 
    } catch (ParseException parseException) {
      kjo.a(this.a).d(simpleDateFormat.format(calendar.getTime()));
    } 
    kjo.a(this.a).d(simpleDateFormat.format(calendar.getTime()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */