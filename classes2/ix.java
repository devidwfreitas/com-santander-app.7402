public class ix {
  private static ix a;
  
  private String b;
  
  public static ix a() {
    if (a == null)
      a = new ix(); 
    return a;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */