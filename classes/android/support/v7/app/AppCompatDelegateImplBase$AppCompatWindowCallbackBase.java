package android.support.v7.app;

import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.MenuBuilder;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window;

class AppCompatDelegateImplBase$AppCompatWindowCallbackBase extends WindowCallbackWrapper {
  AppCompatDelegateImplBase$AppCompatWindowCallbackBase(Window.Callback paramCallback) {
    super(paramCallback);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    return (AppCompatDelegateImplBase.this.dispatchKeyEvent(paramKeyEvent) || super.dispatchKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent) {
    return (super.dispatchKeyShortcutEvent(paramKeyEvent) || AppCompatDelegateImplBase.this.onKeyShortcut(paramKeyEvent.getKeyCode(), paramKeyEvent));
  }
  
  public void onContentChanged() {}
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu) {
    return (paramInt == 0 && !(paramMenu instanceof MenuBuilder)) ? false : super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu) {
    super.onMenuOpened(paramInt, paramMenu);
    AppCompatDelegateImplBase.this.onMenuOpened(paramInt, paramMenu);
    return true;
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu) {
    super.onPanelClosed(paramInt, paramMenu);
    AppCompatDelegateImplBase.this.onPanelClosed(paramInt, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu) {
    MenuBuilder menuBuilder;
    if (paramMenu instanceof MenuBuilder) {
      menuBuilder = (MenuBuilder)paramMenu;
    } else {
      menuBuilder = null;
    } 
    if (paramInt == 0 && menuBuilder == null)
      return false; 
    if (menuBuilder != null)
      menuBuilder.setOverrideVisibleItems(true); 
    boolean bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
    boolean bool1 = bool2;
    if (menuBuilder != null) {
      menuBuilder.setOverrideVisibleItems(false);
      return bool2;
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplBase$AppCompatWindowCallbackBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */