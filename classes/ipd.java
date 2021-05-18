public class ipd {
  @eks(a = "ProductCode")
  private String a = "22";
  
  @eks(a = "BusinessBagCode")
  private String b = "CTAP";
  
  @eks(a = "checkingAccountIndex")
  private String c;
  
  public ipd(int paramInt) {
    this.c = String.valueOf(paramInt);
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */