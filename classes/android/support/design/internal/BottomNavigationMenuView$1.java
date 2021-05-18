package android.support.design.internal;

import android.support.v7.view.menu.MenuItemImpl;
import android.view.MenuItem;
import android.view.View;

class BottomNavigationMenuView$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    MenuItemImpl menuItemImpl = ((BottomNavigationItemView)paramView).getItemData();
    if (!BottomNavigationMenuView.access$100(BottomNavigationMenuView.this).performItemAction((MenuItem)menuItemImpl, BottomNavigationMenuView.access$000(BottomNavigationMenuView.this), 0))
      menuItemImpl.setChecked(true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\BottomNavigationMenuView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */