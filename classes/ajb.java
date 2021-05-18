import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public class ajb {
  public static String a(Double paramDouble) {
    try {
      NumberFormat numberFormat = DecimalFormat.getInstance(Locale.US);
      numberFormat.setMinimumFractionDigits(2);
      numberFormat.setGroupingUsed(false);
      return ji.a().f(numberFormat.format(paramDouble));
    } catch (Exception exception) {
      return paramDouble.toString();
    } 
  }
  
  public static String b(String paramString) {
    try {
      return ji.a().f(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  protected String a(String paramString) {
    try {
      return ji.a().c(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */