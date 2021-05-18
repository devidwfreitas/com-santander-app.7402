public class bh {
  private static Object b = null;
  
  public Object a = null;
  
  private bh() {
    (new bj(this)).a();
  }
  
  public static bh a() {
    if (b == null)
      b = (new bi()).a(); 
    return (bh)b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */