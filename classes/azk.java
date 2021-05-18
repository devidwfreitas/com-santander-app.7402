import android.graphics.PointF;
import java.util.List;

public class azk extends aze<PointF> {
  private final PointF b = new PointF();
  
  public azk(List<axz<PointF>> paramList) {
    super(paramList);
  }
  
  public PointF b(axz<PointF> paramaxz, float paramFloat) {
    if (paramaxz.a == null || paramaxz.b == null)
      throw new IllegalStateException("Missing values for keyframe."); 
    PointF pointF2 = (PointF)paramaxz.a;
    PointF pointF1 = (PointF)paramaxz.b;
    PointF pointF3 = this.b;
    float f1 = pointF2.x;
    float f2 = pointF1.x;
    float f3 = pointF2.x;
    float f4 = pointF2.y;
    pointF3.set(f1 + (f2 - f3) * paramFloat, (pointF1.y - pointF2.y) * paramFloat + f4);
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */