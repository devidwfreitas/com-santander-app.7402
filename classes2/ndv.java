public class ndv implements ndu {
  private nda a;
  
  public ndv(nda paramnda) {
    this.a = paramnda;
  }
  
  public void a(String paramString) {
    if (paramString != null) {
      this.a.a(0, paramString, "idvalida.erro");
      return;
    } 
    this.a.a(4, "", "idvalida.end");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */