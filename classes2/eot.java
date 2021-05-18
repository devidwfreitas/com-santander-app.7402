import java.util.Calendar;
import java.util.GregorianCalendar;

final class eot extends ekn<Calendar> {
  private static final String a = "year";
  
  private static final String b = "month";
  
  private static final String c = "dayOfMonth";
  
  private static final String d = "hourOfDay";
  
  private static final String e = "minute";
  
  private static final String f = "second";
  
  public Calendar a(epo paramepo) {
    int i = 0;
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    paramepo.c();
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    while (paramepo.f() != epr.END_OBJECT) {
      String str = paramepo.g();
      int i2 = paramepo.m();
      if ("year".equals(str)) {
        i1 = i2;
        continue;
      } 
      if ("month".equals(str)) {
        n = i2;
        continue;
      } 
      if ("dayOfMonth".equals(str)) {
        m = i2;
        continue;
      } 
      if ("hourOfDay".equals(str)) {
        k = i2;
        continue;
      } 
      if ("minute".equals(str)) {
        j = i2;
        continue;
      } 
      if ("second".equals(str))
        i = i2; 
    } 
    paramepo.d();
    return new GregorianCalendar(i1, n, m, k, j, i);
  }
  
  public void a(eps parameps, Calendar paramCalendar) {
    if (paramCalendar == null) {
      parameps.f();
      return;
    } 
    parameps.d();
    parameps.a("year");
    parameps.a(paramCalendar.get(1));
    parameps.a("month");
    parameps.a(paramCalendar.get(2));
    parameps.a("dayOfMonth");
    parameps.a(paramCalendar.get(5));
    parameps.a("hourOfDay");
    parameps.a(paramCalendar.get(11));
    parameps.a("minute");
    parameps.a(paramCalendar.get(12));
    parameps.a("second");
    parameps.a(paramCalendar.get(13));
    parameps.e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */