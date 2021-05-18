public class it {
  private static it a;
  
  private String b;
  
  public static it a() {
    if (a == null)
      a = new it(); 
    return a;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\it.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */