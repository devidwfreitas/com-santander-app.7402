import android.graphics.Rect;
import android.util.Log;
import java.util.Collections;
import java.util.List;

public abstract class few {
  private static final String a = few.class.getSimpleName();
  
  protected float a(fdu paramfdu1, fdu paramfdu2) {
    return 0.5F;
  }
  
  public fdu a(List<fdu> paramList, fdu paramfdu) {
    paramList = b(paramList, paramfdu);
    Log.i(a, "Viewfinder size: " + paramfdu);
    Log.i(a, "Preview in order of preference: " + paramList);
    return paramList.get(0);
  }
  
  public abstract Rect b(fdu paramfdu1, fdu paramfdu2);
  
  public List<fdu> b(List<fdu> paramList, fdu paramfdu) {
    if (paramfdu == null)
      return paramList; 
    Collections.sort(paramList, new fex(this, paramfdu));
    return paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\few.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */