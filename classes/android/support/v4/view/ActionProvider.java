package android.support.v4.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class ActionProvider {
  private static final String TAG = "ActionProvider(support)";
  
  private final Context mContext;
  
  private ActionProvider$SubUiVisibilityListener mSubUiVisibilityListener;
  
  private ActionProvider$VisibilityListener mVisibilityListener;
  
  public ActionProvider(Context paramContext) {
    this.mContext = paramContext;
  }
  
  public Context getContext() {
    return this.mContext;
  }
  
  public boolean hasSubMenu() {
    return false;
  }
  
  public boolean isVisible() {
    return true;
  }
  
  public abstract View onCreateActionView();
  
  public View onCreateActionView(MenuItem paramMenuItem) {
    return onCreateActionView();
  }
  
  public boolean onPerformDefaultAction() {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public boolean overridesItemVisibility() {
    return false;
  }
  
  public void refreshVisibility() {
    if (this.mVisibilityListener != null && overridesItemVisibility())
      this.mVisibilityListener.onActionProviderVisibilityChanged(isVisible()); 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void reset() {
    this.mVisibilityListener = null;
    this.mSubUiVisibilityListener = null;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setSubUiVisibilityListener(ActionProvider$SubUiVisibilityListener paramActionProvider$SubUiVisibilityListener) {
    this.mSubUiVisibilityListener = paramActionProvider$SubUiVisibilityListener;
  }
  
  public void setVisibilityListener(ActionProvider$VisibilityListener paramActionProvider$VisibilityListener) {
    if (this.mVisibilityListener != null && paramActionProvider$VisibilityListener != null)
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?"); 
    this.mVisibilityListener = paramActionProvider$VisibilityListener;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void subUiVisibilityChanged(boolean paramBoolean) {
    if (this.mSubUiVisibilityListener != null)
      this.mSubUiVisibilityListener.onSubUiVisibilityChanged(paramBoolean); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ActionProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */