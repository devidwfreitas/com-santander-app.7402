public class kus {
  @eks(a = "name")
  private String a;
  
  @eks(a = "info")
  private String b;
  
  @eks(a = "hide")
  private boolean c;
  
  private int d = -1;
  
  public int a() {
    return this.d;
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.b;
  }
  
  public boolean d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */