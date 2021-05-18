import com.santander.app.contacorrente.domain.Conta;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class hyx {
  public static final String a = "%";
  
  public static final String b = "R$ ";
  
  public static float a(String paramString) {
    try {
      return Float.parseFloat(paramString.replace("R$", "").replace("%", "").replace(".", "").replace(",", ".").trim());
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public static float a(String paramString, int paramInt) {
    try {
      return a(String.format(a(), "%.2f", new Object[] { Double.valueOf(Float.parseFloat(paramString) / Math.pow(10.0D, paramInt)) }));
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public static String a(float paramFloat) {
    return String.format(a(), "%011.2f", new Object[] { Float.valueOf(paramFloat) }).replace(".", "").replace(",", "");
  }
  
  public static String a(Conta paramConta) {
    return String.format("%s / %s", new Object[] { paramConta.getAgencia(), naq.h(paramConta.getCuenta()) });
  }
  
  public static String a(String paramString, Object... paramVarArgs) {
    return String.format(a(), paramString, paramVarArgs);
  }
  
  public static Calendar a(String paramString1, String paramString2) {
    Date date = c(paramString2).parse(paramString1);
    Calendar calendar = Calendar.getInstance(a());
    calendar.setTime(date);
    return calendar;
  }
  
  public static Locale a() {
    return new Locale("pt", "BR");
  }
  
  public static float b(String paramString) {
    return a(paramString, 2);
  }
  
  public static NumberFormat b() {
    return DecimalFormat.getCurrencyInstance(a());
  }
  
  public static SimpleDateFormat c(String paramString) {
    return new SimpleDateFormat(paramString, a());
  }
  
  public static Calendar d(String paramString) {
    return a(paramString, "yyyy-MM-dd'T'HH:mm:ss");
  }
  
  public static int e(String paramString) {
    try {
      return Integer.parseInt(paramString);
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public static float f(String paramString) {
    if (Float.parseFloat(paramString) > 0.0F) {
      byte b1 = 3;
      return (new BigDecimal(paramString)).setScale(2, b1).floatValue();
    } 
    byte b = 2;
    return (new BigDecimal(paramString)).setScale(2, b).floatValue();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hyx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */