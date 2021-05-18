package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

interface ViewCompat$ViewCompatImpl {
  ViewPropertyAnimatorCompat animate(View paramView);
  
  boolean canScrollHorizontally(View paramView, int paramInt);
  
  boolean canScrollVertically(View paramView, int paramInt);
  
  int combineMeasuredStates(int paramInt1, int paramInt2);
  
  WindowInsetsCompat dispatchApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat);
  
  void dispatchFinishTemporaryDetach(View paramView);
  
  boolean dispatchNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean);
  
  boolean dispatchNestedPreFling(View paramView, float paramFloat1, float paramFloat2);
  
  boolean dispatchNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint1, int[] paramArrayOfint2);
  
  boolean dispatchNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint);
  
  void dispatchStartTemporaryDetach(View paramView);
  
  int getAccessibilityLiveRegion(View paramView);
  
  AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView);
  
  float getAlpha(View paramView);
  
  ColorStateList getBackgroundTintList(View paramView);
  
  PorterDuff.Mode getBackgroundTintMode(View paramView);
  
  Rect getClipBounds(View paramView);
  
  Display getDisplay(View paramView);
  
  float getElevation(View paramView);
  
  boolean getFitsSystemWindows(View paramView);
  
  int getImportantForAccessibility(View paramView);
  
  int getLabelFor(View paramView);
  
  int getLayerType(View paramView);
  
  int getLayoutDirection(View paramView);
  
  @Nullable
  Matrix getMatrix(View paramView);
  
  int getMeasuredHeightAndState(View paramView);
  
  int getMeasuredState(View paramView);
  
  int getMeasuredWidthAndState(View paramView);
  
  int getMinimumHeight(View paramView);
  
  int getMinimumWidth(View paramView);
  
  int getPaddingEnd(View paramView);
  
  int getPaddingStart(View paramView);
  
  ViewParent getParentForAccessibility(View paramView);
  
  float getPivotX(View paramView);
  
  float getPivotY(View paramView);
  
  float getRotation(View paramView);
  
  float getRotationX(View paramView);
  
  float getRotationY(View paramView);
  
  float getScaleX(View paramView);
  
  float getScaleY(View paramView);
  
  int getScrollIndicators(View paramView);
  
  String getTransitionName(View paramView);
  
  float getTranslationX(View paramView);
  
  float getTranslationY(View paramView);
  
  float getTranslationZ(View paramView);
  
  int getWindowSystemUiVisibility(View paramView);
  
  float getX(View paramView);
  
  float getY(View paramView);
  
  float getZ(View paramView);
  
  boolean hasAccessibilityDelegate(View paramView);
  
  boolean hasNestedScrollingParent(View paramView);
  
  boolean hasOnClickListeners(View paramView);
  
  boolean hasOverlappingRendering(View paramView);
  
  boolean hasTransientState(View paramView);
  
  boolean isAttachedToWindow(View paramView);
  
  boolean isImportantForAccessibility(View paramView);
  
  boolean isInLayout(View paramView);
  
  boolean isLaidOut(View paramView);
  
  boolean isLayoutDirectionResolved(View paramView);
  
  boolean isNestedScrollingEnabled(View paramView);
  
  boolean isPaddingRelative(View paramView);
  
  void jumpDrawablesToCurrentState(View paramView);
  
  void offsetLeftAndRight(View paramView, int paramInt);
  
  void offsetTopAndBottom(View paramView, int paramInt);
  
  WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat);
  
  void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat);
  
  void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle);
  
  void postInvalidateOnAnimation(View paramView);
  
  void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  void postOnAnimation(View paramView, Runnable paramRunnable);
  
  void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong);
  
  void requestApplyInsets(View paramView);
  
  int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3);
  
  void setAccessibilityDelegate(View paramView, @Nullable AccessibilityDelegateCompat paramAccessibilityDelegateCompat);
  
  void setAccessibilityLiveRegion(View paramView, int paramInt);
  
  void setActivated(View paramView, boolean paramBoolean);
  
  void setAlpha(View paramView, float paramFloat);
  
  void setBackground(View paramView, Drawable paramDrawable);
  
  void setBackgroundTintList(View paramView, ColorStateList paramColorStateList);
  
  void setBackgroundTintMode(View paramView, PorterDuff.Mode paramMode);
  
  void setChildrenDrawingOrderEnabled(ViewGroup paramViewGroup, boolean paramBoolean);
  
  void setClipBounds(View paramView, Rect paramRect);
  
  void setElevation(View paramView, float paramFloat);
  
  void setFitsSystemWindows(View paramView, boolean paramBoolean);
  
  void setHasTransientState(View paramView, boolean paramBoolean);
  
  void setImportantForAccessibility(View paramView, int paramInt);
  
  void setLabelFor(View paramView, int paramInt);
  
  void setLayerPaint(View paramView, Paint paramPaint);
  
  void setLayerType(View paramView, int paramInt, Paint paramPaint);
  
  void setLayoutDirection(View paramView, int paramInt);
  
  void setNestedScrollingEnabled(View paramView, boolean paramBoolean);
  
  void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener);
  
  void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  void setPivotX(View paramView, float paramFloat);
  
  void setPivotY(View paramView, float paramFloat);
  
  void setPointerIcon(View paramView, PointerIconCompat paramPointerIconCompat);
  
  void setRotation(View paramView, float paramFloat);
  
  void setRotationX(View paramView, float paramFloat);
  
  void setRotationY(View paramView, float paramFloat);
  
  void setSaveFromParentEnabled(View paramView, boolean paramBoolean);
  
  void setScaleX(View paramView, float paramFloat);
  
  void setScaleY(View paramView, float paramFloat);
  
  void setScrollIndicators(View paramView, int paramInt);
  
  void setScrollIndicators(View paramView, int paramInt1, int paramInt2);
  
  void setTransitionName(View paramView, String paramString);
  
  void setTranslationX(View paramView, float paramFloat);
  
  void setTranslationY(View paramView, float paramFloat);
  
  void setTranslationZ(View paramView, float paramFloat);
  
  void setX(View paramView, float paramFloat);
  
  void setY(View paramView, float paramFloat);
  
  void setZ(View paramView, float paramFloat);
  
  boolean startNestedScroll(View paramView, int paramInt);
  
  void stopNestedScroll(View paramView);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$ViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */