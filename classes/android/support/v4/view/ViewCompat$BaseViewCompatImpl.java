package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

class ViewCompat$BaseViewCompatImpl implements ViewCompat$ViewCompatImpl {
  private static Method sChildrenDrawingOrderMethod;
  
  private Method mDispatchFinishTemporaryDetach;
  
  private Method mDispatchStartTemporaryDetach;
  
  private boolean mTempDetachBound;
  
  WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap = null;
  
  private void bindTempDetach() {
    try {
      this.mDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
      this.mDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.e("ViewCompat", "Couldn't find method", noSuchMethodException);
    } 
    this.mTempDetachBound = true;
  }
  
  private boolean canScrollingViewScrollHorizontally(ScrollingView paramScrollingView, int paramInt) {
    boolean bool = true;
    int i = paramScrollingView.computeHorizontalScrollOffset();
    int j = paramScrollingView.computeHorizontalScrollRange() - paramScrollingView.computeHorizontalScrollExtent();
    return (j == 0) ? false : ((paramInt < 0) ? ((i <= 0) ? false : bool) : ((i >= j - 1) ? false : bool));
  }
  
  private boolean canScrollingViewScrollVertically(ScrollingView paramScrollingView, int paramInt) {
    boolean bool = true;
    int i = paramScrollingView.computeVerticalScrollOffset();
    int j = paramScrollingView.computeVerticalScrollRange() - paramScrollingView.computeVerticalScrollExtent();
    return (j == 0) ? false : ((paramInt < 0) ? ((i <= 0) ? false : bool) : ((i >= j - 1) ? false : bool));
  }
  
  public ViewPropertyAnimatorCompat animate(View paramView) {
    return new ViewPropertyAnimatorCompat(paramView);
  }
  
  public boolean canScrollHorizontally(View paramView, int paramInt) {
    return (paramView instanceof ScrollingView && canScrollingViewScrollHorizontally((ScrollingView)paramView, paramInt));
  }
  
  public boolean canScrollVertically(View paramView, int paramInt) {
    return (paramView instanceof ScrollingView && canScrollingViewScrollVertically((ScrollingView)paramView, paramInt));
  }
  
  public int combineMeasuredStates(int paramInt1, int paramInt2) {
    return paramInt1 | paramInt2;
  }
  
  public WindowInsetsCompat dispatchApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    return paramWindowInsetsCompat;
  }
  
  public void dispatchFinishTemporaryDetach(View paramView) {
    if (!this.mTempDetachBound)
      bindTempDetach(); 
    if (this.mDispatchFinishTemporaryDetach != null)
      try {
        this.mDispatchFinishTemporaryDetach.invoke(paramView, new Object[0]);
        return;
      } catch (Exception exception) {
        Log.d("ViewCompat", "Error calling dispatchFinishTemporaryDetach", exception);
        return;
      }  
    exception.onFinishTemporaryDetach();
  }
  
  public boolean dispatchNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean) : false;
  }
  
  public boolean dispatchNestedPreFling(View paramView, float paramFloat1, float paramFloat2) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).dispatchNestedPreFling(paramFloat1, paramFloat2) : false;
  }
  
  public boolean dispatchNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfint1, paramArrayOfint2) : false;
  }
  
  public boolean dispatchNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfint) : false;
  }
  
  public void dispatchStartTemporaryDetach(View paramView) {
    if (!this.mTempDetachBound)
      bindTempDetach(); 
    if (this.mDispatchStartTemporaryDetach != null)
      try {
        this.mDispatchStartTemporaryDetach.invoke(paramView, new Object[0]);
        return;
      } catch (Exception exception) {
        Log.d("ViewCompat", "Error calling dispatchStartTemporaryDetach", exception);
        return;
      }  
    exception.onStartTemporaryDetach();
  }
  
  public int getAccessibilityLiveRegion(View paramView) {
    return 0;
  }
  
  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView) {
    return null;
  }
  
  public float getAlpha(View paramView) {
    return 1.0F;
  }
  
  public ColorStateList getBackgroundTintList(View paramView) {
    return ViewCompatBase.getBackgroundTintList(paramView);
  }
  
  public PorterDuff.Mode getBackgroundTintMode(View paramView) {
    return ViewCompatBase.getBackgroundTintMode(paramView);
  }
  
  public Rect getClipBounds(View paramView) {
    return null;
  }
  
  public Display getDisplay(View paramView) {
    return ViewCompatBase.getDisplay(paramView);
  }
  
  public float getElevation(View paramView) {
    return 0.0F;
  }
  
  public boolean getFitsSystemWindows(View paramView) {
    return false;
  }
  
  long getFrameTime() {
    return 10L;
  }
  
  public int getImportantForAccessibility(View paramView) {
    return 0;
  }
  
  public int getLabelFor(View paramView) {
    return 0;
  }
  
  public int getLayerType(View paramView) {
    return 0;
  }
  
  public int getLayoutDirection(View paramView) {
    return 0;
  }
  
  public Matrix getMatrix(View paramView) {
    return null;
  }
  
  public int getMeasuredHeightAndState(View paramView) {
    return paramView.getMeasuredHeight();
  }
  
  public int getMeasuredState(View paramView) {
    return 0;
  }
  
  public int getMeasuredWidthAndState(View paramView) {
    return paramView.getMeasuredWidth();
  }
  
  public int getMinimumHeight(View paramView) {
    return ViewCompatBase.getMinimumHeight(paramView);
  }
  
  public int getMinimumWidth(View paramView) {
    return ViewCompatBase.getMinimumWidth(paramView);
  }
  
  public int getPaddingEnd(View paramView) {
    return paramView.getPaddingRight();
  }
  
  public int getPaddingStart(View paramView) {
    return paramView.getPaddingLeft();
  }
  
  public ViewParent getParentForAccessibility(View paramView) {
    return paramView.getParent();
  }
  
  public float getPivotX(View paramView) {
    return 0.0F;
  }
  
  public float getPivotY(View paramView) {
    return 0.0F;
  }
  
  public float getRotation(View paramView) {
    return 0.0F;
  }
  
  public float getRotationX(View paramView) {
    return 0.0F;
  }
  
  public float getRotationY(View paramView) {
    return 0.0F;
  }
  
  public float getScaleX(View paramView) {
    return 0.0F;
  }
  
  public float getScaleY(View paramView) {
    return 0.0F;
  }
  
  public int getScrollIndicators(View paramView) {
    return 0;
  }
  
  public String getTransitionName(View paramView) {
    return null;
  }
  
  public float getTranslationX(View paramView) {
    return 0.0F;
  }
  
  public float getTranslationY(View paramView) {
    return 0.0F;
  }
  
  public float getTranslationZ(View paramView) {
    return 0.0F;
  }
  
  public int getWindowSystemUiVisibility(View paramView) {
    return 0;
  }
  
  public float getX(View paramView) {
    return paramView.getLeft();
  }
  
  public float getY(View paramView) {
    return paramView.getTop();
  }
  
  public float getZ(View paramView) {
    return getTranslationZ(paramView) + getElevation(paramView);
  }
  
  public boolean hasAccessibilityDelegate(View paramView) {
    return false;
  }
  
  public boolean hasNestedScrollingParent(View paramView) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).hasNestedScrollingParent() : false;
  }
  
  public boolean hasOnClickListeners(View paramView) {
    return false;
  }
  
  public boolean hasOverlappingRendering(View paramView) {
    return true;
  }
  
  public boolean hasTransientState(View paramView) {
    return false;
  }
  
  public boolean isAttachedToWindow(View paramView) {
    return ViewCompatBase.isAttachedToWindow(paramView);
  }
  
  public boolean isImportantForAccessibility(View paramView) {
    return true;
  }
  
  public boolean isInLayout(View paramView) {
    return false;
  }
  
  public boolean isLaidOut(View paramView) {
    return ViewCompatBase.isLaidOut(paramView);
  }
  
  public boolean isLayoutDirectionResolved(View paramView) {
    return false;
  }
  
  public boolean isNestedScrollingEnabled(View paramView) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).isNestedScrollingEnabled() : false;
  }
  
  public boolean isPaddingRelative(View paramView) {
    return false;
  }
  
  public void jumpDrawablesToCurrentState(View paramView) {}
  
  public void offsetLeftAndRight(View paramView, int paramInt) {
    ViewCompatBase.offsetLeftAndRight(paramView, paramInt);
  }
  
  public void offsetTopAndBottom(View paramView, int paramInt) {
    ViewCompatBase.offsetTopAndBottom(paramView, paramInt);
  }
  
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    return paramWindowInsetsCompat;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {}
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {}
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {}
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    return false;
  }
  
  public void postInvalidateOnAnimation(View paramView) {
    paramView.invalidate();
  }
  
  public void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void postOnAnimation(View paramView, Runnable paramRunnable) {
    paramView.postDelayed(paramRunnable, getFrameTime());
  }
  
  public void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong) {
    paramView.postDelayed(paramRunnable, getFrameTime() + paramLong);
  }
  
  public void requestApplyInsets(View paramView) {}
  
  public int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3) {
    return View.resolveSize(paramInt1, paramInt2);
  }
  
  public void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {}
  
  public void setAccessibilityLiveRegion(View paramView, int paramInt) {}
  
  public void setActivated(View paramView, boolean paramBoolean) {}
  
  public void setAlpha(View paramView, float paramFloat) {}
  
  public void setBackground(View paramView, Drawable paramDrawable) {
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundTintList(View paramView, ColorStateList paramColorStateList) {
    ViewCompatBase.setBackgroundTintList(paramView, paramColorStateList);
  }
  
  public void setBackgroundTintMode(View paramView, PorterDuff.Mode paramMode) {
    ViewCompatBase.setBackgroundTintMode(paramView, paramMode);
  }
  
  public void setChildrenDrawingOrderEnabled(ViewGroup paramViewGroup, boolean paramBoolean) {
    // Byte code:
    //   0: getstatic android/support/v4/view/ViewCompat$BaseViewCompatImpl.sChildrenDrawingOrderMethod : Ljava/lang/reflect/Method;
    //   3: ifnonnull -> 35
    //   6: ldc_w android/view/ViewGroup
    //   9: ldc_w 'setChildrenDrawingOrderEnabled'
    //   12: iconst_1
    //   13: anewarray java/lang/Class
    //   16: dup
    //   17: iconst_0
    //   18: getstatic java/lang/Boolean.TYPE : Ljava/lang/Class;
    //   21: aastore
    //   22: invokevirtual getDeclaredMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   25: putstatic android/support/v4/view/ViewCompat$BaseViewCompatImpl.sChildrenDrawingOrderMethod : Ljava/lang/reflect/Method;
    //   28: getstatic android/support/v4/view/ViewCompat$BaseViewCompatImpl.sChildrenDrawingOrderMethod : Ljava/lang/reflect/Method;
    //   31: iconst_1
    //   32: invokevirtual setAccessible : (Z)V
    //   35: getstatic android/support/v4/view/ViewCompat$BaseViewCompatImpl.sChildrenDrawingOrderMethod : Ljava/lang/reflect/Method;
    //   38: aload_1
    //   39: iconst_1
    //   40: anewarray java/lang/Object
    //   43: dup
    //   44: iconst_0
    //   45: iload_2
    //   46: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   49: aastore
    //   50: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: return
    //   55: astore_3
    //   56: ldc 'ViewCompat'
    //   58: ldc_w 'Unable to find childrenDrawingOrderEnabled'
    //   61: aload_3
    //   62: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   65: pop
    //   66: goto -> 28
    //   69: astore_1
    //   70: ldc 'ViewCompat'
    //   72: ldc_w 'Unable to invoke childrenDrawingOrderEnabled'
    //   75: aload_1
    //   76: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: return
    //   81: astore_1
    //   82: ldc 'ViewCompat'
    //   84: ldc_w 'Unable to invoke childrenDrawingOrderEnabled'
    //   87: aload_1
    //   88: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   91: pop
    //   92: return
    //   93: astore_1
    //   94: ldc 'ViewCompat'
    //   96: ldc_w 'Unable to invoke childrenDrawingOrderEnabled'
    //   99: aload_1
    //   100: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   103: pop
    //   104: return
    // Exception table:
    //   from	to	target	type
    //   6	28	55	java/lang/NoSuchMethodException
    //   35	54	69	java/lang/IllegalAccessException
    //   35	54	81	java/lang/IllegalArgumentException
    //   35	54	93	java/lang/reflect/InvocationTargetException
  }
  
  public void setClipBounds(View paramView, Rect paramRect) {}
  
  public void setElevation(View paramView, float paramFloat) {}
  
  public void setFitsSystemWindows(View paramView, boolean paramBoolean) {}
  
  public void setHasTransientState(View paramView, boolean paramBoolean) {}
  
  public void setImportantForAccessibility(View paramView, int paramInt) {}
  
  public void setLabelFor(View paramView, int paramInt) {}
  
  public void setLayerPaint(View paramView, Paint paramPaint) {}
  
  public void setLayerType(View paramView, int paramInt, Paint paramPaint) {}
  
  public void setLayoutDirection(View paramView, int paramInt) {}
  
  public void setNestedScrollingEnabled(View paramView, boolean paramBoolean) {
    if (paramView instanceof NestedScrollingChild)
      ((NestedScrollingChild)paramView).setNestedScrollingEnabled(paramBoolean); 
  }
  
  public void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener) {}
  
  public void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPivotX(View paramView, float paramFloat) {}
  
  public void setPivotY(View paramView, float paramFloat) {}
  
  public void setPointerIcon(View paramView, PointerIconCompat paramPointerIconCompat) {}
  
  public void setRotation(View paramView, float paramFloat) {}
  
  public void setRotationX(View paramView, float paramFloat) {}
  
  public void setRotationY(View paramView, float paramFloat) {}
  
  public void setSaveFromParentEnabled(View paramView, boolean paramBoolean) {}
  
  public void setScaleX(View paramView, float paramFloat) {}
  
  public void setScaleY(View paramView, float paramFloat) {}
  
  public void setScrollIndicators(View paramView, int paramInt) {}
  
  public void setScrollIndicators(View paramView, int paramInt1, int paramInt2) {}
  
  public void setTransitionName(View paramView, String paramString) {}
  
  public void setTranslationX(View paramView, float paramFloat) {}
  
  public void setTranslationY(View paramView, float paramFloat) {}
  
  public void setTranslationZ(View paramView, float paramFloat) {}
  
  public void setX(View paramView, float paramFloat) {}
  
  public void setY(View paramView, float paramFloat) {}
  
  public void setZ(View paramView, float paramFloat) {}
  
  public boolean startNestedScroll(View paramView, int paramInt) {
    return (paramView instanceof NestedScrollingChild) ? ((NestedScrollingChild)paramView).startNestedScroll(paramInt) : false;
  }
  
  public void stopNestedScroll(View paramView) {
    if (paramView instanceof NestedScrollingChild)
      ((NestedScrollingChild)paramView).stopNestedScroll(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$BaseViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */