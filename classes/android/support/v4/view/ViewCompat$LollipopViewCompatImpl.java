package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.View;

class ViewCompat$LollipopViewCompatImpl extends ViewCompat$KitKatViewCompatImpl {
  public WindowInsetsCompat dispatchApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    return WindowInsetsCompat.wrap(ViewCompatLollipop.dispatchApplyWindowInsets(paramView, WindowInsetsCompat.unwrap(paramWindowInsetsCompat)));
  }
  
  public boolean dispatchNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return ViewCompatLollipop.dispatchNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(View paramView, float paramFloat1, float paramFloat2) {
    return ViewCompatLollipop.dispatchNestedPreFling(paramView, paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    return ViewCompatLollipop.dispatchNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfint1, paramArrayOfint2);
  }
  
  public boolean dispatchNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint) {
    return ViewCompatLollipop.dispatchNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfint);
  }
  
  public ColorStateList getBackgroundTintList(View paramView) {
    return ViewCompatLollipop.getBackgroundTintList(paramView);
  }
  
  public PorterDuff.Mode getBackgroundTintMode(View paramView) {
    return ViewCompatLollipop.getBackgroundTintMode(paramView);
  }
  
  public float getElevation(View paramView) {
    return ViewCompatLollipop.getElevation(paramView);
  }
  
  public String getTransitionName(View paramView) {
    return ViewCompatLollipop.getTransitionName(paramView);
  }
  
  public float getTranslationZ(View paramView) {
    return ViewCompatLollipop.getTranslationZ(paramView);
  }
  
  public float getZ(View paramView) {
    return ViewCompatLollipop.getZ(paramView);
  }
  
  public boolean hasNestedScrollingParent(View paramView) {
    return ViewCompatLollipop.hasNestedScrollingParent(paramView);
  }
  
  public boolean isImportantForAccessibility(View paramView) {
    return ViewCompatLollipop.isImportantForAccessibility(paramView);
  }
  
  public boolean isNestedScrollingEnabled(View paramView) {
    return ViewCompatLollipop.isNestedScrollingEnabled(paramView);
  }
  
  public void offsetLeftAndRight(View paramView, int paramInt) {
    ViewCompatLollipop.offsetLeftAndRight(paramView, paramInt);
  }
  
  public void offsetTopAndBottom(View paramView, int paramInt) {
    ViewCompatLollipop.offsetTopAndBottom(paramView, paramInt);
  }
  
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    return WindowInsetsCompat.wrap(ViewCompatLollipop.onApplyWindowInsets(paramView, WindowInsetsCompat.unwrap(paramWindowInsetsCompat)));
  }
  
  public void requestApplyInsets(View paramView) {
    ViewCompatLollipop.requestApplyInsets(paramView);
  }
  
  public void setBackgroundTintList(View paramView, ColorStateList paramColorStateList) {
    ViewCompatLollipop.setBackgroundTintList(paramView, paramColorStateList);
  }
  
  public void setBackgroundTintMode(View paramView, PorterDuff.Mode paramMode) {
    ViewCompatLollipop.setBackgroundTintMode(paramView, paramMode);
  }
  
  public void setElevation(View paramView, float paramFloat) {
    ViewCompatLollipop.setElevation(paramView, paramFloat);
  }
  
  public void setNestedScrollingEnabled(View paramView, boolean paramBoolean) {
    ViewCompatLollipop.setNestedScrollingEnabled(paramView, paramBoolean);
  }
  
  public void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener) {
    if (paramOnApplyWindowInsetsListener == null) {
      ViewCompatLollipop.setOnApplyWindowInsetsListener(paramView, null);
      return;
    } 
    ViewCompatLollipop.setOnApplyWindowInsetsListener(paramView, new ViewCompat$LollipopViewCompatImpl$1(this, paramOnApplyWindowInsetsListener));
  }
  
  public void setTransitionName(View paramView, String paramString) {
    ViewCompatLollipop.setTransitionName(paramView, paramString);
  }
  
  public void setTranslationZ(View paramView, float paramFloat) {
    ViewCompatLollipop.setTranslationZ(paramView, paramFloat);
  }
  
  public void setZ(View paramView, float paramFloat) {
    ViewCompatLollipop.setZ(paramView, paramFloat);
  }
  
  public boolean startNestedScroll(View paramView, int paramInt) {
    return ViewCompatLollipop.startNestedScroll(paramView, paramInt);
  }
  
  public void stopNestedScroll(View paramView) {
    ViewCompatLollipop.stopNestedScroll(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$LollipopViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */