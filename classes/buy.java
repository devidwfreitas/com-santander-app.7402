public class buy extends Exception {
  public buz a;
  
  public buy(buz parambuz) {
    super("Type: " + parambuz.name());
    this.a = parambuz;
  }
  
  public buy(buz parambuz, Exception paramException) {
    super("Type: " + parambuz.name(), paramException);
    this.a = parambuz;
  }
  
  public buy(buz parambuz, String paramString) {
    super(paramString);
    this.a = parambuz;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */