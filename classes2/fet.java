import android.graphics.Rect;
import android.util.Log;
import java.util.Collections;
import java.util.List;

public class fet extends few {
  private static final String a = fet.class.getSimpleName();
  
  public static fdu c(fdu paramfdu1, fdu paramfdu2) {
    fdu fdu1 = paramfdu1;
    if (!paramfdu2.c(paramfdu1))
      while (true) {
        fdu1 = paramfdu1.a(3, 2);
        fdu fdu2 = paramfdu1.a(2, 1);
        if (!paramfdu2.c(fdu1)) {
          paramfdu1 = fdu2;
          if (paramfdu2.c(fdu2))
            return fdu2; 
          continue;
        } 
        return fdu1;
      }  
    while (true) {
      fdu fdu2 = fdu1.a(2, 3);
      paramfdu1 = fdu1.a(1, 2);
      if (!paramfdu2.c(paramfdu1))
        return paramfdu2.c(fdu2) ? fdu2 : fdu1; 
      fdu1 = paramfdu1;
    } 
  }
  
  public fdu a(List<fdu> paramList, fdu paramfdu) {
    if (paramfdu == null)
      return paramList.get(0); 
    Collections.sort(paramList, new feu(this, paramfdu));
    Log.i(a, "Viewfinder size: " + paramfdu);
    Log.i(a, "Preview in order of preference: " + paramList);
    return paramList.get(0);
  }
  
  public Rect b(fdu paramfdu1, fdu paramfdu2) {
    fdu fdu1 = c(paramfdu1, paramfdu2);
    Log.i(a, "Preview: " + paramfdu1 + "; Scaled: " + fdu1 + "; Want: " + paramfdu2);
    int i = (fdu1.a - paramfdu2.a) / 2;
    int j = (fdu1.b - paramfdu2.b) / 2;
    return new Rect(-i, -j, fdu1.a - i, fdu1.b - j);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */