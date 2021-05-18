import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

public final class crp extends LruCache<crw, Bitmap> {
  public crp(Context paramContext) {
    super(a(paramContext));
  }
  
  private static int a(Context paramContext) {
    ActivityManager activityManager = (ActivityManager)paramContext.getSystemService("activity");
    if (((paramContext.getApplicationInfo()).flags & 0x100000) != 0) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      i = activityManager.getLargeMemoryClass();
      return (int)((i * 1048576) * 0.33F);
    } 
    int i = activityManager.getMemoryClass();
    return (int)((i * 1048576) * 0.33F);
  }
  
  protected int a(crw paramcrw, Bitmap paramBitmap) {
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
  
  protected void a(boolean paramBoolean, crw paramcrw, Bitmap paramBitmap1, Bitmap paramBitmap2) {
    super.entryRemoved(paramBoolean, paramcrw, paramBitmap1, paramBitmap2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */