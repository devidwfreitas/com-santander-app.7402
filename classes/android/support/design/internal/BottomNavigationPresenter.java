package android.support.design.internal;

import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationPresenter implements MenuPresenter {
  private int mId;
  
  private MenuBuilder mMenu;
  
  private BottomNavigationMenuView mMenuView;
  
  private boolean mUpdateSuspended = false;
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public int getId() {
    return this.mId;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    return this.mMenuView;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {
    this.mMenuView.initialize(this.mMenu);
    this.mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof BottomNavigationPresenter$SavedState)
      this.mMenuView.tryRestoreSelectedItemId(((BottomNavigationPresenter$SavedState)paramParcelable).selectedItemId); 
  }
  
  public Parcelable onSaveInstanceState() {
    BottomNavigationPresenter$SavedState bottomNavigationPresenter$SavedState = new BottomNavigationPresenter$SavedState();
    bottomNavigationPresenter$SavedState.selectedItemId = this.mMenuView.getSelectedItemId();
    return bottomNavigationPresenter$SavedState;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    return false;
  }
  
  public void setBottomNavigationMenuView(BottomNavigationMenuView paramBottomNavigationMenuView) {
    this.mMenuView = paramBottomNavigationMenuView;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {}
  
  public void setId(int paramInt) {
    this.mId = paramInt;
  }
  
  public void setUpdateSuspended(boolean paramBoolean) {
    this.mUpdateSuspended = paramBoolean;
  }
  
  public void updateMenuView(boolean paramBoolean) {
    if (this.mUpdateSuspended)
      return; 
    if (paramBoolean) {
      this.mMenuView.buildMenuView();
      return;
    } 
    this.mMenuView.updateMenuView();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\BottomNavigationPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */