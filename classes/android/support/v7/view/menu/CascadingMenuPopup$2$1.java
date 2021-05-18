package android.support.v7.view.menu;

import android.view.MenuItem;

class CascadingMenuPopup$2$1 implements Runnable {
  public void run() {
    if (nextInfo != null) {
      this.this$1.this$0.mShouldCloseImmediately = true;
      nextInfo.menu.close(false);
      this.this$1.this$0.mShouldCloseImmediately = false;
    } 
    if (item.isEnabled() && item.hasSubMenu())
      menu.performItemAction(item, 4); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\CascadingMenuPopup$2$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */