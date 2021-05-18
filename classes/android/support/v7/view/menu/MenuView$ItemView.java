package android.support.v7.view.menu;

import android.graphics.drawable.Drawable;

public interface MenuView$ItemView {
  MenuItemImpl getItemData();
  
  void initialize(MenuItemImpl paramMenuItemImpl, int paramInt);
  
  boolean prefersCondensedTitle();
  
  void setCheckable(boolean paramBoolean);
  
  void setChecked(boolean paramBoolean);
  
  void setEnabled(boolean paramBoolean);
  
  void setIcon(Drawable paramDrawable);
  
  void setShortcut(boolean paramBoolean, char paramChar);
  
  void setTitle(CharSequence paramCharSequence);
  
  boolean showsIcon();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuView$ItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */