import android.util.Log;

public class iox {
  private static final String a = "Balances";
  
  @eks(a = "balanceAvailable")
  private String b;
  
  @eks(a = "accountingBalance")
  private String c;
  
  public String a() {
    try {
      return nab.a().c(this.c);
    } catch (Exception exception) {
      Log.e("Balances", "getAccountingBalance", exception);
      return "0";
    } 
  }
  
  public String b() {
    try {
      String str2 = nab.a().c(this.b);
      String str1 = str2;
      if (str2 != null) {
        str2 = str2.replaceAll("\\+", "");
        str1 = str2;
        if (str2.contains("-")) {
          str1 = str2.replaceAll("-", "");
          str1 = "-" + str1;
        } 
      } 
      return str1;
    } catch (Exception exception) {
      Log.e("Balances", "getBalanceAvailable", exception);
      return "0";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */