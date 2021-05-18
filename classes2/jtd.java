import android.app.Activity;
import java.util.ArrayList;
import java.util.Calendar;

public class jtd implements jtb {
  private mip a;
  
  private jwi b;
  
  private jtc c;
  
  private Activity d;
  
  public jtd(Activity paramActivity, jtc paramjtc) {
    this.b = new jwj(paramActivity);
    this.c = paramjtc;
    this.a = (mip)miq.C();
    this.d = paramActivity;
  }
  
  private String a(ArrayList<gku> paramArrayList, String paramString1, String paramString2) {
    for (gku gku : paramArrayList) {
      if (gku.b() != null && gku.b().equals(paramString1) && ((paramString2 != null && paramString2.equals(gku.a())) || (paramString2 == null && gku.a() == null)))
        return gku.c(); 
    } 
    return "";
  }
  
  private jsq b(jsr paramjsr, jsp paramjsp) {
    jsq jsq = new jsq();
    String str2 = a(paramjsr.m(), "CNPJ/CPF ", "B").replace(".", "").replace("-", "").replace("/", "");
    String str3 = a(paramjsr.m(), "Beneficiário", null);
    Calendar calendar1 = paramjsp.c();
    String str1 = paramjsr.q();
    if (str1 != null) {
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(nak.a(str1, "yyyyMMdd"));
      if (calendar1.before(calendar)) {
        str1 = "01";
      } else {
        str1 = "00";
      } 
      jsq.h(str1);
      if (jsq.h().equals("00")) {
        str1 = "1";
      } else {
        str1 = "2";
      } 
      jsq.f(str1);
    } else {
      jsq.h("00");
      jsq.f("1");
    } 
    Calendar calendar2 = Calendar.getInstance();
    calendar2.setTime(calendar1.getTime());
    calendar2.add(2, paramjsp.a());
    if (str2.length() == 11) {
      str1 = "13";
    } else {
      str1 = "14";
    } 
    jsq.a(str1);
    if (str2.length() == 11) {
      str1 = "000" + str2;
      jsq.b(str1);
      jsq.c(str3);
      jsq.g(str3.substring(0, Math.min(20, str3.length())));
      jsq.d(aep.a(Double.valueOf(paramjsp.b())));
      jsq.e(nak.a(calendar2.getTime(), "yyyy-MM-dd"));
      jsq.i();
      return jsq;
    } 
    str1 = str2;
    jsq.b(str1);
    jsq.c(str3);
    jsq.g(str3.substring(0, Math.min(20, str3.length())));
    jsq.d(aep.a(Double.valueOf(paramjsp.b())));
    jsq.e(nak.a(calendar2.getTime(), "yyyy-MM-dd"));
    jsq.i();
    return jsq;
  }
  
  public void a(jsr paramjsr, jsp paramjsp) {
    this.b.a(new jte(this), b(paramjsr, paramjsp));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jtd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */