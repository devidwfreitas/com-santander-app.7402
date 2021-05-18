import android.content.Context;
import android.util.DisplayMetrics;

public class mxi {
  public static int a(int paramInt, Context paramContext) {
    DisplayMetrics displayMetrics = paramContext.getResources().getDisplayMetrics();
    float f = paramInt;
    return (int)((displayMetrics.density * f) + 0.5D);
  }
  
  public static int b(int paramInt, Context paramContext) {
    DisplayMetrics displayMetrics = paramContext.getResources().getDisplayMetrics();
    return (int)((paramInt / displayMetrics.density) + 0.5D);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */