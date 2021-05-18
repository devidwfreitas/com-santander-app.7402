import java.util.List;

public class azb extends aze<Float> {
  public azb(List<axz<Float>> paramList) {
    super(paramList);
  }
  
  Float b(axz<Float> paramaxz, float paramFloat) {
    if (paramaxz.a == null || paramaxz.b == null)
      throw new IllegalStateException("Missing values for keyframe."); 
    return Float.valueOf(bex.a(((Float)paramaxz.a).floatValue(), ((Float)paramaxz.b).floatValue(), paramFloat));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */