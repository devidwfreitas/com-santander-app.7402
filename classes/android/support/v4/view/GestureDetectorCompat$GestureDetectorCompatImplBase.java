package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

class GestureDetectorCompat$GestureDetectorCompatImplBase implements GestureDetectorCompat$GestureDetectorCompatImpl {
  private static final int DOUBLE_TAP_TIMEOUT;
  
  private static final int LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
  
  private static final int LONG_PRESS = 2;
  
  private static final int SHOW_PRESS = 1;
  
  private static final int TAP = 3;
  
  private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
  
  private boolean mAlwaysInBiggerTapRegion;
  
  private boolean mAlwaysInTapRegion;
  
  MotionEvent mCurrentDownEvent;
  
  boolean mDeferConfirmSingleTap;
  
  GestureDetector.OnDoubleTapListener mDoubleTapListener;
  
  private int mDoubleTapSlopSquare;
  
  private float mDownFocusX;
  
  private float mDownFocusY;
  
  private final Handler mHandler;
  
  private boolean mInLongPress;
  
  private boolean mIsDoubleTapping;
  
  private boolean mIsLongpressEnabled;
  
  private float mLastFocusX;
  
  private float mLastFocusY;
  
  final GestureDetector.OnGestureListener mListener;
  
  private int mMaximumFlingVelocity;
  
  private int mMinimumFlingVelocity;
  
  private MotionEvent mPreviousUpEvent;
  
  boolean mStillDown;
  
  private int mTouchSlopSquare;
  
  private VelocityTracker mVelocityTracker;
  
  static {
    DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
  }
  
  public GestureDetectorCompat$GestureDetectorCompatImplBase(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler) {
    if (paramHandler != null) {
      this.mHandler = new GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler(this, paramHandler);
    } else {
      this.mHandler = new GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler(this);
    } 
    this.mListener = paramOnGestureListener;
    if (paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)
      setOnDoubleTapListener((GestureDetector.OnDoubleTapListener)paramOnGestureListener); 
    init(paramContext);
  }
  
  private void cancel() {
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(3);
    this.mVelocityTracker.recycle();
    this.mVelocityTracker = null;
    this.mIsDoubleTapping = false;
    this.mStillDown = false;
    this.mAlwaysInTapRegion = false;
    this.mAlwaysInBiggerTapRegion = false;
    this.mDeferConfirmSingleTap = false;
    if (this.mInLongPress)
      this.mInLongPress = false; 
  }
  
  private void cancelTaps() {
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(3);
    this.mIsDoubleTapping = false;
    this.mAlwaysInTapRegion = false;
    this.mAlwaysInBiggerTapRegion = false;
    this.mDeferConfirmSingleTap = false;
    if (this.mInLongPress)
      this.mInLongPress = false; 
  }
  
  private void init(Context paramContext) {
    if (paramContext == null)
      throw new IllegalArgumentException("Context must not be null"); 
    if (this.mListener == null)
      throw new IllegalArgumentException("OnGestureListener must not be null"); 
    this.mIsLongpressEnabled = true;
    ViewConfiguration viewConfiguration = ViewConfiguration.get(paramContext);
    int i = viewConfiguration.getScaledTouchSlop();
    int j = viewConfiguration.getScaledDoubleTapSlop();
    this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    this.mTouchSlopSquare = i * i;
    this.mDoubleTapSlopSquare = j * j;
  }
  
  private boolean isConsideredDoubleTap(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, MotionEvent paramMotionEvent3) {
    if (this.mAlwaysInBiggerTapRegion && paramMotionEvent3.getEventTime() - paramMotionEvent2.getEventTime() <= DOUBLE_TAP_TIMEOUT) {
      int i = (int)paramMotionEvent1.getX() - (int)paramMotionEvent3.getX();
      int j = (int)paramMotionEvent1.getY() - (int)paramMotionEvent3.getY();
      if (i * i + j * j < this.mDoubleTapSlopSquare)
        return true; 
    } 
    return false;
  }
  
  void dispatchLongPress() {
    this.mHandler.removeMessages(3);
    this.mDeferConfirmSingleTap = false;
    this.mInLongPress = true;
    this.mListener.onLongPress(this.mCurrentDownEvent);
  }
  
  public boolean isLongpressEnabled() {
    return this.mIsLongpressEnabled;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    int i;
    int j;
    MotionEvent motionEvent;
    int n = paramMotionEvent.getAction();
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain(); 
    this.mVelocityTracker.addMovement(paramMotionEvent);
    if ((n & 0xFF) == 6) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      j = MotionEventCompat.getActionIndex(paramMotionEvent);
    } else {
      j = -1;
    } 
    int m = paramMotionEvent.getPointerCount();
    int k = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    while (k < m) {
      if (j != k) {
        f2 += paramMotionEvent.getX(k);
        f1 += paramMotionEvent.getY(k);
      } 
      k++;
    } 
    if (i) {
      i = m - 1;
    } else {
      i = m;
    } 
    f2 /= i;
    f1 /= i;
    switch (n & 0xFF) {
      default:
        return false;
      case 5:
        this.mLastFocusX = f2;
        this.mDownFocusX = f2;
        this.mLastFocusY = f1;
        this.mDownFocusY = f1;
        cancelTaps();
        return false;
      case 6:
        this.mLastFocusX = f2;
        this.mDownFocusX = f2;
        this.mLastFocusY = f1;
        this.mDownFocusY = f1;
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
        j = MotionEventCompat.getActionIndex(paramMotionEvent);
        i = paramMotionEvent.getPointerId(j);
        f1 = VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, i);
        f2 = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, i);
        i = 0;
        while (true) {
          if (i < m) {
            if (i != j) {
              k = paramMotionEvent.getPointerId(i);
              float f = VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, k);
              if (VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, k) * f2 + f * f1 < 0.0F) {
                this.mVelocityTracker.clear();
                return false;
              } 
            } 
            i++;
          } 
        } 
      case 0:
        if (this.mDoubleTapListener != null) {
          bool = this.mHandler.hasMessages(3);
          if (bool)
            this.mHandler.removeMessages(3); 
          if (this.mCurrentDownEvent != null && this.mPreviousUpEvent != null && bool && isConsideredDoubleTap(this.mCurrentDownEvent, this.mPreviousUpEvent, paramMotionEvent)) {
            this.mIsDoubleTapping = true;
            i = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | false | this.mDoubleTapListener.onDoubleTapEvent(paramMotionEvent);
          } else {
            this.mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
            i = 0;
          } 
          this.mLastFocusX = f2;
          this.mDownFocusX = f2;
          this.mLastFocusY = f1;
          this.mDownFocusY = f1;
          if (this.mCurrentDownEvent != null)
            this.mCurrentDownEvent.recycle(); 
          this.mCurrentDownEvent = MotionEvent.obtain(paramMotionEvent);
          this.mAlwaysInTapRegion = true;
          this.mAlwaysInBiggerTapRegion = true;
          this.mStillDown = true;
          this.mInLongPress = false;
          this.mDeferConfirmSingleTap = false;
          if (this.mIsLongpressEnabled) {
            this.mHandler.removeMessages(2);
            this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + TAP_TIMEOUT + LONGPRESS_TIMEOUT);
          } 
          this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + TAP_TIMEOUT);
          return i | this.mListener.onDown(paramMotionEvent);
        } 
        i = 0;
      case 2:
        if (!this.mInLongPress) {
          float f3 = this.mLastFocusX - f2;
          float f4 = this.mLastFocusY - f1;
          if (this.mIsDoubleTapping)
            return false | this.mDoubleTapListener.onDoubleTapEvent(paramMotionEvent); 
          if (this.mAlwaysInTapRegion) {
            i = (int)(f2 - this.mDownFocusX);
            j = (int)(f1 - this.mDownFocusY);
            i = i * i + j * j;
            if (i > this.mTouchSlopSquare) {
              bool = this.mListener.onScroll(this.mCurrentDownEvent, paramMotionEvent, f3, f4);
              this.mLastFocusX = f2;
              this.mLastFocusY = f1;
              this.mAlwaysInTapRegion = false;
              this.mHandler.removeMessages(3);
              this.mHandler.removeMessages(1);
              this.mHandler.removeMessages(2);
            } else {
              break;
            } 
          } else if (Math.abs(f3) >= 1.0F || Math.abs(f4) >= 1.0F) {
            bool = this.mListener.onScroll(this.mCurrentDownEvent, paramMotionEvent, f3, f4);
            this.mLastFocusX = f2;
            this.mLastFocusY = f1;
            return bool;
          } 
        } else {
        
        } 
        if (i > this.mTouchSlopSquare)
          this.mAlwaysInBiggerTapRegion = false; 
        return bool;
      case 1:
        this.mStillDown = false;
        motionEvent = MotionEvent.obtain(paramMotionEvent);
        if (this.mIsDoubleTapping) {
          int i1 = this.mDoubleTapListener.onDoubleTapEvent(paramMotionEvent) | false;
        } else if (this.mInLongPress) {
          this.mHandler.removeMessages(3);
          this.mInLongPress = false;
          bool = false;
        } else if (this.mAlwaysInTapRegion) {
          boolean bool1 = this.mListener.onSingleTapUp(paramMotionEvent);
          bool = bool1;
          if (this.mDeferConfirmSingleTap) {
            bool = bool1;
            if (this.mDoubleTapListener != null) {
              this.mDoubleTapListener.onSingleTapConfirmed(paramMotionEvent);
              bool = bool1;
            } 
          } 
        } else {
          VelocityTracker velocityTracker = this.mVelocityTracker;
          i = paramMotionEvent.getPointerId(0);
          velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
          f1 = VelocityTrackerCompat.getYVelocity(velocityTracker, i);
          f2 = VelocityTrackerCompat.getXVelocity(velocityTracker, i);
          if (Math.abs(f1) > this.mMinimumFlingVelocity || Math.abs(f2) > this.mMinimumFlingVelocity) {
            bool = this.mListener.onFling(this.mCurrentDownEvent, paramMotionEvent, f2, f1);
          } else {
            bool = false;
          } 
        } 
        if (this.mPreviousUpEvent != null)
          this.mPreviousUpEvent.recycle(); 
        this.mPreviousUpEvent = motionEvent;
        if (this.mVelocityTracker != null) {
          this.mVelocityTracker.recycle();
          this.mVelocityTracker = null;
        } 
        this.mIsDoubleTapping = false;
        this.mDeferConfirmSingleTap = false;
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        return bool;
      case 3:
        cancel();
        return false;
    } 
    boolean bool = false;
    if (i > this.mTouchSlopSquare)
      this.mAlwaysInBiggerTapRegion = false; 
    return bool;
  }
  
  public void setIsLongpressEnabled(boolean paramBoolean) {
    this.mIsLongpressEnabled = paramBoolean;
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener) {
    this.mDoubleTapListener = paramOnDoubleTapListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\GestureDetectorCompat$GestureDetectorCompatImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */