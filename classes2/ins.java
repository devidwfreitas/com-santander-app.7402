import android.os.Bundle;
import android.util.Log;
import android.view.View;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

class ins implements View.OnClickListener {
  ins(inp paraminp, int paramInt) {}
  
  public void onClick(View paramView) {
    inp.a(this.b, this.a);
    this.b.a = Boolean.valueOf(false);
    ije ije = new ije();
    Bundle bundle = new Bundle();
    bundle.putSerializable("listener", this.b);
    try {
      String str = nak.a(new Date(), "dd/MM/yyyy");
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
      if (str.contains("-"))
        simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
      Date date = simpleDateFormat.parse(str);
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(date);
      bundle.putBoolean("fechaAgendada", true);
      bundle.putInt("minimumDate", 2);
      bundle.putInt("year", calendar.get(1));
      bundle.putInt("month", calendar.get(2));
      bundle.putInt("day", calendar.get(5) + 1);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
    } 
    ije.setArguments(bundle);
    ije.show(inp.b(this.b).getSupportFragmentManager(), "datePicker");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ins.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */