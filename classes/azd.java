import java.util.List;

public class azd extends aze<Integer> {
  public azd(List<axz<Integer>> paramList) {
    super(paramList);
  }
  
  Integer b(axz<Integer> paramaxz, float paramFloat) {
    if (paramaxz.a == null || paramaxz.b == null)
      throw new IllegalStateException("Missing values for keyframe."); 
    return Integer.valueOf(bex.a(((Integer)paramaxz.a).intValue(), ((Integer)paramaxz.b).intValue(), paramFloat));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */