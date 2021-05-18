package android.support.v4.view;

import android.view.View;

class ViewCompat$KitKatViewCompatImpl extends ViewCompat$JbMr2ViewCompatImpl {
  public int getAccessibilityLiveRegion(View paramView) {
    return ViewCompatKitKat.getAccessibilityLiveRegion(paramView);
  }
  
  public boolean isAttachedToWindow(View paramView) {
    return ViewCompatKitKat.isAttachedToWindow(paramView);
  }
  
  public boolean isLaidOut(View paramView) {
    return ViewCompatKitKat.isLaidOut(paramView);
  }
  
  public boolean isLayoutDirectionResolved(View paramView) {
    return ViewCompatKitKat.isLayoutDirectionResolved(paramView);
  }
  
  public void setAccessibilityLiveRegion(View paramView, int paramInt) {
    ViewCompatKitKat.setAccessibilityLiveRegion(paramView, paramInt);
  }
  
  public void setImportantForAccessibility(View paramView, int paramInt) {
    ViewCompatJB.setImportantForAccessibility(paramView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$KitKatViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */