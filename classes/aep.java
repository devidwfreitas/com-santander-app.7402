import java.text.NumberFormat;
import java.util.Locale;

public class aep {
  public static String a(Double paramDouble) {
    return (paramDouble == null) ? "" : NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(paramDouble).replace("R$", "");
  }
  
  public static String a(String paramString) {
    return (paramString == null) ? "" : a(Double.valueOf(Double.parseDouble(paramString.substring(0, paramString.length() - 2) + "." + paramString.substring(paramString.length() - 2, paramString.length()))));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */