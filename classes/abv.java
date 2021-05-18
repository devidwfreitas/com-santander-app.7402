import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public class abv {
  public static String i(Double paramDouble) {
    try {
      NumberFormat numberFormat = DecimalFormat.getInstance(Locale.US);
      numberFormat.setMinimumFractionDigits(2);
      numberFormat.setGroupingUsed(false);
      return ji.a().f(numberFormat.format(paramDouble));
    } catch (Exception exception) {
      return paramDouble.toString();
    } 
  }
  
  public static String o(String paramString) {
    try {
      return ji.a().f(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  protected String n(String paramString) {
    try {
      return ji.a().c(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */