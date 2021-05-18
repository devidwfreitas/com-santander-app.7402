package android.support.v7.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {
  private final ActionBarDrawerToggle$Delegate mActivityImpl;
  
  private final int mCloseDrawerContentDescRes;
  
  boolean mDrawerIndicatorEnabled = true;
  
  private final DrawerLayout mDrawerLayout;
  
  private boolean mDrawerSlideAnimationEnabled = true;
  
  private boolean mHasCustomUpIndicator;
  
  private Drawable mHomeAsUpIndicator;
  
  private final int mOpenDrawerContentDescRes;
  
  private DrawerArrowDrawable mSlider;
  
  View.OnClickListener mToolbarNavigationClickListener;
  
  private boolean mWarnedForDisplayHomeAsUp = false;
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, @StringRes int paramInt1, @StringRes int paramInt2) {
    this(paramActivity, null, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, Toolbar paramToolbar, @StringRes int paramInt1, @StringRes int paramInt2) {
    this(paramActivity, paramToolbar, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  ActionBarDrawerToggle(Activity paramActivity, Toolbar paramToolbar, DrawerLayout paramDrawerLayout, DrawerArrowDrawable paramDrawerArrowDrawable, @StringRes int paramInt1, @StringRes int paramInt2) {
    if (paramToolbar != null) {
      this.mActivityImpl = new ActionBarDrawerToggle$ToolbarCompatDelegate(paramToolbar);
      paramToolbar.setNavigationOnClickListener(new ActionBarDrawerToggle$1(this));
    } else if (paramActivity instanceof ActionBarDrawerToggle$DelegateProvider) {
      this.mActivityImpl = ((ActionBarDrawerToggle$DelegateProvider)paramActivity).getDrawerToggleDelegate();
    } else if (Build.VERSION.SDK_INT >= 18) {
      this.mActivityImpl = new ActionBarDrawerToggle$JellybeanMr2Delegate(paramActivity);
    } else if (Build.VERSION.SDK_INT >= 14) {
      this.mActivityImpl = new ActionBarDrawerToggle$IcsDelegate(paramActivity);
    } else if (Build.VERSION.SDK_INT >= 11) {
      this.mActivityImpl = new ActionBarDrawerToggle$HoneycombDelegate(paramActivity);
    } else {
      this.mActivityImpl = new ActionBarDrawerToggle$DummyDelegate(paramActivity);
    } 
    this.mDrawerLayout = paramDrawerLayout;
    this.mOpenDrawerContentDescRes = paramInt1;
    this.mCloseDrawerContentDescRes = paramInt2;
    if (paramDrawerArrowDrawable == null) {
      this.mSlider = new DrawerArrowDrawable(this.mActivityImpl.getActionBarThemedContext());
    } else {
      this.mSlider = paramDrawerArrowDrawable;
    } 
    this.mHomeAsUpIndicator = getThemeUpIndicator();
  }
  
  private void setPosition(float paramFloat) {
    if (paramFloat == 1.0F) {
      this.mSlider.setVerticalMirror(true);
    } else if (paramFloat == 0.0F) {
      this.mSlider.setVerticalMirror(false);
    } 
    this.mSlider.setProgress(paramFloat);
  }
  
  @NonNull
  public DrawerArrowDrawable getDrawerArrowDrawable() {
    return this.mSlider;
  }
  
  Drawable getThemeUpIndicator() {
    return this.mActivityImpl.getThemeUpIndicator();
  }
  
  public View.OnClickListener getToolbarNavigationClickListener() {
    return this.mToolbarNavigationClickListener;
  }
  
  public boolean isDrawerIndicatorEnabled() {
    return this.mDrawerIndicatorEnabled;
  }
  
  public boolean isDrawerSlideAnimationEnabled() {
    return this.mDrawerSlideAnimationEnabled;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    if (!this.mHasCustomUpIndicator)
      this.mHomeAsUpIndicator = getThemeUpIndicator(); 
    syncState();
  }
  
  public void onDrawerClosed(View paramView) {
    setPosition(0.0F);
    if (this.mDrawerIndicatorEnabled)
      setActionBarDescription(this.mOpenDrawerContentDescRes); 
  }
  
  public void onDrawerOpened(View paramView) {
    setPosition(1.0F);
    if (this.mDrawerIndicatorEnabled)
      setActionBarDescription(this.mCloseDrawerContentDescRes); 
  }
  
  public void onDrawerSlide(View paramView, float paramFloat) {
    if (this.mDrawerSlideAnimationEnabled) {
      setPosition(Math.min(1.0F, Math.max(0.0F, paramFloat)));
      return;
    } 
    setPosition(0.0F);
  }
  
  public void onDrawerStateChanged(int paramInt) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    if (paramMenuItem != null && paramMenuItem.getItemId() == 16908332 && this.mDrawerIndicatorEnabled) {
      toggle();
      return true;
    } 
    return false;
  }
  
  void setActionBarDescription(int paramInt) {
    this.mActivityImpl.setActionBarDescription(paramInt);
  }
  
  void setActionBarUpIndicator(Drawable paramDrawable, int paramInt) {
    if (!this.mWarnedForDisplayHomeAsUp && !this.mActivityImpl.isNavigationVisible()) {
      Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
      this.mWarnedForDisplayHomeAsUp = true;
    } 
    this.mActivityImpl.setActionBarUpIndicator(paramDrawable, paramInt);
  }
  
  public void setDrawerArrowDrawable(@NonNull DrawerArrowDrawable paramDrawerArrowDrawable) {
    this.mSlider = paramDrawerArrowDrawable;
    syncState();
  }
  
  public void setDrawerIndicatorEnabled(boolean paramBoolean) {
    if (paramBoolean != this.mDrawerIndicatorEnabled) {
      if (paramBoolean) {
        int i;
        DrawerArrowDrawable drawerArrowDrawable = this.mSlider;
        if (this.mDrawerLayout.isDrawerOpen(8388611)) {
          i = this.mCloseDrawerContentDescRes;
        } else {
          i = this.mOpenDrawerContentDescRes;
        } 
        setActionBarUpIndicator((Drawable)drawerArrowDrawable, i);
      } else {
        setActionBarUpIndicator(this.mHomeAsUpIndicator, 0);
      } 
      this.mDrawerIndicatorEnabled = paramBoolean;
    } 
  }
  
  public void setDrawerSlideAnimationEnabled(boolean paramBoolean) {
    this.mDrawerSlideAnimationEnabled = paramBoolean;
    if (!paramBoolean)
      setPosition(0.0F); 
  }
  
  public void setHomeAsUpIndicator(int paramInt) {
    Drawable drawable = null;
    if (paramInt != 0)
      drawable = this.mDrawerLayout.getResources().getDrawable(paramInt); 
    setHomeAsUpIndicator(drawable);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable) {
    if (paramDrawable == null) {
      this.mHomeAsUpIndicator = getThemeUpIndicator();
      this.mHasCustomUpIndicator = false;
    } else {
      this.mHomeAsUpIndicator = paramDrawable;
      this.mHasCustomUpIndicator = true;
    } 
    if (!this.mDrawerIndicatorEnabled)
      setActionBarUpIndicator(this.mHomeAsUpIndicator, 0); 
  }
  
  public void setToolbarNavigationClickListener(View.OnClickListener paramOnClickListener) {
    this.mToolbarNavigationClickListener = paramOnClickListener;
  }
  
  public void syncState() {
    if (this.mDrawerLayout.isDrawerOpen(8388611)) {
      setPosition(1.0F);
    } else {
      setPosition(0.0F);
    } 
    if (this.mDrawerIndicatorEnabled) {
      int i;
      DrawerArrowDrawable drawerArrowDrawable = this.mSlider;
      if (this.mDrawerLayout.isDrawerOpen(8388611)) {
        i = this.mCloseDrawerContentDescRes;
      } else {
        i = this.mOpenDrawerContentDescRes;
      } 
      setActionBarUpIndicator((Drawable)drawerArrowDrawable, i);
    } 
  }
  
  void toggle() {
    int i = this.mDrawerLayout.getDrawerLockMode(8388611);
    if (this.mDrawerLayout.isDrawerVisible(8388611) && i != 2) {
      this.mDrawerLayout.closeDrawer(8388611);
      return;
    } 
    if (i != 1) {
      this.mDrawerLayout.openDrawer(8388611);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */