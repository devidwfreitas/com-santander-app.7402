package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class BaseMenuPresenter implements MenuPresenter {
  private MenuPresenter$Callback mCallback;
  
  public Context mContext;
  
  private int mId;
  
  protected LayoutInflater mInflater;
  
  private int mItemLayoutRes;
  
  public MenuBuilder mMenu;
  
  private int mMenuLayoutRes;
  
  public MenuView mMenuView;
  
  public Context mSystemContext;
  
  protected LayoutInflater mSystemInflater;
  
  public BaseMenuPresenter(Context paramContext, int paramInt1, int paramInt2) {
    this.mSystemContext = paramContext;
    this.mSystemInflater = LayoutInflater.from(paramContext);
    this.mMenuLayoutRes = paramInt1;
    this.mItemLayoutRes = paramInt2;
  }
  
  protected void addItemView(View paramView, int paramInt) {
    ViewGroup viewGroup = (ViewGroup)paramView.getParent();
    if (viewGroup != null)
      viewGroup.removeView(paramView); 
    ((ViewGroup)this.mMenuView).addView(paramView, paramInt);
  }
  
  public abstract void bindItemView(MenuItemImpl paramMenuItemImpl, MenuView$ItemView paramMenuView$ItemView);
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public MenuView$ItemView createItemView(ViewGroup paramViewGroup) {
    return (MenuView$ItemView)this.mSystemInflater.inflate(this.mItemLayoutRes, paramViewGroup, false);
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt) {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public MenuPresenter$Callback getCallback() {
    return this.mCallback;
  }
  
  public int getId() {
    return this.mId;
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup) {
    if (paramView instanceof MenuView$ItemView) {
      MenuView$ItemView menuView$ItemView1 = (MenuView$ItemView)paramView;
      bindItemView(paramMenuItemImpl, menuView$ItemView1);
      return (View)menuView$ItemView1;
    } 
    MenuView$ItemView menuView$ItemView = createItemView(paramViewGroup);
    bindItemView(paramMenuItemImpl, menuView$ItemView);
    return (View)menuView$ItemView;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    if (this.mMenuView == null) {
      this.mMenuView = (MenuView)this.mSystemInflater.inflate(this.mMenuLayoutRes, paramViewGroup, false);
      this.mMenuView.initialize(this.mMenu);
      updateMenuView(true);
    } 
    return this.mMenuView;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(this.mContext);
    this.mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (this.mCallback != null)
      this.mCallback.onCloseMenu(paramMenuBuilder, paramBoolean); 
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    return (this.mCallback != null) ? this.mCallback.onOpenSubMenu(paramSubMenuBuilder) : false;
  }
  
  public void setCallback(MenuPresenter$Callback paramMenuPresenter$Callback) {
    this.mCallback = paramMenuPresenter$Callback;
  }
  
  public void setId(int paramInt) {
    this.mId = paramInt;
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl) {
    return true;
  }
  
  public void updateMenuView(boolean paramBoolean) {
    ViewGroup viewGroup = (ViewGroup)this.mMenuView;
    if (viewGroup != null) {
      int i;
      if (this.mMenu != null) {
        this.mMenu.flagActionItems();
        ArrayList<MenuItemImpl> arrayList = this.mMenu.getVisibleItems();
        int m = arrayList.size();
        int k = 0;
        int j = 0;
        while (true) {
          i = j;
          if (k < m) {
            MenuItemImpl menuItemImpl = arrayList.get(k);
            if (shouldIncludeItem(j, menuItemImpl)) {
              MenuItemImpl menuItemImpl1;
              View view1 = viewGroup.getChildAt(j);
              if (view1 instanceof MenuView$ItemView) {
                menuItemImpl1 = ((MenuView$ItemView)view1).getItemData();
              } else {
                menuItemImpl1 = null;
              } 
              View view2 = getItemView(menuItemImpl, view1, viewGroup);
              if (menuItemImpl != menuItemImpl1) {
                view2.setPressed(false);
                ViewCompat.jumpDrawablesToCurrentState(view2);
              } 
              if (view2 != view1)
                addItemView(view2, j); 
              j++;
            } 
            k++;
            continue;
          } 
          break;
        } 
      } else {
        i = 0;
      } 
      while (true) {
        if (i < viewGroup.getChildCount()) {
          if (!filterLeftoverView(viewGroup, i))
            i++; 
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\BaseMenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */