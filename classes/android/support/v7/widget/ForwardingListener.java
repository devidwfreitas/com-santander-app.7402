package android.support.v7.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.view.menu.ShowableListMenu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class ForwardingListener implements View.OnTouchListener {
  private int mActivePointerId;
  
  private Runnable mDisallowIntercept;
  
  private boolean mForwarding;
  
  private final int mLongPressTimeout;
  
  private final float mScaledTouchSlop;
  
  final View mSrc;
  
  private final int mTapTimeout;
  
  private final int[] mTmpLocation = new int[2];
  
  private Runnable mTriggerLongPress;
  
  public ForwardingListener(View paramView) {
    this.mSrc = paramView;
    paramView.setLongClickable(true);
    if (Build.VERSION.SDK_INT >= 12) {
      addDetachListenerApi12(paramView);
    } else {
      addDetachListenerBase(paramView);
    } 
    this.mScaledTouchSlop = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.mTapTimeout = ViewConfiguration.getTapTimeout();
    this.mLongPressTimeout = (this.mTapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
  }
  
  @TargetApi(12)
  @RequiresApi(12)
  private void addDetachListenerApi12(View paramView) {
    paramView.addOnAttachStateChangeListener(new ForwardingListener$1(this));
  }
  
  private void addDetachListenerBase(View paramView) {
    paramView.getViewTreeObserver().addOnGlobalLayoutListener(new ForwardingListener$2(this));
  }
  
  private void clearCallbacks() {
    if (this.mTriggerLongPress != null)
      this.mSrc.removeCallbacks(this.mTriggerLongPress); 
    if (this.mDisallowIntercept != null)
      this.mSrc.removeCallbacks(this.mDisallowIntercept); 
  }
  
  private void onDetachedFromWindow() {
    this.mForwarding = false;
    this.mActivePointerId = -1;
    if (this.mDisallowIntercept != null)
      this.mSrc.removeCallbacks(this.mDisallowIntercept); 
  }
  
  private boolean onTouchForwarded(MotionEvent paramMotionEvent) {
    View view = this.mSrc;
    ShowableListMenu showableListMenu = getPopup();
    if (showableListMenu != null && showableListMenu.isShowing()) {
      DropDownListView dropDownListView = (DropDownListView)showableListMenu.getListView();
      if (dropDownListView != null && dropDownListView.isShown()) {
        MotionEvent motionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
        toGlobalMotionEvent(view, motionEvent);
        toLocalMotionEvent((View)dropDownListView, motionEvent);
        null = dropDownListView.onForwardedEvent(motionEvent, this.mActivePointerId);
        motionEvent.recycle();
        int i = MotionEventCompat.getActionMasked(paramMotionEvent);
        if (i != 1 && i != 3) {
          i = 1;
        } else {
          i = 0;
        } 
        return (null && i != 0);
      } 
    } 
    return false;
  }
  
  private boolean onTouchObserved(MotionEvent paramMotionEvent) {
    View view = this.mSrc;
    if (view.isEnabled()) {
      int i;
      switch (MotionEventCompat.getActionMasked(paramMotionEvent)) {
        default:
          return false;
        case 0:
          this.mActivePointerId = paramMotionEvent.getPointerId(0);
          if (this.mDisallowIntercept == null)
            this.mDisallowIntercept = new ForwardingListener$DisallowIntercept(this); 
          view.postDelayed(this.mDisallowIntercept, this.mTapTimeout);
          if (this.mTriggerLongPress == null)
            this.mTriggerLongPress = new ForwardingListener$TriggerLongPress(this); 
          view.postDelayed(this.mTriggerLongPress, this.mLongPressTimeout);
          return false;
        case 2:
          i = paramMotionEvent.findPointerIndex(this.mActivePointerId);
          if (i >= 0 && !pointInView(view, paramMotionEvent.getX(i), paramMotionEvent.getY(i), this.mScaledTouchSlop)) {
            clearCallbacks();
            view.getParent().requestDisallowInterceptTouchEvent(true);
            return true;
          } 
          return false;
        case 1:
        case 3:
          break;
      } 
      clearCallbacks();
      return false;
    } 
    return false;
  }
  
  private static boolean pointInView(View paramView, float paramFloat1, float paramFloat2, float paramFloat3) {
    return (paramFloat1 >= -paramFloat3 && paramFloat2 >= -paramFloat3 && paramFloat1 < (paramView.getRight() - paramView.getLeft()) + paramFloat3 && paramFloat2 < (paramView.getBottom() - paramView.getTop()) + paramFloat3);
  }
  
  private boolean toGlobalMotionEvent(View paramView, MotionEvent paramMotionEvent) {
    int[] arrayOfInt = this.mTmpLocation;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
    return true;
  }
  
  private boolean toLocalMotionEvent(View paramView, MotionEvent paramMotionEvent) {
    int[] arrayOfInt = this.mTmpLocation;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(-arrayOfInt[0], -arrayOfInt[1]);
    return true;
  }
  
  public abstract ShowableListMenu getPopup();
  
  public boolean onForwardingStarted() {
    ShowableListMenu showableListMenu = getPopup();
    if (showableListMenu != null && !showableListMenu.isShowing())
      showableListMenu.show(); 
    return true;
  }
  
  protected boolean onForwardingStopped() {
    ShowableListMenu showableListMenu = getPopup();
    if (showableListMenu != null && showableListMenu.isShowing())
      showableListMenu.dismiss(); 
    return true;
  }
  
  void onLongPress() {
    clearCallbacks();
    View view = this.mSrc;
    if (view.isEnabled() && !view.isLongClickable() && onForwardingStarted()) {
      view.getParent().requestDisallowInterceptTouchEvent(true);
      long l = SystemClock.uptimeMillis();
      MotionEvent motionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      view.onTouchEvent(motionEvent);
      motionEvent.recycle();
      this.mForwarding = true;
      return;
    } 
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    boolean bool = false;
    boolean bool1 = this.mForwarding;
    if (bool1) {
      if (onTouchForwarded(paramMotionEvent) || !onForwardingStopped()) {
        null = true;
      } else {
        null = false;
      } 
    } else {
      if (onTouchObserved(paramMotionEvent) && onForwardingStarted()) {
        null = true;
      } else {
        null = false;
      } 
      if (null) {
        long l = SystemClock.uptimeMillis();
        MotionEvent motionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.mSrc.onTouchEvent(motionEvent);
        motionEvent.recycle();
      } 
    } 
    this.mForwarding = null;
    if (!null) {
      null = bool;
      return bool1 ? true : null;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ForwardingListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */