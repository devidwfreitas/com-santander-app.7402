package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class ResourcesCompatApi23 {
  public static int getColor(Resources paramResources, int paramInt, Resources.Theme paramTheme) {
    return paramResources.getColor(paramInt, paramTheme);
  }
  
  public static ColorStateList getColorStateList(Resources paramResources, int paramInt, Resources.Theme paramTheme) {
    return paramResources.getColorStateList(paramInt, paramTheme);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\res\ResourcesCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */