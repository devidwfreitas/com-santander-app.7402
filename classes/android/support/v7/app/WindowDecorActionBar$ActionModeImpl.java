package android.support.v7.app;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.ActionMode;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class WindowDecorActionBar$ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
  private final Context mActionModeContext;
  
  private ActionMode.Callback mCallback;
  
  private WeakReference<View> mCustomView;
  
  private final MenuBuilder mMenu;
  
  public WindowDecorActionBar$ActionModeImpl(Context paramContext, ActionMode.Callback paramCallback) {
    this.mActionModeContext = paramContext;
    this.mCallback = paramCallback;
    this.mMenu = (new MenuBuilder(paramContext)).setDefaultShowAsAction(1);
    this.mMenu.setCallback(this);
  }
  
  public boolean dispatchOnCreate() {
    this.mMenu.stopDispatchingItemsChanged();
    try {
      return this.mCallback.onCreateActionMode(this, (Menu)this.mMenu);
    } finally {
      this.mMenu.startDispatchingItemsChanged();
    } 
  }
  
  public void finish() {
    if (WindowDecorActionBar.this.mActionMode != this)
      return; 
    if (!WindowDecorActionBar.checkShowingFlags(WindowDecorActionBar.this.mHiddenByApp, WindowDecorActionBar.this.mHiddenBySystem, false)) {
      WindowDecorActionBar.this.mDeferredDestroyActionMode = this;
      WindowDecorActionBar.this.mDeferredModeDestroyCallback = this.mCallback;
    } else {
      this.mCallback.onDestroyActionMode(this);
    } 
    this.mCallback = null;
    WindowDecorActionBar.this.animateToMode(false);
    WindowDecorActionBar.this.mContextView.closeMode();
    WindowDecorActionBar.this.mDecorToolbar.getViewGroup().sendAccessibilityEvent(32);
    WindowDecorActionBar.this.mOverlayLayout.setHideOnContentScrollEnabled(WindowDecorActionBar.this.mHideOnContentScroll);
    WindowDecorActionBar.this.mActionMode = null;
  }
  
  public View getCustomView() {
    return (this.mCustomView != null) ? this.mCustomView.get() : null;
  }
  
  public Menu getMenu() {
    return (Menu)this.mMenu;
  }
  
  public MenuInflater getMenuInflater() {
    return (MenuInflater)new SupportMenuInflater(this.mActionModeContext);
  }
  
  public CharSequence getSubtitle() {
    return WindowDecorActionBar.this.mContextView.getSubtitle();
  }
  
  public CharSequence getTitle() {
    return WindowDecorActionBar.this.mContextView.getTitle();
  }
  
  public void invalidate() {
    if (WindowDecorActionBar.this.mActionMode != this)
      return; 
    this.mMenu.stopDispatchingItemsChanged();
    try {
      this.mCallback.onPrepareActionMode(this, (Menu)this.mMenu);
      return;
    } finally {
      this.mMenu.startDispatchingItemsChanged();
    } 
  }
  
  public boolean isTitleOptional() {
    return WindowDecorActionBar.this.mContextView.isTitleOptional();
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder) {}
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    return (this.mCallback != null) ? this.mCallback.onActionItemClicked(this, paramMenuItem) : false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {
    if (this.mCallback == null)
      return; 
    invalidate();
    WindowDecorActionBar.this.mContextView.showOverflowMenu();
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    boolean bool = true;
    if (this.mCallback == null)
      return false; 
    if (paramSubMenuBuilder.hasVisibleItems()) {
      (new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), (MenuBuilder)paramSubMenuBuilder)).show();
      return true;
    } 
    return bool;
  }
  
  public void setCustomView(View paramView) {
    WindowDecorActionBar.this.mContextView.setCustomView(paramView);
    this.mCustomView = new WeakReference<View>(paramView);
  }
  
  public void setSubtitle(int paramInt) {
    setSubtitle(WindowDecorActionBar.this.mContext.getResources().getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    WindowDecorActionBar.this.mContextView.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt) {
    setTitle(WindowDecorActionBar.this.mContext.getResources().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    WindowDecorActionBar.this.mContextView.setTitle(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean) {
    super.setTitleOptionalHint(paramBoolean);
    WindowDecorActionBar.this.mContextView.setTitleOptional(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\WindowDecorActionBar$ActionModeImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */