import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

class fox implements View.OnClickListener {
  fox(fou paramfou, int paramInt) {}
  
  public void onClick(View paramView) {
    ije ije = new ije();
    Bundle bundle = new Bundle();
    LinearLayout linearLayout = (LinearLayout)paramView.getParent();
    fou.a(this.b, (TextView)linearLayout.findViewById(2131756717));
    try {
      String str = ((fos)fou.d(this.b).get(this.a)).b();
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
      bundle.putInt("minimumDate", 2);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
    } 
    bundle.putSerializable("listener", this.b);
    ije.setArguments(bundle);
    ije.show(((FragmentActivity)fou.b(this.b)).getSupportFragmentManager(), "datePicker");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */