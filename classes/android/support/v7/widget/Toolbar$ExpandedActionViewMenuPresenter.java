package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.View;
import android.view.ViewGroup;

class Toolbar$ExpandedActionViewMenuPresenter implements MenuPresenter {
  MenuItemImpl mCurrentExpandedItem;
  
  MenuBuilder mMenu;
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    if (Toolbar.this.mExpandedActionView instanceof CollapsibleActionView)
      ((CollapsibleActionView)Toolbar.this.mExpandedActionView).onActionViewCollapsed(); 
    Toolbar.this.removeView(Toolbar.this.mExpandedActionView);
    Toolbar.this.removeView((View)Toolbar.this.mCollapseButtonView);
    Toolbar.this.mExpandedActionView = null;
    Toolbar.this.addChildrenForExpandedActionView();
    this.mCurrentExpandedItem = null;
    Toolbar.this.requestLayout();
    paramMenuItemImpl.setActionViewExpanded(false);
    return true;
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    Toolbar.this.ensureCollapseButtonView();
    if (Toolbar.this.mCollapseButtonView.getParent() != Toolbar.this)
      Toolbar.this.addView((View)Toolbar.this.mCollapseButtonView); 
    Toolbar.this.mExpandedActionView = paramMenuItemImpl.getActionView();
    this.mCurrentExpandedItem = paramMenuItemImpl;
    if (Toolbar.this.mExpandedActionView.getParent() != Toolbar.this) {
      Toolbar$LayoutParams toolbar$LayoutParams = Toolbar.this.generateDefaultLayoutParams();
      toolbar$LayoutParams.gravity = 0x800003 | Toolbar.this.mButtonGravity & 0x70;
      toolbar$LayoutParams.mViewType = 2;
      Toolbar.this.mExpandedActionView.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
      Toolbar.this.addView(Toolbar.this.mExpandedActionView);
    } 
    Toolbar.this.removeChildrenForExpandedActionView();
    Toolbar.this.requestLayout();
    paramMenuItemImpl.setActionViewExpanded(true);
    if (Toolbar.this.mExpandedActionView instanceof CollapsibleActionView)
      ((CollapsibleActionView)Toolbar.this.mExpandedActionView).onActionViewExpanded(); 
    return true;
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public int getId() {
    return 0;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    return null;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {
    if (this.mMenu != null && this.mCurrentExpandedItem != null)
      this.mMenu.collapseItemActionView(this.mCurrentExpandedItem); 
    this.mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState() {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    return false;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {}
  
  public void updateMenuView(boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = false;
    if (this.mCurrentExpandedItem != null) {
      bool1 = bool2;
      if (this.mMenu != null) {
        int j = this.mMenu.size();
        int i = 0;
        while (true) {
          bool1 = bool2;
          if (i < j)
            if (this.mMenu.getItem(i) == this.mCurrentExpandedItem) {
              bool1 = true;
            } else {
              i++;
              continue;
            }  
          if (!bool1)
            collapseItemActionView(this.mMenu, this.mCurrentExpandedItem); 
          return;
        } 
      } 
    } else {
      return;
    } 
    if (!bool1)
      collapseItemActionView(this.mMenu, this.mCurrentExpandedItem); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\Toolbar$ExpandedActionViewMenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */