import android.graphics.Rect;
import android.util.Log;

public class fep extends few {
  private static final String a = fep.class.getSimpleName();
  
  protected float a(fdu paramfdu1, fdu paramfdu2) {
    if (paramfdu1.a <= 0 || paramfdu1.b <= 0)
      return 0.0F; 
    fdu fdu1 = paramfdu1.b(paramfdu2);
    float f2 = fdu1.a * 1.0F / paramfdu1.a;
    float f1 = f2;
    if (f2 > 1.0F)
      f1 = (float)Math.pow((1.0F / f2), 1.1D); 
    f2 = fdu1.a * 1.0F / paramfdu2.a;
    f2 = fdu1.b * 1.0F / paramfdu2.b + f2;
    return f1 * 1.0F / f2 / f2;
  }
  
  public Rect b(fdu paramfdu1, fdu paramfdu2) {
    fdu fdu1 = paramfdu1.b(paramfdu2);
    Log.i(a, "Preview: " + paramfdu1 + "; Scaled: " + fdu1 + "; Want: " + paramfdu2);
    int i = (fdu1.a - paramfdu2.a) / 2;
    int j = (fdu1.b - paramfdu2.b) / 2;
    return new Rect(-i, -j, fdu1.a - i, fdu1.b - j);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */