package android.support.v4.widget;

import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

class PopupWindowCompat$BasePopupWindowImpl implements PopupWindowCompat$PopupWindowImpl {
  private static Method sGetWindowLayoutTypeMethod;
  
  private static boolean sGetWindowLayoutTypeMethodAttempted;
  
  private static Method sSetWindowLayoutTypeMethod;
  
  private static boolean sSetWindowLayoutTypeMethodAttempted;
  
  public boolean getOverlapAnchor(PopupWindow paramPopupWindow) {
    return false;
  }
  
  public int getWindowLayoutType(PopupWindow paramPopupWindow) {
    if (!sGetWindowLayoutTypeMethodAttempted) {
      try {
        sGetWindowLayoutTypeMethod = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
        sGetWindowLayoutTypeMethod.setAccessible(true);
      } catch (Exception exception) {}
      sGetWindowLayoutTypeMethodAttempted = true;
    } 
    if (sGetWindowLayoutTypeMethod != null)
      try {
        return ((Integer)sGetWindowLayoutTypeMethod.invoke(paramPopupWindow, new Object[0])).intValue();
      } catch (Exception exception) {} 
    return 0;
  }
  
  public void setOverlapAnchor(PopupWindow paramPopupWindow, boolean paramBoolean) {}
  
  public void setWindowLayoutType(PopupWindow paramPopupWindow, int paramInt) {
    if (!sSetWindowLayoutTypeMethodAttempted) {
      try {
        sSetWindowLayoutTypeMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[] { int.class });
        sSetWindowLayoutTypeMethod.setAccessible(true);
      } catch (Exception exception) {}
      sSetWindowLayoutTypeMethodAttempted = true;
    } 
    if (sSetWindowLayoutTypeMethod != null)
      try {
        sSetWindowLayoutTypeMethod.invoke(paramPopupWindow, new Object[] { Integer.valueOf(paramInt) });
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  public void showAsDropDown(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt1;
    if ((GravityCompat.getAbsoluteGravity(paramInt3, ViewCompat.getLayoutDirection(paramView)) & 0x7) == 5)
      i = paramInt1 - paramPopupWindow.getWidth() - paramView.getWidth(); 
    paramPopupWindow.showAsDropDown(paramView, i, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\PopupWindowCompat$BasePopupWindowImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */