import android.graphics.PointF;
import java.util.Collections;

public class azn extends ayy<PointF, PointF> {
  private final PointF b = new PointF();
  
  private final ayy<Float, Float> c;
  
  private final ayy<Float, Float> d;
  
  public azn(ayy<Float, Float> paramayy1, ayy<Float, Float> paramayy2) {
    super(Collections.emptyList());
    this.c = paramayy1;
    this.d = paramayy2;
  }
  
  public void a(float paramFloat) {
    this.c.a(paramFloat);
    this.d.a(paramFloat);
    this.b.set(((Float)this.c.b()).floatValue(), ((Float)this.d.b()).floatValue());
    for (int i = 0; i < this.a.size(); i++)
      ((ayz)this.a.get(i)).a(); 
  }
  
  PointF b(axz<PointF> paramaxz, float paramFloat) {
    return this.b;
  }
  
  public PointF d() {
    return b(null, 0.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */