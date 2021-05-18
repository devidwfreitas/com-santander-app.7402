package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.util.Log;

@TargetApi(11)
@RequiresApi(11)
class ActionBarDrawerToggleHoneycomb {
  private static final String TAG = "ActionBarDrawerToggleHoneycomb";
  
  private static final int[] THEME_ATTRS = new int[] { 16843531 };
  
  public static Drawable getThemeUpIndicator(Activity paramActivity) {
    TypedArray typedArray = paramActivity.obtainStyledAttributes(THEME_ATTRS);
    Drawable drawable = typedArray.getDrawable(0);
    typedArray.recycle();
    return drawable;
  }
  
  public static Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt) {
    if (paramObject == null)
      paramObject = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(paramActivity); 
    ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo = (ActionBarDrawerToggleHoneycomb$SetIndicatorInfo)paramObject;
    if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator != null)
      try {
        ActionBar actionBar = paramActivity.getActionBar();
        actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, new Object[] { Integer.valueOf(paramInt) });
        if (Build.VERSION.SDK_INT <= 19)
          actionBar.setSubtitle(actionBar.getSubtitle()); 
        return paramObject;
      } catch (Exception exception) {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", exception);
        return paramObject;
      }  
    return paramObject;
  }
  
  public static Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt) {
    if (paramObject == null)
      paramObject = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(paramActivity); 
    ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo = (ActionBarDrawerToggleHoneycomb$SetIndicatorInfo)paramObject;
    if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator != null)
      try {
        ActionBar actionBar = paramActivity.getActionBar();
        actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator.invoke(actionBar, new Object[] { paramDrawable });
        actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, new Object[] { Integer.valueOf(paramInt) });
        return paramObject;
      } catch (Exception exception) {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", exception);
        return paramObject;
      }  
    if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo.upIndicatorView != null) {
      actionBarDrawerToggleHoneycomb$SetIndicatorInfo.upIndicatorView.setImageDrawable(paramDrawable);
      return paramObject;
    } 
    Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
    return paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActionBarDrawerToggleHoneycomb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */