package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

class AppCompatDelegateImplV9$ActionModeCallbackWrapperV9 implements ActionMode.Callback {
  private ActionMode.Callback mWrapped;
  
  public AppCompatDelegateImplV9$ActionModeCallbackWrapperV9(ActionMode.Callback paramCallback) {
    this.mWrapped = paramCallback;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem) {
    return this.mWrapped.onActionItemClicked(paramActionMode, paramMenuItem);
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return this.mWrapped.onCreateActionMode(paramActionMode, paramMenu);
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {
    this.mWrapped.onDestroyActionMode(paramActionMode);
    if (AppCompatDelegateImplV9.this.mActionModePopup != null)
      AppCompatDelegateImplV9.this.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImplV9.this.mShowActionModePopup); 
    if (AppCompatDelegateImplV9.this.mActionModeView != null) {
      AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
      AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate((View)AppCompatDelegateImplV9.this.mActionModeView).alpha(0.0F);
      AppCompatDelegateImplV9.this.mFadeAnim.setListener((ViewPropertyAnimatorListener)new AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1(this));
    } 
    if (AppCompatDelegateImplV9.this.mAppCompatCallback != null)
      AppCompatDelegateImplV9.this.mAppCompatCallback.onSupportActionModeFinished(AppCompatDelegateImplV9.this.mActionMode); 
    AppCompatDelegateImplV9.this.mActionMode = null;
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return this.mWrapped.onPrepareActionMode(paramActionMode, paramMenu);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$ActionModeCallbackWrapperV9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */