import com.github.mikephil.charting.data.Entry;
import java.text.DecimalFormat;

public class chp implements chl, chn {
  private static String[] a = new String[] { "", "k", "m", "b", "t" };
  
  private static final int b = 5;
  
  private DecimalFormat c = new DecimalFormat("###E00");
  
  private String d = "";
  
  public chp() {}
  
  public chp(String paramString) {
    this();
    this.d = paramString;
  }
  
  private String a(double paramDouble) {
    String str = this.c.format(paramDouble);
    int i = Character.getNumericValue(str.charAt(str.length() - 1));
    int j = Character.getNumericValue(str.charAt(str.length() - 2));
    i = Integer.valueOf(j + "" + i).intValue();
    str = str.replaceAll("E[0-9][0-9]", a[i / 3]);
    while (true) {
      if (str.length() > 5 || str.matches("[0-9]+\\.[a-z]")) {
        str = str.substring(0, str.length() - 2) + str.substring(str.length() - 1);
        continue;
      } 
      return str;
    } 
  }
  
  public int a() {
    return 0;
  }
  
  public String a(float paramFloat, cfj paramcfj) {
    return a(paramFloat) + this.d;
  }
  
  public String a(float paramFloat, Entry paramEntry, int paramInt, clh paramclh) {
    return a(paramFloat) + this.d;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public void a(String[] paramArrayOfString) {
    a = paramArrayOfString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */