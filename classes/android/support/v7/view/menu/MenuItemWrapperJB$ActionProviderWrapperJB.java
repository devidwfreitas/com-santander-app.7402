package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.ActionProvider;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

class MenuItemWrapperJB$ActionProviderWrapperJB extends MenuItemWrapperICS$ActionProviderWrapper implements ActionProvider.VisibilityListener {
  ActionProvider.VisibilityListener mListener;
  
  public MenuItemWrapperJB$ActionProviderWrapperJB(Context paramContext, ActionProvider paramActionProvider) {
    super(paramMenuItemWrapperJB, paramContext, paramActionProvider);
  }
  
  public boolean isVisible() {
    return this.mInner.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean) {
    if (this.mListener != null)
      this.mListener.onActionProviderVisibilityChanged(paramBoolean); 
  }
  
  public View onCreateActionView(MenuItem paramMenuItem) {
    return this.mInner.onCreateActionView(paramMenuItem);
  }
  
  public boolean overridesItemVisibility() {
    return this.mInner.overridesItemVisibility();
  }
  
  public void refreshVisibility() {
    this.mInner.refreshVisibility();
  }
  
  public void setVisibilityListener(ActionProvider.VisibilityListener paramVisibilityListener) {
    this.mListener = paramVisibilityListener;
    ActionProvider actionProvider = this.mInner;
    if (paramVisibilityListener != null) {
      MenuItemWrapperJB$ActionProviderWrapperJB menuItemWrapperJB$ActionProviderWrapperJB = this;
    } else {
      paramVisibilityListener = null;
    } 
    actionProvider.setVisibilityListener((ActionProvider.VisibilityListener)paramVisibilityListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperJB$ActionProviderWrapperJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */