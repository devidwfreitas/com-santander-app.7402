package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class ResourcesCompatApi21 {
  public static Drawable getDrawable(Resources paramResources, int paramInt, Resources.Theme paramTheme) {
    return paramResources.getDrawable(paramInt, paramTheme);
  }
  
  public static Drawable getDrawableForDensity(Resources paramResources, int paramInt1, int paramInt2, Resources.Theme paramTheme) {
    return paramResources.getDrawableForDensity(paramInt1, paramInt2, paramTheme);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\res\ResourcesCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */