package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public abstract class CoordinatorLayout$Behavior<V extends View> {
  public CoordinatorLayout$Behavior() {}
  
  public CoordinatorLayout$Behavior(Context paramContext, AttributeSet paramAttributeSet) {}
  
  public static Object getTag(View paramView) {
    return ((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).mBehaviorTag;
  }
  
  public static void setTag(View paramView, Object paramObject) {
    ((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).mBehaviorTag = paramObject;
  }
  
  public boolean blocksInteractionBelow(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return (getScrimOpacity(paramCoordinatorLayout, paramV) > 0.0F);
  }
  
  public boolean getInsetDodgeRect(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull Rect paramRect) {
    return false;
  }
  
  @ColorInt
  public int getScrimColor(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return -16777216;
  }
  
  @FloatRange(from = 0.0D, to = 1.0D)
  public float getScrimOpacity(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return 0.0F;
  }
  
  @Deprecated
  public boolean isDirty(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return false;
  }
  
  public boolean layoutDependsOn(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {
    return false;
  }
  
  @NonNull
  public WindowInsetsCompat onApplyWindowInsets(CoordinatorLayout paramCoordinatorLayout, V paramV, WindowInsetsCompat paramWindowInsetsCompat) {
    return paramWindowInsetsCompat;
  }
  
  public void onAttachedToLayoutParams(@NonNull CoordinatorLayout$LayoutParams paramCoordinatorLayout$LayoutParams) {}
  
  public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {
    return false;
  }
  
  public void onDependentViewRemoved(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {}
  
  public void onDetachedFromLayoutParams() {}
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    return false;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt) {
    return false;
  }
  
  public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return false;
  }
  
  public boolean onNestedFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return false;
  }
  
  public boolean onNestedPreFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2) {
    return false;
  }
  
  public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {}
  
  public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void onNestedScrollAccepted(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt) {}
  
  public boolean onRequestChildRectangleOnScreen(CoordinatorLayout paramCoordinatorLayout, V paramV, Rect paramRect, boolean paramBoolean) {
    return false;
  }
  
  public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return (Parcelable)View.BaseSavedState.EMPTY_STATE;
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt) {
    return false;
  }
  
  public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {}
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$Behavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */