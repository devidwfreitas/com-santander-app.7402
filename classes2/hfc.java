import android.content.SharedPreferences;
import com.santander.app.MinhaConta;
import java.util.Calendar;

public class hfc {
  private static final String a = "prefs_emprestimo_manager";
  
  private static final String b = "key_data_renegociacao";
  
  private static long a(long paramLong1, long paramLong2) {
    Calendar calendar1 = a(paramLong1);
    Calendar calendar2 = a(paramLong2);
    paramLong1 = 0L;
    while (true) {
      if (calendar1.before(calendar2)) {
        calendar1.add(5, 1);
        if (paramLong1 <= 7L) {
          paramLong1++;
          continue;
        } 
      } 
      return paramLong1;
    } 
  }
  
  private static Calendar a(long paramLong) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTimeInMillis(paramLong);
    calendar.set(11, 0);
    calendar.set(12, 0);
    calendar.set(13, 0);
    calendar.set(14, 0);
    return calendar;
  }
  
  public static void a() {
    Calendar calendar = Calendar.getInstance();
    c().edit().putLong("key_data_renegociacao", calendar.getTimeInMillis()).apply();
    gpu.a();
  }
  
  public static boolean b() {
    long l = c().getLong("key_data_renegociacao", Long.MIN_VALUE);
    return (l != Long.MIN_VALUE && a(l, Calendar.getInstance().getTimeInMillis()) <= 7L);
  }
  
  private static SharedPreferences c() {
    return MinhaConta.b().getSharedPreferences("prefs_emprestimo_manager", 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */