package android.support.v7.view.menu;

import android.support.annotation.NonNull;
import android.support.v7.widget.MenuPopupWindow;
import android.widget.ListView;

class CascadingMenuPopup$CascadingMenuInfo {
  public final MenuBuilder menu;
  
  public final int position;
  
  public final MenuPopupWindow window;
  
  public CascadingMenuPopup$CascadingMenuInfo(@NonNull MenuPopupWindow paramMenuPopupWindow, @NonNull MenuBuilder paramMenuBuilder, int paramInt) {
    this.window = paramMenuPopupWindow;
    this.menu = paramMenuBuilder;
    this.position = paramInt;
  }
  
  public ListView getListView() {
    return this.window.getListView();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\CascadingMenuPopup$CascadingMenuInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */