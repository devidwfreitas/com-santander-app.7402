package android.support.v7.view.menu;

import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.view.ViewGroup;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface MenuPresenter {
  boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl);
  
  boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl);
  
  boolean flagActionItems();
  
  int getId();
  
  MenuView getMenuView(ViewGroup paramViewGroup);
  
  void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder);
  
  void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean);
  
  void onRestoreInstanceState(Parcelable paramParcelable);
  
  Parcelable onSaveInstanceState();
  
  boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder);
  
  void setCallback(MenuPresenter$Callback paramMenuPresenter$Callback);
  
  void updateMenuView(boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */