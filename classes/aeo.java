import android.util.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class aeo {
  public static String a(String paramString) {
    if (paramString == null)
      return ""; 
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd", new Locale("pt", "BR"))).parse(paramString);
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(date);
      return calendar.before(Calendar.getInstance()) ? "Vencido em " : "Vencimento ";
    } catch (ParseException parseException) {
      Log.e(aeo.class.getName(), Log.getStackTraceString(parseException));
      return "";
    } 
  }
  
  public static String a(Calendar paramCalendar) {
    return (paramCalendar == null) ? "" : (new SimpleDateFormat("dd/MM/yyyy", new Locale("pt", "BR"))).format(paramCalendar.getTime());
  }
  
  public static String b(String paramString) {
    if (paramString == null)
      return ""; 
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd", new Locale("pt", "BR"))).parse(paramString);
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(date);
      return a(calendar);
    } catch (ParseException parseException) {
      Log.e(aeo.class.getName(), Log.getStackTraceString(parseException));
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aeo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */