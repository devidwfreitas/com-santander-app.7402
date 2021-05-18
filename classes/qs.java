import java.text.NumberFormat;

public class qs {
  @ekq
  @eks(a = "bank")
  private String a;
  
  @ekq
  @eks(a = "branch")
  private String b;
  
  @ekq
  @eks(a = "account")
  private String c;
  
  public qs(String paramString1, String paramString2, String paramString3) {
    this.a = paramString1;
    NumberFormat numberFormat = NumberFormat.getIntegerInstance();
    numberFormat.setMinimumIntegerDigits(4);
    numberFormat.setMaximumIntegerDigits(4);
    numberFormat.setGroupingUsed(false);
    this.b = String.valueOf(numberFormat.format(Integer.parseInt(paramString2)));
    numberFormat.setMinimumIntegerDigits(12);
    numberFormat.setMaximumIntegerDigits(12);
    this.c = String.valueOf(numberFormat.format(Integer.parseInt(paramString3)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\qs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */