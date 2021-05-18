public class hly implements hlv {
  private static hly a;
  
  private hmy b = new hnc();
  
  public static hly a() {
    return (a == null) ? new hly() : a;
  }
  
  private void b(hxl paramhxl, hlw paramhlw) {
    this.b.a(paramhxl, new hma(this, paramhlw));
  }
  
  private void c(hxl paramhxl, hlw paramhlw) {
    this.b.b(paramhxl, new hmb(this, paramhlw));
  }
  
  public void a(hlx paramhlx) {
    this.b.a("2", new hlz(this, paramhlx));
  }
  
  public void a(hxl paramhxl, hlw paramhlw) {
    if (paramhxl != null && paramhxl.a() == 11) {
      c(paramhxl, paramhlw);
      return;
    } 
    if (paramhxl != null && paramhxl.a() == 10) {
      b(paramhxl, paramhlw);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */