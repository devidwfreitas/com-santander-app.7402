package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;

class AppCompatDelegateImplBase$ActionBarDrawableToggleImpl implements ActionBarDrawerToggle$Delegate {
  public Context getActionBarThemedContext() {
    return AppCompatDelegateImplBase.this.getActionBarThemedContext();
  }
  
  public Drawable getThemeUpIndicator() {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), null, new int[] { R.attr.homeAsUpIndicator });
    Drawable drawable = tintTypedArray.getDrawable(0);
    tintTypedArray.recycle();
    return drawable;
  }
  
  public boolean isNavigationVisible() {
    ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
    return (actionBar != null && (actionBar.getDisplayOptions() & 0x4) != 0);
  }
  
  public void setActionBarDescription(int paramInt) {
    ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
    if (actionBar != null)
      actionBar.setHomeActionContentDescription(paramInt); 
  }
  
  public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt) {
    ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
    if (actionBar != null) {
      actionBar.setHomeAsUpIndicator(paramDrawable);
      actionBar.setHomeActionContentDescription(paramInt);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplBase$ActionBarDrawableToggleImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */