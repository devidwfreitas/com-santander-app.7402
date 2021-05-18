import android.graphics.Rect;

public class fes extends few {
  private static final String a = fes.class.getSimpleName();
  
  private static float a(float paramFloat) {
    float f = paramFloat;
    if (paramFloat < 1.0F)
      f = 1.0F / paramFloat; 
    return f;
  }
  
  protected float a(fdu paramfdu1, fdu paramfdu2) {
    if (paramfdu1.a <= 0 || paramfdu1.b <= 0)
      return 0.0F; 
    float f1 = a(paramfdu1.a * 1.0F / paramfdu2.a);
    float f2 = a(paramfdu1.b * 1.0F / paramfdu2.b);
    f1 = 1.0F / f1 / f2;
    f2 = a(paramfdu1.a * 1.0F / paramfdu1.b / paramfdu2.a * 1.0F / paramfdu2.b);
    return f1 * 1.0F / f2 / f2 / f2;
  }
  
  public Rect b(fdu paramfdu1, fdu paramfdu2) {
    return new Rect(0, 0, paramfdu2.a, paramfdu2.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */