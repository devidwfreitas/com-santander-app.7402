package android.support.v4.graphics;

import android.graphics.Bitmap;
import android.os.Build;

public final class BitmapCompat {
  static final BitmapCompat$BitmapImpl IMPL = new BitmapCompat$BaseBitmapImpl();
  
  public static int getAllocationByteCount(Bitmap paramBitmap) {
    return IMPL.getAllocationByteCount(paramBitmap);
  }
  
  public static boolean hasMipMap(Bitmap paramBitmap) {
    return IMPL.hasMipMap(paramBitmap);
  }
  
  public static void setHasMipMap(Bitmap paramBitmap, boolean paramBoolean) {
    IMPL.setHasMipMap(paramBitmap, paramBoolean);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19) {
      IMPL = new BitmapCompat$KitKatBitmapCompatImpl();
      return;
    } 
    if (i >= 18) {
      IMPL = new BitmapCompat$JbMr2BitmapCompatImpl();
      return;
    } 
    if (i >= 12) {
      IMPL = new BitmapCompat$HcMr1BitmapCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\BitmapCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */