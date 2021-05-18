import android.content.Context;

public class jb {
  private static jb b;
  
  @nnc
  public jd a;
  
  public jb(Context paramContext) {
    hs.a().a(new hw(paramContext)).a().a(this);
  }
  
  public static jb a(Context paramContext) {
    if (b == null)
      b = new jb(paramContext); 
    return b;
  }
  
  public void a(iq paramiq, ij paramij) {
    iy iy = new iy(paramiq, paramij);
    this.a.execute((Object[])new iy[] { iy });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */