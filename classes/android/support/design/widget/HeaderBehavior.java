package android.support.design.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;

abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
  private static final int INVALID_POINTER = -1;
  
  private int mActivePointerId = -1;
  
  private Runnable mFlingRunnable;
  
  private boolean mIsBeingDragged;
  
  private int mLastMotionY;
  
  ScrollerCompat mScroller;
  
  private int mTouchSlop = -1;
  
  private VelocityTracker mVelocityTracker;
  
  public HeaderBehavior() {}
  
  public HeaderBehavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private void ensureVelocityTracker() {
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain(); 
  }
  
  boolean canDragView(V paramV) {
    return false;
  }
  
  final boolean fling(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, float paramFloat) {
    if (this.mFlingRunnable != null) {
      paramV.removeCallbacks(this.mFlingRunnable);
      this.mFlingRunnable = null;
    } 
    if (this.mScroller == null)
      this.mScroller = ScrollerCompat.create(paramV.getContext()); 
    this.mScroller.fling(0, getTopAndBottomOffset(), 0, Math.round(paramFloat), 0, 0, paramInt1, paramInt2);
    if (this.mScroller.computeScrollOffset()) {
      this.mFlingRunnable = new HeaderBehavior$FlingRunnable(this, paramCoordinatorLayout, paramV);
      ViewCompat.postOnAnimation((View)paramV, this.mFlingRunnable);
      return true;
    } 
    onFlingFinished(paramCoordinatorLayout, paramV);
    return false;
  }
  
  int getMaxDragOffset(V paramV) {
    return -paramV.getHeight();
  }
  
  int getScrollRangeForDragFling(V paramV) {
    return paramV.getHeight();
  }
  
  int getTopBottomOffsetForScrollingSibling() {
    return getTopAndBottomOffset();
  }
  
  void onFlingFinished(CoordinatorLayout paramCoordinatorLayout, V paramV) {}
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    int i;
    int j;
    if (this.mTouchSlop < 0)
      this.mTouchSlop = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop(); 
    if (paramMotionEvent.getAction() == 2 && this.mIsBeingDragged)
      return true; 
    switch (MotionEventCompat.getActionMasked(paramMotionEvent)) {
      default:
        if (this.mVelocityTracker != null)
          this.mVelocityTracker.addMovement(paramMotionEvent); 
        return this.mIsBeingDragged;
      case 0:
        this.mIsBeingDragged = false;
        i = (int)paramMotionEvent.getX();
        j = (int)paramMotionEvent.getY();
        if (canDragView(paramV) && paramCoordinatorLayout.isPointInChildBounds((View)paramV, i, j)) {
          this.mLastMotionY = j;
          this.mActivePointerId = paramMotionEvent.getPointerId(0);
          ensureVelocityTracker();
        } 
      case 2:
        i = this.mActivePointerId;
        if (i != -1) {
          i = paramMotionEvent.findPointerIndex(i);
          if (i != -1) {
            i = (int)paramMotionEvent.getY(i);
            if (Math.abs(i - this.mLastMotionY) > this.mTouchSlop) {
              this.mIsBeingDragged = true;
              this.mLastMotionY = i;
            } 
          } 
        } 
      case 1:
      case 3:
        break;
    } 
    this.mIsBeingDragged = false;
    this.mActivePointerId = -1;
    if (this.mVelocityTracker != null) {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    } 
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    int i;
    int j;
    boolean bool1;
    boolean bool2 = false;
    if (this.mTouchSlop < 0)
      this.mTouchSlop = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop(); 
    switch (MotionEventCompat.getActionMasked(paramMotionEvent)) {
      default:
        if (this.mVelocityTracker != null)
          this.mVelocityTracker.addMovement(paramMotionEvent); 
        return true;
      case 0:
        i = (int)paramMotionEvent.getX();
        j = (int)paramMotionEvent.getY();
        bool1 = bool2;
        if (paramCoordinatorLayout.isPointInChildBounds((View)paramV, i, j)) {
          bool1 = bool2;
          if (canDragView(paramV)) {
            this.mLastMotionY = j;
            this.mActivePointerId = paramMotionEvent.getPointerId(0);
            ensureVelocityTracker();
          } else {
            return bool1;
          } 
        } else {
          return bool1;
        } 
      case 2:
        i = paramMotionEvent.findPointerIndex(this.mActivePointerId);
        bool1 = bool2;
        if (i != -1) {
          int k = (int)paramMotionEvent.getY(i);
          j = this.mLastMotionY - k;
          i = j;
          if (!this.mIsBeingDragged) {
            i = j;
            if (Math.abs(j) > this.mTouchSlop) {
              this.mIsBeingDragged = true;
              if (j > 0) {
                i = j - this.mTouchSlop;
              } else {
                i = j + this.mTouchSlop;
              } 
            } 
          } 
          if (this.mIsBeingDragged) {
            this.mLastMotionY = k;
            scroll(paramCoordinatorLayout, paramV, i, getMaxDragOffset(paramV), 0);
          } 
        } else {
          return bool1;
        } 
      case 1:
        if (this.mVelocityTracker != null) {
          this.mVelocityTracker.addMovement(paramMotionEvent);
          this.mVelocityTracker.computeCurrentVelocity(1000);
          float f = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
          fling(paramCoordinatorLayout, paramV, -getScrollRangeForDragFling(paramV), 0, f);
        } 
        break;
      case 3:
        break;
    } 
    this.mIsBeingDragged = false;
    this.mActivePointerId = -1;
    if (this.mVelocityTracker != null) {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    } 
  }
  
  final int scroll(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3) {
    return setHeaderTopBottomOffset(paramCoordinatorLayout, paramV, getTopBottomOffsetForScrollingSibling() - paramInt1, paramInt2, paramInt3);
  }
  
  int setHeaderTopBottomOffset(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt) {
    return setHeaderTopBottomOffset(paramCoordinatorLayout, paramV, paramInt, -2147483648, 2147483647);
  }
  
  int setHeaderTopBottomOffset(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3) {
    int j = getTopAndBottomOffset();
    byte b = 0;
    int i = b;
    if (paramInt2 != 0) {
      i = b;
      if (j >= paramInt2) {
        i = b;
        if (j <= paramInt3) {
          paramInt1 = MathUtils.constrain(paramInt1, paramInt2, paramInt3);
          i = b;
          if (j != paramInt1) {
            setTopAndBottomOffset(paramInt1);
            i = j - paramInt1;
          } 
        } 
      } 
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\HeaderBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */