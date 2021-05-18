package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {
  private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5F;
  
  private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0F;
  
  private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5F;
  
  public static final int STATE_DRAGGING = 1;
  
  public static final int STATE_IDLE = 0;
  
  public static final int STATE_SETTLING = 2;
  
  public static final int SWIPE_DIRECTION_ANY = 2;
  
  public static final int SWIPE_DIRECTION_END_TO_START = 1;
  
  public static final int SWIPE_DIRECTION_START_TO_END = 0;
  
  float mAlphaEndSwipeDistance = 0.5F;
  
  float mAlphaStartSwipeDistance = 0.0F;
  
  private final ViewDragHelper.Callback mDragCallback = new SwipeDismissBehavior$1(this);
  
  float mDragDismissThreshold = 0.5F;
  
  private boolean mInterceptingEvents;
  
  SwipeDismissBehavior$OnDismissListener mListener;
  
  private float mSensitivity = 0.0F;
  
  private boolean mSensitivitySet;
  
  int mSwipeDirection = 2;
  
  ViewDragHelper mViewDragHelper;
  
  static float clamp(float paramFloat1, float paramFloat2, float paramFloat3) {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }
  
  static int clamp(int paramInt1, int paramInt2, int paramInt3) {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  private void ensureViewDragHelper(ViewGroup paramViewGroup) {
    if (this.mViewDragHelper == null) {
      ViewDragHelper viewDragHelper;
      if (this.mSensitivitySet) {
        viewDragHelper = ViewDragHelper.create(paramViewGroup, this.mSensitivity, this.mDragCallback);
      } else {
        viewDragHelper = ViewDragHelper.create((ViewGroup)viewDragHelper, this.mDragCallback);
      } 
      this.mViewDragHelper = viewDragHelper;
    } 
  }
  
  static float fraction(float paramFloat1, float paramFloat2, float paramFloat3) {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  public boolean canSwipeDismissView(@NonNull View paramView) {
    return true;
  }
  
  public int getDragState() {
    return (this.mViewDragHelper != null) ? this.mViewDragHelper.getViewDragState() : 0;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    boolean bool2 = false;
    boolean bool3 = this.mInterceptingEvents;
    boolean bool1 = bool3;
    switch (MotionEventCompat.getActionMasked(paramMotionEvent)) {
      default:
        bool1 = bool3;
      case 2:
        if (bool1) {
          ensureViewDragHelper(paramCoordinatorLayout);
          bool2 = this.mViewDragHelper.shouldInterceptTouchEvent(paramMotionEvent);
        } 
        return bool2;
      case 0:
        this.mInterceptingEvents = paramCoordinatorLayout.isPointInChildBounds((View)paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        bool1 = this.mInterceptingEvents;
      case 1:
      case 3:
        break;
    } 
    this.mInterceptingEvents = false;
    bool1 = bool3;
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    if (this.mViewDragHelper != null) {
      this.mViewDragHelper.processTouchEvent(paramMotionEvent);
      return true;
    } 
    return false;
  }
  
  public void setDragDismissDistance(float paramFloat) {
    this.mDragDismissThreshold = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setEndAlphaSwipeDistance(float paramFloat) {
    this.mAlphaEndSwipeDistance = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setListener(SwipeDismissBehavior$OnDismissListener paramSwipeDismissBehavior$OnDismissListener) {
    this.mListener = paramSwipeDismissBehavior$OnDismissListener;
  }
  
  public void setSensitivity(float paramFloat) {
    this.mSensitivity = paramFloat;
    this.mSensitivitySet = true;
  }
  
  public void setStartAlphaSwipeDistance(float paramFloat) {
    this.mAlphaStartSwipeDistance = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setSwipeDirection(int paramInt) {
    this.mSwipeDirection = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\SwipeDismissBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */