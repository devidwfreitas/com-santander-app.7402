import java.math.RoundingMode;
import java.text.NumberFormat;

public class aet {
  public static String a(Double paramDouble) {
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setMaximumFractionDigits(1);
    numberFormat.setMinimumFractionDigits(1);
    numberFormat.setMaximumIntegerDigits(3);
    numberFormat.setRoundingMode(RoundingMode.HALF_DOWN);
    return numberFormat.format(paramDouble).replace(",", ".");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */