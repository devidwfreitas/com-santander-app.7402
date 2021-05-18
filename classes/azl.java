import java.util.List;

public class azl extends aze<baj> {
  public azl(List<axz<baj>> paramList) {
    super(paramList);
  }
  
  public baj b(axz<baj> paramaxz, float paramFloat) {
    if (paramaxz.a == null || paramaxz.b == null)
      throw new IllegalStateException("Missing values for keyframe."); 
    baj baj2 = (baj)paramaxz.a;
    baj baj1 = (baj)paramaxz.b;
    return new baj(bex.a(baj2.a(), baj1.a(), paramFloat), bex.a(baj2.b(), baj1.b(), paramFloat));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */