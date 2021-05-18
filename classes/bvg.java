public class bvg {
  private final String a;
  
  private final String b;
  
  private final Boolean c;
  
  private bvg(bvi parambvi) {
    this.a = bvi.a(parambvi);
    this.b = bvi.b(parambvi);
    this.c = bvi.c(parambvi);
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public Boolean c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */