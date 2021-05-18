package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.v7.view.ActionMode;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SpinnerAdapter;

public abstract class ActionBar {
  public static final int DISPLAY_HOME_AS_UP = 4;
  
  public static final int DISPLAY_SHOW_CUSTOM = 16;
  
  public static final int DISPLAY_SHOW_HOME = 2;
  
  public static final int DISPLAY_SHOW_TITLE = 8;
  
  public static final int DISPLAY_USE_LOGO = 1;
  
  @Deprecated
  public static final int NAVIGATION_MODE_LIST = 1;
  
  @Deprecated
  public static final int NAVIGATION_MODE_STANDARD = 0;
  
  @Deprecated
  public static final int NAVIGATION_MODE_TABS = 2;
  
  public abstract void addOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener paramActionBar$OnMenuVisibilityListener);
  
  @Deprecated
  public abstract void addTab(ActionBar$Tab paramActionBar$Tab);
  
  @Deprecated
  public abstract void addTab(ActionBar$Tab paramActionBar$Tab, int paramInt);
  
  @Deprecated
  public abstract void addTab(ActionBar$Tab paramActionBar$Tab, int paramInt, boolean paramBoolean);
  
  @Deprecated
  public abstract void addTab(ActionBar$Tab paramActionBar$Tab, boolean paramBoolean);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean collapseActionView() {
    return false;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void dispatchMenuVisibilityChanged(boolean paramBoolean) {}
  
  public abstract View getCustomView();
  
  public abstract int getDisplayOptions();
  
  public float getElevation() {
    return 0.0F;
  }
  
  public abstract int getHeight();
  
  public int getHideOffset() {
    return 0;
  }
  
  @Deprecated
  public abstract int getNavigationItemCount();
  
  @Deprecated
  public abstract int getNavigationMode();
  
  @Deprecated
  public abstract int getSelectedNavigationIndex();
  
  @Deprecated
  @Nullable
  public abstract ActionBar$Tab getSelectedTab();
  
  @Nullable
  public abstract CharSequence getSubtitle();
  
  @Deprecated
  public abstract ActionBar$Tab getTabAt(int paramInt);
  
  @Deprecated
  public abstract int getTabCount();
  
  public Context getThemedContext() {
    return null;
  }
  
  @Nullable
  public abstract CharSequence getTitle();
  
  public abstract void hide();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean invalidateOptionsMenu() {
    return false;
  }
  
  public boolean isHideOnContentScrollEnabled() {
    return false;
  }
  
  public abstract boolean isShowing();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isTitleTruncated() {
    return false;
  }
  
  @Deprecated
  public abstract ActionBar$Tab newTab();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  void onDestroy() {}
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent) {
    return false;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean onMenuKeyEvent(KeyEvent paramKeyEvent) {
    return false;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean openOptionsMenu() {
    return false;
  }
  
  @Deprecated
  public abstract void removeAllTabs();
  
  public abstract void removeOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener paramActionBar$OnMenuVisibilityListener);
  
  @Deprecated
  public abstract void removeTab(ActionBar$Tab paramActionBar$Tab);
  
  @Deprecated
  public abstract void removeTabAt(int paramInt);
  
  boolean requestFocus() {
    return false;
  }
  
  @Deprecated
  public abstract void selectTab(ActionBar$Tab paramActionBar$Tab);
  
  public abstract void setBackgroundDrawable(@Nullable Drawable paramDrawable);
  
  public abstract void setCustomView(int paramInt);
  
  public abstract void setCustomView(View paramView);
  
  public abstract void setCustomView(View paramView, ActionBar$LayoutParams paramActionBar$LayoutParams);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setDefaultDisplayHomeAsUpEnabled(boolean paramBoolean) {}
  
  public abstract void setDisplayHomeAsUpEnabled(boolean paramBoolean);
  
  public abstract void setDisplayOptions(int paramInt);
  
  public abstract void setDisplayOptions(int paramInt1, int paramInt2);
  
  public abstract void setDisplayShowCustomEnabled(boolean paramBoolean);
  
  public abstract void setDisplayShowHomeEnabled(boolean paramBoolean);
  
  public abstract void setDisplayShowTitleEnabled(boolean paramBoolean);
  
  public abstract void setDisplayUseLogoEnabled(boolean paramBoolean);
  
  public void setElevation(float paramFloat) {
    if (paramFloat != 0.0F)
      throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration."); 
  }
  
  public void setHideOffset(int paramInt) {
    if (paramInt != 0)
      throw new UnsupportedOperationException("Setting an explicit action bar hide offset is not supported in this action bar configuration."); 
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean) {
    if (paramBoolean)
      throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration."); 
  }
  
  public void setHomeActionContentDescription(@StringRes int paramInt) {}
  
  public void setHomeActionContentDescription(@Nullable CharSequence paramCharSequence) {}
  
  public void setHomeAsUpIndicator(@DrawableRes int paramInt) {}
  
  public void setHomeAsUpIndicator(@Nullable Drawable paramDrawable) {}
  
  public void setHomeButtonEnabled(boolean paramBoolean) {}
  
  public abstract void setIcon(@DrawableRes int paramInt);
  
  public abstract void setIcon(Drawable paramDrawable);
  
  @Deprecated
  public abstract void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar$OnNavigationListener paramActionBar$OnNavigationListener);
  
  public abstract void setLogo(@DrawableRes int paramInt);
  
  public abstract void setLogo(Drawable paramDrawable);
  
  @Deprecated
  public abstract void setNavigationMode(int paramInt);
  
  @Deprecated
  public abstract void setSelectedNavigationItem(int paramInt);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setShowHideAnimationEnabled(boolean paramBoolean) {}
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable) {}
  
  public abstract void setSubtitle(int paramInt);
  
  public abstract void setSubtitle(CharSequence paramCharSequence);
  
  public abstract void setTitle(@StringRes int paramInt);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setWindowTitle(CharSequence paramCharSequence) {}
  
  public abstract void show();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public ActionMode startActionMode(ActionMode.Callback paramCallback) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */