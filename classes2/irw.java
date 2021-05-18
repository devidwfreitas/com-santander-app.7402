public class irw {
  private static irw b;
  
  private irx a;
  
  public static irw a() {
    if (b == null)
      b = new irw(); 
    return b;
  }
  
  public void a(irx paramirx) {
    this.a = paramirx;
  }
  
  public void a(String paramString, Object paramObject) {
    if (this.a != null)
      this.a.a(paramString, paramObject); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\irw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */