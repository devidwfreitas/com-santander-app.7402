package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.MenuBuilder;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class MenuPopupWindow extends ListPopupWindow implements MenuItemHoverListener {
  private static final String TAG = "MenuPopupWindow";
  
  private static Method sSetTouchModalMethod;
  
  private MenuItemHoverListener mHoverListener;
  
  static {
    try {
      sSetTouchModalMethod = PopupWindow.class.getDeclaredMethod("setTouchModal", new Class[] { boolean.class });
      return;
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
      return;
    } 
  }
  
  public MenuPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  DropDownListView createDropDownListView(Context paramContext, boolean paramBoolean) {
    MenuPopupWindow$MenuDropDownListView menuPopupWindow$MenuDropDownListView = new MenuPopupWindow$MenuDropDownListView(paramContext, paramBoolean);
    menuPopupWindow$MenuDropDownListView.setHoverListener(this);
    return menuPopupWindow$MenuDropDownListView;
  }
  
  public void onItemHoverEnter(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem) {
    if (this.mHoverListener != null)
      this.mHoverListener.onItemHoverEnter(paramMenuBuilder, paramMenuItem); 
  }
  
  public void onItemHoverExit(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem) {
    if (this.mHoverListener != null)
      this.mHoverListener.onItemHoverExit(paramMenuBuilder, paramMenuItem); 
  }
  
  public void setEnterTransition(Object paramObject) {
    if (Build.VERSION.SDK_INT >= 23)
      this.mPopup.setEnterTransition((Transition)paramObject); 
  }
  
  public void setExitTransition(Object paramObject) {
    if (Build.VERSION.SDK_INT >= 23)
      this.mPopup.setExitTransition((Transition)paramObject); 
  }
  
  public void setHoverListener(MenuItemHoverListener paramMenuItemHoverListener) {
    this.mHoverListener = paramMenuItemHoverListener;
  }
  
  public void setTouchModal(boolean paramBoolean) {
    if (sSetTouchModalMethod != null)
      try {
        sSetTouchModalMethod.invoke(this.mPopup, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      } catch (Exception exception) {
        Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\MenuPopupWindow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */