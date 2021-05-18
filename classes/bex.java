import android.graphics.Path;
import android.graphics.PointF;
import android.support.annotation.FloatRange;

public class bex {
  public static double a(double paramDouble1, double paramDouble2, @FloatRange(from = 0.0D, to = 1.0D) double paramDouble3) {
    return (paramDouble2 - paramDouble1) * paramDouble3 + paramDouble1;
  }
  
  public static float a(float paramFloat1, float paramFloat2, @FloatRange(from = 0.0D, to = 1.0D) float paramFloat3) {
    return (paramFloat2 - paramFloat1) * paramFloat3 + paramFloat1;
  }
  
  public static int a(float paramFloat1, float paramFloat2) {
    return a((int)paramFloat1, (int)paramFloat2);
  }
  
  public static int a(int paramInt1, int paramInt2) {
    return paramInt1 - b(paramInt1, paramInt2) * paramInt2;
  }
  
  public static int a(int paramInt1, int paramInt2, @FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    return (int)(paramInt1 + (paramInt2 - paramInt1) * paramFloat);
  }
  
  public static PointF a(PointF paramPointF1, PointF paramPointF2) {
    return new PointF(paramPointF1.x + paramPointF2.x, paramPointF1.y + paramPointF2.y);
  }
  
  public static void a(bdd parambdd, Path paramPath) {
    paramPath.reset();
    PointF pointF = parambdd.a();
    paramPath.moveTo(pointF.x, pointF.y);
    pointF = new PointF(pointF.x, pointF.y);
    for (int i = 0; i < parambdd.c().size(); i++) {
      azy azy = parambdd.c().get(i);
      PointF pointF1 = azy.a();
      PointF pointF2 = azy.b();
      PointF pointF3 = azy.c();
      if (pointF1.equals(pointF) && pointF2.equals(pointF3)) {
        paramPath.lineTo(pointF3.x, pointF3.y);
      } else {
        paramPath.cubicTo(pointF1.x, pointF1.y, pointF2.x, pointF2.y, pointF3.x, pointF3.y);
      } 
      pointF.set(pointF3.x, pointF3.y);
    } 
    if (parambdd.b())
      paramPath.close(); 
  }
  
  public static float b(float paramFloat1, float paramFloat2, float paramFloat3) {
    return Math.max(paramFloat2, Math.min(paramFloat3, paramFloat1));
  }
  
  private static int b(int paramInt1, int paramInt2) {
    int j = paramInt1 / paramInt2;
    int i = j;
    if ((paramInt1 ^ paramInt2) < 0) {
      i = j;
      if (j * paramInt2 != paramInt1)
        i = j - 1; 
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */