package android.support.v7.app;

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
  
  public static ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarDescription(ActionBarDrawerToggleHoneycomb$SetIndicatorInfo paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo, Activity paramActivity, int paramInt) {
    ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo = paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    if (paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo == null)
      actionBarDrawerToggleHoneycomb$SetIndicatorInfo = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(paramActivity); 
    if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator != null)
      try {
        ActionBar actionBar = paramActivity.getActionBar();
        actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, new Object[] { Integer.valueOf(paramInt) });
        if (Build.VERSION.SDK_INT <= 19)
          actionBar.setSubtitle(actionBar.getSubtitle()); 
        return actionBarDrawerToggleHoneycomb$SetIndicatorInfo;
      } catch (Exception exception) {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", exception);
        return actionBarDrawerToggleHoneycomb$SetIndicatorInfo;
      }  
    return actionBarDrawerToggleHoneycomb$SetIndicatorInfo;
  }
  
  public static ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarUpIndicator(ActionBarDrawerToggleHoneycomb$SetIndicatorInfo paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo, Activity paramActivity, Drawable paramDrawable, int paramInt) {
    paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(paramActivity);
    if (paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator != null)
      try {
        ActionBar actionBar = paramActivity.getActionBar();
        paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator.invoke(actionBar, new Object[] { paramDrawable });
        paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, new Object[] { Integer.valueOf(paramInt) });
        return paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
      } catch (Exception exception) {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", exception);
        return paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
      }  
    if (paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo.upIndicatorView != null) {
      paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo.upIndicatorView.setImageDrawable(paramDrawable);
      return paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    } 
    Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
    return paramActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggleHoneycomb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */