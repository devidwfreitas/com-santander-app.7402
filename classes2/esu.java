import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class esu extends etb {
  private static final Pattern a = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);
  
  public est a(eqm parameqm) {
    double d = 0.0D;
    String str1 = c(parameqm);
    Matcher matcher = a.matcher(str1);
    if (!matcher.matches())
      return null; 
    String str2 = matcher.group(4);
    try {
      double d1 = Double.parseDouble(matcher.group(1));
      if (d1 > 90.0D || d1 < -90.0D)
        return null; 
      double d2 = Double.parseDouble(matcher.group(2));
      if (d2 > 180.0D || d2 < -180.0D)
        return null; 
      String str = matcher.group(3);
      if (str != null) {
        d = Double.parseDouble(matcher.group(3));
        if (d < 0.0D)
          return null; 
      } 
      return new est(d1, d2, d, str2);
    } catch (NumberFormatException numberFormatException) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */