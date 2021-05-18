package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.InputStream;

public final class RoundedBitmapDrawableFactory {
  private static final String TAG = "RoundedBitmapDrawableFactory";
  
  public static RoundedBitmapDrawable create(Resources paramResources, Bitmap paramBitmap) {
    return (RoundedBitmapDrawable)((Build.VERSION.SDK_INT >= 21) ? new RoundedBitmapDrawable21(paramResources, paramBitmap) : new RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable(paramResources, paramBitmap));
  }
  
  public static RoundedBitmapDrawable create(Resources paramResources, InputStream paramInputStream) {
    RoundedBitmapDrawable roundedBitmapDrawable = create(paramResources, BitmapFactory.decodeStream(paramInputStream));
    if (roundedBitmapDrawable.getBitmap() == null)
      Log.w("RoundedBitmapDrawableFactory", "RoundedBitmapDrawable cannot decode " + paramInputStream); 
    return roundedBitmapDrawable;
  }
  
  public static RoundedBitmapDrawable create(Resources paramResources, String paramString) {
    RoundedBitmapDrawable roundedBitmapDrawable = create(paramResources, BitmapFactory.decodeFile(paramString));
    if (roundedBitmapDrawable.getBitmap() == null)
      Log.w("RoundedBitmapDrawableFactory", "RoundedBitmapDrawable cannot decode " + paramString); 
    return roundedBitmapDrawable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\RoundedBitmapDrawableFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */