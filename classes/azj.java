import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

public class azj extends aze<PointF> {
  private final PointF b = new PointF();
  
  private final float[] c = new float[2];
  
  private azg d;
  
  private PathMeasure e;
  
  public azj(List<? extends axz<PointF>> paramList) {
    super(paramList);
  }
  
  public PointF b(axz<PointF> paramaxz, float paramFloat) {
    azg azg1 = (azg)paramaxz;
    Path path = azg1.e();
    if (path == null)
      return (PointF)paramaxz.a; 
    if (this.d != azg1) {
      this.e = new PathMeasure(path, false);
      this.d = azg1;
    } 
    this.e.getPosTan(this.e.getLength() * paramFloat, this.c, null);
    this.b.set(this.c[0], this.c[1]);
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */