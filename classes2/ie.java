public class ie {
  private static ie b;
  
  private io a;
  
  public ie(il paramil, in paramin) {
    this.a = ic.a(paramil, paramin, false);
  }
  
  public static ie a(il paramil, in paramin) {
    if (b == null)
      b = new ie(paramil, paramin); 
    return b;
  }
  
  public void a(ir paramir, ih paramih) {
    iu iu = new iu(paramir, paramih);
    (new ig(this.a, new if())).execute((Object[])new iu[] { iu });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */