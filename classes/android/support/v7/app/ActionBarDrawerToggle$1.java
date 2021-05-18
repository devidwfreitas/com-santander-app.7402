package android.support.v7.app;

import android.view.View;

class ActionBarDrawerToggle$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    if (ActionBarDrawerToggle.this.mDrawerIndicatorEnabled) {
      ActionBarDrawerToggle.this.toggle();
      return;
    } 
    if (ActionBarDrawerToggle.this.mToolbarNavigationClickListener != null) {
      ActionBarDrawerToggle.this.mToolbarNavigationClickListener.onClick(paramView);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */