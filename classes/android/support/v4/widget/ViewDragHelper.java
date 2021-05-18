package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ViewDragHelper {
  private static final int BASE_SETTLE_DURATION = 256;
  
  public static final int DIRECTION_ALL = 3;
  
  public static final int DIRECTION_HORIZONTAL = 1;
  
  public static final int DIRECTION_VERTICAL = 2;
  
  public static final int EDGE_ALL = 15;
  
  public static final int EDGE_BOTTOM = 8;
  
  public static final int EDGE_LEFT = 1;
  
  public static final int EDGE_RIGHT = 2;
  
  private static final int EDGE_SIZE = 20;
  
  public static final int EDGE_TOP = 4;
  
  public static final int INVALID_POINTER = -1;
  
  private static final int MAX_SETTLE_DURATION = 600;
  
  public static final int STATE_DRAGGING = 1;
  
  public static final int STATE_IDLE = 0;
  
  public static final int STATE_SETTLING = 2;
  
  private static final String TAG = "ViewDragHelper";
  
  private static final Interpolator sInterpolator = new ViewDragHelper$1();
  
  private int mActivePointerId = -1;
  
  private final ViewDragHelper$Callback mCallback;
  
  private View mCapturedView;
  
  private int mDragState;
  
  private int[] mEdgeDragsInProgress;
  
  private int[] mEdgeDragsLocked;
  
  private int mEdgeSize;
  
  private int[] mInitialEdgesTouched;
  
  private float[] mInitialMotionX;
  
  private float[] mInitialMotionY;
  
  private float[] mLastMotionX;
  
  private float[] mLastMotionY;
  
  private float mMaxVelocity;
  
  private float mMinVelocity;
  
  private final ViewGroup mParentView;
  
  private int mPointersDown;
  
  private boolean mReleaseInProgress;
  
  private ScrollerCompat mScroller;
  
  private final Runnable mSetIdleRunnable = new ViewDragHelper$2(this);
  
  private int mTouchSlop;
  
  private int mTrackingEdges;
  
  private VelocityTracker mVelocityTracker;
  
  private ViewDragHelper(Context paramContext, ViewGroup paramViewGroup, ViewDragHelper$Callback paramViewDragHelper$Callback) {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("Parent view may not be null"); 
    if (paramViewDragHelper$Callback == null)
      throw new IllegalArgumentException("Callback may not be null"); 
    this.mParentView = paramViewGroup;
    this.mCallback = paramViewDragHelper$Callback;
    ViewConfiguration viewConfiguration = ViewConfiguration.get(paramContext);
    this.mEdgeSize = (int)((paramContext.getResources().getDisplayMetrics()).density * 20.0F + 0.5F);
    this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
    this.mScroller = ScrollerCompat.create(paramContext, sInterpolator);
  }
  
  private boolean checkNewEdgeDrag(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2) {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if ((this.mInitialEdgesTouched[paramInt1] & paramInt2) == paramInt2 && (this.mTrackingEdges & paramInt2) != 0 && (this.mEdgeDragsLocked[paramInt1] & paramInt2) != paramInt2 && (this.mEdgeDragsInProgress[paramInt1] & paramInt2) != paramInt2 && (paramFloat1 > this.mTouchSlop || paramFloat2 > this.mTouchSlop)) {
      if (paramFloat1 < paramFloat2 * 0.5F && this.mCallback.onEdgeLock(paramInt2)) {
        int[] arrayOfInt = this.mEdgeDragsLocked;
        arrayOfInt[paramInt1] = arrayOfInt[paramInt1] | paramInt2;
        return false;
      } 
      if ((this.mEdgeDragsInProgress[paramInt1] & paramInt2) == 0 && paramFloat1 > this.mTouchSlop)
        return true; 
    } 
    return false;
  }
  
  private boolean checkTouchSlop(View paramView, float paramFloat1, float paramFloat2) {
    boolean bool1;
    boolean bool2;
    boolean bool3 = true;
    if (paramView == null)
      return false; 
    if (this.mCallback.getViewHorizontalDragRange(paramView) > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.mCallback.getViewVerticalDragRange(paramView) > 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    return (bool1 && bool2) ? ((paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 <= (this.mTouchSlop * this.mTouchSlop)) ? false : bool3) : (bool1 ? ((Math.abs(paramFloat1) <= this.mTouchSlop) ? false : bool3) : (bool2 ? ((Math.abs(paramFloat2) <= this.mTouchSlop) ? false : bool3) : false));
  }
  
  private float clampMag(float paramFloat1, float paramFloat2, float paramFloat3) {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2)
      return 0.0F; 
    if (f > paramFloat3) {
      paramFloat2 = paramFloat3;
      return (paramFloat1 <= 0.0F) ? -paramFloat3 : paramFloat2;
    } 
    return paramFloat1;
  }
  
  private int clampMag(int paramInt1, int paramInt2, int paramInt3) {
    int i = Math.abs(paramInt1);
    if (i < paramInt2)
      return 0; 
    if (i > paramInt3) {
      paramInt2 = paramInt3;
      return (paramInt1 <= 0) ? -paramInt3 : paramInt2;
    } 
    return paramInt1;
  }
  
  private void clearMotionHistory() {
    if (this.mInitialMotionX == null)
      return; 
    Arrays.fill(this.mInitialMotionX, 0.0F);
    Arrays.fill(this.mInitialMotionY, 0.0F);
    Arrays.fill(this.mLastMotionX, 0.0F);
    Arrays.fill(this.mLastMotionY, 0.0F);
    Arrays.fill(this.mInitialEdgesTouched, 0);
    Arrays.fill(this.mEdgeDragsInProgress, 0);
    Arrays.fill(this.mEdgeDragsLocked, 0);
    this.mPointersDown = 0;
  }
  
  private void clearMotionHistory(int paramInt) {
    if (this.mInitialMotionX == null || !isPointerDown(paramInt))
      return; 
    this.mInitialMotionX[paramInt] = 0.0F;
    this.mInitialMotionY[paramInt] = 0.0F;
    this.mLastMotionX[paramInt] = 0.0F;
    this.mLastMotionY[paramInt] = 0.0F;
    this.mInitialEdgesTouched[paramInt] = 0;
    this.mEdgeDragsInProgress[paramInt] = 0;
    this.mEdgeDragsLocked[paramInt] = 0;
    this.mPointersDown &= 1 << paramInt ^ 0xFFFFFFFF;
  }
  
  private int computeAxisDuration(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt1 == 0)
      return 0; 
    int i = this.mParentView.getWidth();
    int j = i / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f1 = j;
    float f2 = j;
    f3 = distanceInfluenceForSnapDuration(f3);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {
      paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;
      return Math.min(paramInt1, 600);
    } 
    paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F);
    return Math.min(paramInt1, 600);
  }
  
  private int computeSettleDuration(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    float f1;
    paramInt3 = clampMag(paramInt3, (int)this.mMinVelocity, (int)this.mMaxVelocity);
    paramInt4 = clampMag(paramInt4, (int)this.mMinVelocity, (int)this.mMaxVelocity);
    int i = Math.abs(paramInt1);
    int j = Math.abs(paramInt2);
    int k = Math.abs(paramInt3);
    int m = Math.abs(paramInt4);
    int n = k + m;
    int i1 = i + j;
    if (paramInt3 != 0) {
      f1 = k / n;
    } else {
      f1 = i / i1;
    } 
    if (paramInt4 != 0) {
      float f4 = m / n;
      paramInt1 = computeAxisDuration(paramInt1, paramInt3, this.mCallback.getViewHorizontalDragRange(paramView));
      paramInt2 = computeAxisDuration(paramInt2, paramInt4, this.mCallback.getViewVerticalDragRange(paramView));
      float f5 = paramInt1;
      return (int)(f4 * paramInt2 + f1 * f5);
    } 
    float f2 = j / i1;
    paramInt1 = computeAxisDuration(paramInt1, paramInt3, this.mCallback.getViewHorizontalDragRange(paramView));
    paramInt2 = computeAxisDuration(paramInt2, paramInt4, this.mCallback.getViewVerticalDragRange(paramView));
    float f3 = paramInt1;
    return (int)(f2 * paramInt2 + f1 * f3);
  }
  
  public static ViewDragHelper create(ViewGroup paramViewGroup, float paramFloat, ViewDragHelper$Callback paramViewDragHelper$Callback) {
    ViewDragHelper viewDragHelper = create(paramViewGroup, paramViewDragHelper$Callback);
    viewDragHelper.mTouchSlop = (int)(viewDragHelper.mTouchSlop * 1.0F / paramFloat);
    return viewDragHelper;
  }
  
  public static ViewDragHelper create(ViewGroup paramViewGroup, ViewDragHelper$Callback paramViewDragHelper$Callback) {
    return new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramViewDragHelper$Callback);
  }
  
  private void dispatchViewReleased(float paramFloat1, float paramFloat2) {
    this.mReleaseInProgress = true;
    this.mCallback.onViewReleased(this.mCapturedView, paramFloat1, paramFloat2);
    this.mReleaseInProgress = false;
    if (this.mDragState == 1)
      setDragState(0); 
  }
  
  private float distanceInfluenceForSnapDuration(float paramFloat) {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private void dragTo(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = this.mCapturedView.getLeft();
    int j = this.mCapturedView.getTop();
    if (paramInt3 != 0) {
      paramInt1 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, paramInt1, paramInt3);
      ViewCompat.offsetLeftAndRight(this.mCapturedView, paramInt1 - i);
    } 
    if (paramInt4 != 0) {
      paramInt2 = this.mCallback.clampViewPositionVertical(this.mCapturedView, paramInt2, paramInt4);
      ViewCompat.offsetTopAndBottom(this.mCapturedView, paramInt2 - j);
    } 
    if (paramInt3 != 0 || paramInt4 != 0)
      this.mCallback.onViewPositionChanged(this.mCapturedView, paramInt1, paramInt2, paramInt1 - i, paramInt2 - j); 
  }
  
  private void ensureMotionHistorySizeForId(int paramInt) {
    if (this.mInitialMotionX == null || this.mInitialMotionX.length <= paramInt) {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.mInitialMotionX != null) {
        System.arraycopy(this.mInitialMotionX, 0, arrayOfFloat1, 0, this.mInitialMotionX.length);
        System.arraycopy(this.mInitialMotionY, 0, arrayOfFloat2, 0, this.mInitialMotionY.length);
        System.arraycopy(this.mLastMotionX, 0, arrayOfFloat3, 0, this.mLastMotionX.length);
        System.arraycopy(this.mLastMotionY, 0, arrayOfFloat4, 0, this.mLastMotionY.length);
        System.arraycopy(this.mInitialEdgesTouched, 0, arrayOfInt1, 0, this.mInitialEdgesTouched.length);
        System.arraycopy(this.mEdgeDragsInProgress, 0, arrayOfInt2, 0, this.mEdgeDragsInProgress.length);
        System.arraycopy(this.mEdgeDragsLocked, 0, arrayOfInt3, 0, this.mEdgeDragsLocked.length);
      } 
      this.mInitialMotionX = arrayOfFloat1;
      this.mInitialMotionY = arrayOfFloat2;
      this.mLastMotionX = arrayOfFloat3;
      this.mLastMotionY = arrayOfFloat4;
      this.mInitialEdgesTouched = arrayOfInt1;
      this.mEdgeDragsInProgress = arrayOfInt2;
      this.mEdgeDragsLocked = arrayOfInt3;
    } 
  }
  
  private boolean forceSettleCapturedViewAt(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = this.mCapturedView.getLeft();
    int j = this.mCapturedView.getTop();
    paramInt1 -= i;
    paramInt2 -= j;
    if (paramInt1 == 0 && paramInt2 == 0) {
      this.mScroller.abortAnimation();
      setDragState(0);
      return false;
    } 
    paramInt3 = computeSettleDuration(this.mCapturedView, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mScroller.startScroll(i, j, paramInt1, paramInt2, paramInt3);
    setDragState(2);
    return true;
  }
  
  private int getEdgesTouched(int paramInt1, int paramInt2) {
    int j = 0;
    if (paramInt1 < this.mParentView.getLeft() + this.mEdgeSize)
      j = 1; 
    int i = j;
    if (paramInt2 < this.mParentView.getTop() + this.mEdgeSize)
      i = j | 0x4; 
    j = i;
    if (paramInt1 > this.mParentView.getRight() - this.mEdgeSize)
      j = i | 0x2; 
    paramInt1 = j;
    if (paramInt2 > this.mParentView.getBottom() - this.mEdgeSize)
      paramInt1 = j | 0x8; 
    return paramInt1;
  }
  
  private boolean isValidPointerForActionMove(int paramInt) {
    if (!isPointerDown(paramInt)) {
      Log.e("ViewDragHelper", "Ignoring pointerId=" + paramInt + " because ACTION_DOWN was not received " + "for this pointer before ACTION_MOVE. It likely happened because " + " ViewDragHelper did not receive all the events in the event stream.");
      return false;
    } 
    return true;
  }
  
  private void releaseViewForPointerUp() {
    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
    dispatchViewReleased(clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
  }
  
  private void reportNewEdgeDrags(float paramFloat1, float paramFloat2, int paramInt) {
    int j = 1;
    if (!checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, 1))
      j = 0; 
    int i = j;
    if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 4))
      i = j | 0x4; 
    j = i;
    if (checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, 2))
      j = i | 0x2; 
    i = j;
    if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 8))
      i = j | 0x8; 
    if (i != 0) {
      int[] arrayOfInt = this.mEdgeDragsInProgress;
      arrayOfInt[paramInt] = arrayOfInt[paramInt] | i;
      this.mCallback.onEdgeDragStarted(i, paramInt);
    } 
  }
  
  private void saveInitialMotion(float paramFloat1, float paramFloat2, int paramInt) {
    ensureMotionHistorySizeForId(paramInt);
    float[] arrayOfFloat = this.mInitialMotionX;
    this.mLastMotionX[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = this.mInitialMotionY;
    this.mLastMotionY[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    this.mInitialEdgesTouched[paramInt] = getEdgesTouched((int)paramFloat1, (int)paramFloat2);
    this.mPointersDown |= 1 << paramInt;
  }
  
  private void saveLastMotion(MotionEvent paramMotionEvent) {
    int j = paramMotionEvent.getPointerCount();
    for (int i = 0; i < j; i++) {
      int k = paramMotionEvent.getPointerId(i);
      if (isValidPointerForActionMove(k)) {
        float f1 = paramMotionEvent.getX(i);
        float f2 = paramMotionEvent.getY(i);
        this.mLastMotionX[k] = f1;
        this.mLastMotionY[k] = f2;
      } 
    } 
  }
  
  public void abort() {
    cancel();
    if (this.mDragState == 2) {
      int i = this.mScroller.getCurrX();
      int j = this.mScroller.getCurrY();
      this.mScroller.abortAnimation();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      this.mCallback.onViewPositionChanged(this.mCapturedView, k, m, k - i, m - j);
    } 
    setDragState(0);
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      int i;
      for (i = viewGroup.getChildCount() - 1; i >= 0; i--) {
        View view = viewGroup.getChildAt(i);
        if (paramInt3 + j >= view.getLeft() && paramInt3 + j < view.getRight() && paramInt4 + k >= view.getTop() && paramInt4 + k < view.getBottom() && canScroll(view, true, paramInt1, paramInt2, paramInt3 + j - view.getLeft(), paramInt4 + k - view.getTop()))
          return true; 
      } 
    } 
    return (paramBoolean && (ViewCompat.canScrollHorizontally(paramView, -paramInt1) || ViewCompat.canScrollVertically(paramView, -paramInt2)));
  }
  
  public void cancel() {
    this.mActivePointerId = -1;
    clearMotionHistory();
    if (this.mVelocityTracker != null) {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    } 
  }
  
  public void captureChildView(View paramView, int paramInt) {
    if (paramView.getParent() != this.mParentView)
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")"); 
    this.mCapturedView = paramView;
    this.mActivePointerId = paramInt;
    this.mCallback.onViewCaptured(paramView, paramInt);
    setDragState(1);
  }
  
  public boolean checkTouchSlop(int paramInt) {
    boolean bool = false;
    int j = this.mInitialMotionX.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (checkTouchSlop(paramInt, i))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean checkTouchSlop(int paramInt1, int paramInt2) {
    boolean bool1;
    boolean bool2 = true;
    if (!isPointerDown(paramInt2))
      return false; 
    if ((paramInt1 & 0x1) == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if ((paramInt1 & 0x2) == 2) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    float f1 = this.mLastMotionX[paramInt2] - this.mInitialMotionX[paramInt2];
    float f2 = this.mLastMotionY[paramInt2] - this.mInitialMotionY[paramInt2];
    return (bool1 && paramInt1 != 0) ? ((f1 * f1 + f2 * f2 <= (this.mTouchSlop * this.mTouchSlop)) ? false : bool2) : (bool1 ? ((Math.abs(f1) <= this.mTouchSlop) ? false : bool2) : ((paramInt1 != 0) ? ((Math.abs(f2) <= this.mTouchSlop) ? false : bool2) : false));
  }
  
  public boolean continueSettling(boolean paramBoolean) {
    if (this.mDragState == 2) {
      boolean bool = this.mScroller.computeScrollOffset();
      int i = this.mScroller.getCurrX();
      int j = this.mScroller.getCurrY();
      int k = i - this.mCapturedView.getLeft();
      int m = j - this.mCapturedView.getTop();
      if (k != 0)
        ViewCompat.offsetLeftAndRight(this.mCapturedView, k); 
      if (m != 0)
        ViewCompat.offsetTopAndBottom(this.mCapturedView, m); 
      if (k != 0 || m != 0)
        this.mCallback.onViewPositionChanged(this.mCapturedView, i, j, k, m); 
      if (bool && i == this.mScroller.getFinalX() && j == this.mScroller.getFinalY()) {
        this.mScroller.abortAnimation();
        bool = false;
      } 
      if (!bool)
        if (paramBoolean) {
          this.mParentView.post(this.mSetIdleRunnable);
        } else {
          setDragState(0);
        }  
    } 
    return (this.mDragState == 2);
  }
  
  public View findTopChildUnder(int paramInt1, int paramInt2) {
    for (int i = this.mParentView.getChildCount() - 1; i >= 0; i--) {
      View view = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(i));
      if (paramInt1 >= view.getLeft() && paramInt1 < view.getRight() && paramInt2 >= view.getTop() && paramInt2 < view.getBottom())
        return view; 
    } 
    return null;
  }
  
  public void flingCapturedView(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!this.mReleaseInProgress)
      throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased"); 
    this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), paramInt1, paramInt3, paramInt2, paramInt4);
    setDragState(2);
  }
  
  public int getActivePointerId() {
    return this.mActivePointerId;
  }
  
  public View getCapturedView() {
    return this.mCapturedView;
  }
  
  public int getEdgeSize() {
    return this.mEdgeSize;
  }
  
  public float getMinVelocity() {
    return this.mMinVelocity;
  }
  
  public int getTouchSlop() {
    return this.mTouchSlop;
  }
  
  public int getViewDragState() {
    return this.mDragState;
  }
  
  public boolean isCapturedViewUnder(int paramInt1, int paramInt2) {
    return isViewUnder(this.mCapturedView, paramInt1, paramInt2);
  }
  
  public boolean isEdgeTouched(int paramInt) {
    boolean bool = false;
    int j = this.mInitialEdgesTouched.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (isEdgeTouched(paramInt, i))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean isEdgeTouched(int paramInt1, int paramInt2) {
    return (isPointerDown(paramInt2) && (this.mInitialEdgesTouched[paramInt2] & paramInt1) != 0);
  }
  
  public boolean isPointerDown(int paramInt) {
    return ((this.mPointersDown & 1 << paramInt) != 0);
  }
  
  public boolean isViewUnder(View paramView, int paramInt1, int paramInt2) {
    return (paramView != null && paramInt1 >= paramView.getLeft() && paramInt1 < paramView.getRight() && paramInt2 >= paramView.getTop() && paramInt2 < paramView.getBottom());
  }
  
  public void processTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: iconst_0
    //   4: istore #7
    //   6: aload_1
    //   7: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   10: istore #9
    //   12: aload_1
    //   13: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   16: istore #8
    //   18: iload #9
    //   20: ifne -> 27
    //   23: aload_0
    //   24: invokevirtual cancel : ()V
    //   27: aload_0
    //   28: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   31: ifnonnull -> 41
    //   34: aload_0
    //   35: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   38: putfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   41: aload_0
    //   42: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   45: aload_1
    //   46: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   49: iload #9
    //   51: tableswitch default -> 92, 0 -> 93, 1 -> 656, 2 -> 282, 3 -> 673, 4 -> 92, 5 -> 171, 6 -> 527
    //   92: return
    //   93: aload_1
    //   94: invokevirtual getX : ()F
    //   97: fstore_2
    //   98: aload_1
    //   99: invokevirtual getY : ()F
    //   102: fstore_3
    //   103: aload_1
    //   104: iconst_0
    //   105: invokevirtual getPointerId : (I)I
    //   108: istore #6
    //   110: aload_0
    //   111: fload_2
    //   112: f2i
    //   113: fload_3
    //   114: f2i
    //   115: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   118: astore_1
    //   119: aload_0
    //   120: fload_2
    //   121: fload_3
    //   122: iload #6
    //   124: invokespecial saveInitialMotion : (FFI)V
    //   127: aload_0
    //   128: aload_1
    //   129: iload #6
    //   131: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   134: pop
    //   135: aload_0
    //   136: getfield mInitialEdgesTouched : [I
    //   139: iload #6
    //   141: iaload
    //   142: istore #7
    //   144: aload_0
    //   145: getfield mTrackingEdges : I
    //   148: iload #7
    //   150: iand
    //   151: ifeq -> 92
    //   154: aload_0
    //   155: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   158: iload #7
    //   160: aload_0
    //   161: getfield mTrackingEdges : I
    //   164: iand
    //   165: iload #6
    //   167: invokevirtual onEdgeTouched : (II)V
    //   170: return
    //   171: aload_1
    //   172: iload #8
    //   174: invokevirtual getPointerId : (I)I
    //   177: istore #6
    //   179: aload_1
    //   180: iload #8
    //   182: invokevirtual getX : (I)F
    //   185: fstore_2
    //   186: aload_1
    //   187: iload #8
    //   189: invokevirtual getY : (I)F
    //   192: fstore_3
    //   193: aload_0
    //   194: fload_2
    //   195: fload_3
    //   196: iload #6
    //   198: invokespecial saveInitialMotion : (FFI)V
    //   201: aload_0
    //   202: getfield mDragState : I
    //   205: ifne -> 259
    //   208: aload_0
    //   209: aload_0
    //   210: fload_2
    //   211: f2i
    //   212: fload_3
    //   213: f2i
    //   214: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   217: iload #6
    //   219: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   222: pop
    //   223: aload_0
    //   224: getfield mInitialEdgesTouched : [I
    //   227: iload #6
    //   229: iaload
    //   230: istore #7
    //   232: aload_0
    //   233: getfield mTrackingEdges : I
    //   236: iload #7
    //   238: iand
    //   239: ifeq -> 92
    //   242: aload_0
    //   243: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   246: iload #7
    //   248: aload_0
    //   249: getfield mTrackingEdges : I
    //   252: iand
    //   253: iload #6
    //   255: invokevirtual onEdgeTouched : (II)V
    //   258: return
    //   259: aload_0
    //   260: fload_2
    //   261: f2i
    //   262: fload_3
    //   263: f2i
    //   264: invokevirtual isCapturedViewUnder : (II)Z
    //   267: ifeq -> 92
    //   270: aload_0
    //   271: aload_0
    //   272: getfield mCapturedView : Landroid/view/View;
    //   275: iload #6
    //   277: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   280: pop
    //   281: return
    //   282: aload_0
    //   283: getfield mDragState : I
    //   286: iconst_1
    //   287: if_icmpne -> 387
    //   290: aload_0
    //   291: aload_0
    //   292: getfield mActivePointerId : I
    //   295: invokespecial isValidPointerForActionMove : (I)Z
    //   298: ifeq -> 92
    //   301: aload_1
    //   302: aload_0
    //   303: getfield mActivePointerId : I
    //   306: invokevirtual findPointerIndex : (I)I
    //   309: istore #6
    //   311: aload_1
    //   312: iload #6
    //   314: invokevirtual getX : (I)F
    //   317: fstore_2
    //   318: aload_1
    //   319: iload #6
    //   321: invokevirtual getY : (I)F
    //   324: fstore_3
    //   325: fload_2
    //   326: aload_0
    //   327: getfield mLastMotionX : [F
    //   330: aload_0
    //   331: getfield mActivePointerId : I
    //   334: faload
    //   335: fsub
    //   336: f2i
    //   337: istore #6
    //   339: fload_3
    //   340: aload_0
    //   341: getfield mLastMotionY : [F
    //   344: aload_0
    //   345: getfield mActivePointerId : I
    //   348: faload
    //   349: fsub
    //   350: f2i
    //   351: istore #7
    //   353: aload_0
    //   354: aload_0
    //   355: getfield mCapturedView : Landroid/view/View;
    //   358: invokevirtual getLeft : ()I
    //   361: iload #6
    //   363: iadd
    //   364: aload_0
    //   365: getfield mCapturedView : Landroid/view/View;
    //   368: invokevirtual getTop : ()I
    //   371: iload #7
    //   373: iadd
    //   374: iload #6
    //   376: iload #7
    //   378: invokespecial dragTo : (IIII)V
    //   381: aload_0
    //   382: aload_1
    //   383: invokespecial saveLastMotion : (Landroid/view/MotionEvent;)V
    //   386: return
    //   387: aload_1
    //   388: invokevirtual getPointerCount : ()I
    //   391: istore #8
    //   393: iload #7
    //   395: istore #6
    //   397: iload #6
    //   399: iload #8
    //   401: if_icmpge -> 484
    //   404: aload_1
    //   405: iload #6
    //   407: invokevirtual getPointerId : (I)I
    //   410: istore #7
    //   412: aload_0
    //   413: iload #7
    //   415: invokespecial isValidPointerForActionMove : (I)Z
    //   418: ifne -> 430
    //   421: iload #6
    //   423: iconst_1
    //   424: iadd
    //   425: istore #6
    //   427: goto -> 397
    //   430: aload_1
    //   431: iload #6
    //   433: invokevirtual getX : (I)F
    //   436: fstore_2
    //   437: aload_1
    //   438: iload #6
    //   440: invokevirtual getY : (I)F
    //   443: fstore_3
    //   444: fload_2
    //   445: aload_0
    //   446: getfield mInitialMotionX : [F
    //   449: iload #7
    //   451: faload
    //   452: fsub
    //   453: fstore #4
    //   455: fload_3
    //   456: aload_0
    //   457: getfield mInitialMotionY : [F
    //   460: iload #7
    //   462: faload
    //   463: fsub
    //   464: fstore #5
    //   466: aload_0
    //   467: fload #4
    //   469: fload #5
    //   471: iload #7
    //   473: invokespecial reportNewEdgeDrags : (FFI)V
    //   476: aload_0
    //   477: getfield mDragState : I
    //   480: iconst_1
    //   481: if_icmpne -> 490
    //   484: aload_0
    //   485: aload_1
    //   486: invokespecial saveLastMotion : (Landroid/view/MotionEvent;)V
    //   489: return
    //   490: aload_0
    //   491: fload_2
    //   492: f2i
    //   493: fload_3
    //   494: f2i
    //   495: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   498: astore #10
    //   500: aload_0
    //   501: aload #10
    //   503: fload #4
    //   505: fload #5
    //   507: invokespecial checkTouchSlop : (Landroid/view/View;FF)Z
    //   510: ifeq -> 421
    //   513: aload_0
    //   514: aload #10
    //   516: iload #7
    //   518: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   521: ifeq -> 421
    //   524: goto -> 484
    //   527: aload_1
    //   528: iload #8
    //   530: invokevirtual getPointerId : (I)I
    //   533: istore #7
    //   535: aload_0
    //   536: getfield mDragState : I
    //   539: iconst_1
    //   540: if_icmpne -> 649
    //   543: iload #7
    //   545: aload_0
    //   546: getfield mActivePointerId : I
    //   549: if_icmpne -> 649
    //   552: aload_1
    //   553: invokevirtual getPointerCount : ()I
    //   556: istore #8
    //   558: iload #6
    //   560: iload #8
    //   562: if_icmpge -> 692
    //   565: aload_1
    //   566: iload #6
    //   568: invokevirtual getPointerId : (I)I
    //   571: istore #9
    //   573: iload #9
    //   575: aload_0
    //   576: getfield mActivePointerId : I
    //   579: if_icmpne -> 591
    //   582: iload #6
    //   584: iconst_1
    //   585: iadd
    //   586: istore #6
    //   588: goto -> 558
    //   591: aload_1
    //   592: iload #6
    //   594: invokevirtual getX : (I)F
    //   597: fstore_2
    //   598: aload_1
    //   599: iload #6
    //   601: invokevirtual getY : (I)F
    //   604: fstore_3
    //   605: aload_0
    //   606: fload_2
    //   607: f2i
    //   608: fload_3
    //   609: f2i
    //   610: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   613: aload_0
    //   614: getfield mCapturedView : Landroid/view/View;
    //   617: if_acmpne -> 582
    //   620: aload_0
    //   621: aload_0
    //   622: getfield mCapturedView : Landroid/view/View;
    //   625: iload #9
    //   627: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   630: ifeq -> 582
    //   633: aload_0
    //   634: getfield mActivePointerId : I
    //   637: istore #6
    //   639: iload #6
    //   641: iconst_m1
    //   642: if_icmpne -> 649
    //   645: aload_0
    //   646: invokespecial releaseViewForPointerUp : ()V
    //   649: aload_0
    //   650: iload #7
    //   652: invokespecial clearMotionHistory : (I)V
    //   655: return
    //   656: aload_0
    //   657: getfield mDragState : I
    //   660: iconst_1
    //   661: if_icmpne -> 668
    //   664: aload_0
    //   665: invokespecial releaseViewForPointerUp : ()V
    //   668: aload_0
    //   669: invokevirtual cancel : ()V
    //   672: return
    //   673: aload_0
    //   674: getfield mDragState : I
    //   677: iconst_1
    //   678: if_icmpne -> 687
    //   681: aload_0
    //   682: fconst_0
    //   683: fconst_0
    //   684: invokespecial dispatchViewReleased : (FF)V
    //   687: aload_0
    //   688: invokevirtual cancel : ()V
    //   691: return
    //   692: iconst_m1
    //   693: istore #6
    //   695: goto -> 639
  }
  
  void setDragState(int paramInt) {
    this.mParentView.removeCallbacks(this.mSetIdleRunnable);
    if (this.mDragState != paramInt) {
      this.mDragState = paramInt;
      this.mCallback.onViewDragStateChanged(paramInt);
      if (this.mDragState == 0)
        this.mCapturedView = null; 
    } 
  }
  
  public void setEdgeTrackingEnabled(int paramInt) {
    this.mTrackingEdges = paramInt;
  }
  
  public void setMinVelocity(float paramFloat) {
    this.mMinVelocity = paramFloat;
  }
  
  public boolean settleCapturedViewAt(int paramInt1, int paramInt2) {
    if (!this.mReleaseInProgress)
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"); 
    return forceSettleCapturedViewAt(paramInt1, paramInt2, (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
  }
  
  public boolean shouldInterceptTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   4: istore #7
    //   6: aload_1
    //   7: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   10: istore #6
    //   12: iload #7
    //   14: ifne -> 21
    //   17: aload_0
    //   18: invokevirtual cancel : ()V
    //   21: aload_0
    //   22: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   25: ifnonnull -> 35
    //   28: aload_0
    //   29: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   32: putfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   35: aload_0
    //   36: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   39: aload_1
    //   40: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   43: iload #7
    //   45: tableswitch default -> 88, 0 -> 98, 1 -> 615, 2 -> 305, 3 -> 615, 4 -> 88, 5 -> 194, 6 -> 602
    //   88: aload_0
    //   89: getfield mDragState : I
    //   92: iconst_1
    //   93: if_icmpne -> 622
    //   96: iconst_1
    //   97: ireturn
    //   98: aload_1
    //   99: invokevirtual getX : ()F
    //   102: fstore_2
    //   103: aload_1
    //   104: invokevirtual getY : ()F
    //   107: fstore_3
    //   108: aload_1
    //   109: iconst_0
    //   110: invokevirtual getPointerId : (I)I
    //   113: istore #6
    //   115: aload_0
    //   116: fload_2
    //   117: fload_3
    //   118: iload #6
    //   120: invokespecial saveInitialMotion : (FFI)V
    //   123: aload_0
    //   124: fload_2
    //   125: f2i
    //   126: fload_3
    //   127: f2i
    //   128: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   131: astore_1
    //   132: aload_1
    //   133: aload_0
    //   134: getfield mCapturedView : Landroid/view/View;
    //   137: if_acmpne -> 156
    //   140: aload_0
    //   141: getfield mDragState : I
    //   144: iconst_2
    //   145: if_icmpne -> 156
    //   148: aload_0
    //   149: aload_1
    //   150: iload #6
    //   152: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   155: pop
    //   156: aload_0
    //   157: getfield mInitialEdgesTouched : [I
    //   160: iload #6
    //   162: iaload
    //   163: istore #7
    //   165: aload_0
    //   166: getfield mTrackingEdges : I
    //   169: iload #7
    //   171: iand
    //   172: ifeq -> 88
    //   175: aload_0
    //   176: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   179: iload #7
    //   181: aload_0
    //   182: getfield mTrackingEdges : I
    //   185: iand
    //   186: iload #6
    //   188: invokevirtual onEdgeTouched : (II)V
    //   191: goto -> 88
    //   194: aload_1
    //   195: iload #6
    //   197: invokevirtual getPointerId : (I)I
    //   200: istore #7
    //   202: aload_1
    //   203: iload #6
    //   205: invokevirtual getX : (I)F
    //   208: fstore_2
    //   209: aload_1
    //   210: iload #6
    //   212: invokevirtual getY : (I)F
    //   215: fstore_3
    //   216: aload_0
    //   217: fload_2
    //   218: fload_3
    //   219: iload #7
    //   221: invokespecial saveInitialMotion : (FFI)V
    //   224: aload_0
    //   225: getfield mDragState : I
    //   228: ifne -> 269
    //   231: aload_0
    //   232: getfield mInitialEdgesTouched : [I
    //   235: iload #7
    //   237: iaload
    //   238: istore #6
    //   240: aload_0
    //   241: getfield mTrackingEdges : I
    //   244: iload #6
    //   246: iand
    //   247: ifeq -> 88
    //   250: aload_0
    //   251: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   254: iload #6
    //   256: aload_0
    //   257: getfield mTrackingEdges : I
    //   260: iand
    //   261: iload #7
    //   263: invokevirtual onEdgeTouched : (II)V
    //   266: goto -> 88
    //   269: aload_0
    //   270: getfield mDragState : I
    //   273: iconst_2
    //   274: if_icmpne -> 88
    //   277: aload_0
    //   278: fload_2
    //   279: f2i
    //   280: fload_3
    //   281: f2i
    //   282: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   285: astore_1
    //   286: aload_1
    //   287: aload_0
    //   288: getfield mCapturedView : Landroid/view/View;
    //   291: if_acmpne -> 88
    //   294: aload_0
    //   295: aload_1
    //   296: iload #7
    //   298: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   301: pop
    //   302: goto -> 88
    //   305: aload_0
    //   306: getfield mInitialMotionX : [F
    //   309: ifnull -> 88
    //   312: aload_0
    //   313: getfield mInitialMotionY : [F
    //   316: ifnull -> 88
    //   319: aload_1
    //   320: invokevirtual getPointerCount : ()I
    //   323: istore #8
    //   325: iconst_0
    //   326: istore #6
    //   328: iload #6
    //   330: iload #8
    //   332: if_icmpge -> 551
    //   335: aload_1
    //   336: iload #6
    //   338: invokevirtual getPointerId : (I)I
    //   341: istore #9
    //   343: aload_0
    //   344: iload #9
    //   346: invokespecial isValidPointerForActionMove : (I)Z
    //   349: ifne -> 361
    //   352: iload #6
    //   354: iconst_1
    //   355: iadd
    //   356: istore #6
    //   358: goto -> 328
    //   361: aload_1
    //   362: iload #6
    //   364: invokevirtual getX : (I)F
    //   367: fstore_2
    //   368: aload_1
    //   369: iload #6
    //   371: invokevirtual getY : (I)F
    //   374: fstore_3
    //   375: fload_2
    //   376: aload_0
    //   377: getfield mInitialMotionX : [F
    //   380: iload #9
    //   382: faload
    //   383: fsub
    //   384: fstore #4
    //   386: fload_3
    //   387: aload_0
    //   388: getfield mInitialMotionY : [F
    //   391: iload #9
    //   393: faload
    //   394: fsub
    //   395: fstore #5
    //   397: aload_0
    //   398: fload_2
    //   399: f2i
    //   400: fload_3
    //   401: f2i
    //   402: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   405: astore #16
    //   407: aload #16
    //   409: ifnull -> 559
    //   412: aload_0
    //   413: aload #16
    //   415: fload #4
    //   417: fload #5
    //   419: invokespecial checkTouchSlop : (Landroid/view/View;FF)Z
    //   422: ifeq -> 559
    //   425: iconst_1
    //   426: istore #7
    //   428: iload #7
    //   430: ifeq -> 565
    //   433: aload #16
    //   435: invokevirtual getLeft : ()I
    //   438: istore #10
    //   440: fload #4
    //   442: f2i
    //   443: istore #11
    //   445: aload_0
    //   446: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   449: aload #16
    //   451: iload #11
    //   453: iload #10
    //   455: iadd
    //   456: fload #4
    //   458: f2i
    //   459: invokevirtual clampViewPositionHorizontal : (Landroid/view/View;II)I
    //   462: istore #11
    //   464: aload #16
    //   466: invokevirtual getTop : ()I
    //   469: istore #12
    //   471: fload #5
    //   473: f2i
    //   474: istore #13
    //   476: aload_0
    //   477: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   480: aload #16
    //   482: iload #13
    //   484: iload #12
    //   486: iadd
    //   487: fload #5
    //   489: f2i
    //   490: invokevirtual clampViewPositionVertical : (Landroid/view/View;II)I
    //   493: istore #13
    //   495: aload_0
    //   496: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   499: aload #16
    //   501: invokevirtual getViewHorizontalDragRange : (Landroid/view/View;)I
    //   504: istore #14
    //   506: aload_0
    //   507: getfield mCallback : Landroid/support/v4/widget/ViewDragHelper$Callback;
    //   510: aload #16
    //   512: invokevirtual getViewVerticalDragRange : (Landroid/view/View;)I
    //   515: istore #15
    //   517: iload #14
    //   519: ifeq -> 534
    //   522: iload #14
    //   524: ifle -> 565
    //   527: iload #11
    //   529: iload #10
    //   531: if_icmpne -> 565
    //   534: iload #15
    //   536: ifeq -> 551
    //   539: iload #15
    //   541: ifle -> 565
    //   544: iload #13
    //   546: iload #12
    //   548: if_icmpne -> 565
    //   551: aload_0
    //   552: aload_1
    //   553: invokespecial saveLastMotion : (Landroid/view/MotionEvent;)V
    //   556: goto -> 88
    //   559: iconst_0
    //   560: istore #7
    //   562: goto -> 428
    //   565: aload_0
    //   566: fload #4
    //   568: fload #5
    //   570: iload #9
    //   572: invokespecial reportNewEdgeDrags : (FFI)V
    //   575: aload_0
    //   576: getfield mDragState : I
    //   579: iconst_1
    //   580: if_icmpeq -> 551
    //   583: iload #7
    //   585: ifeq -> 352
    //   588: aload_0
    //   589: aload #16
    //   591: iload #9
    //   593: invokevirtual tryCaptureViewForDrag : (Landroid/view/View;I)Z
    //   596: ifeq -> 352
    //   599: goto -> 551
    //   602: aload_0
    //   603: aload_1
    //   604: iload #6
    //   606: invokevirtual getPointerId : (I)I
    //   609: invokespecial clearMotionHistory : (I)V
    //   612: goto -> 88
    //   615: aload_0
    //   616: invokevirtual cancel : ()V
    //   619: goto -> 88
    //   622: iconst_0
    //   623: ireturn
  }
  
  public boolean smoothSlideViewTo(View paramView, int paramInt1, int paramInt2) {
    this.mCapturedView = paramView;
    this.mActivePointerId = -1;
    boolean bool = forceSettleCapturedViewAt(paramInt1, paramInt2, 0, 0);
    if (!bool && this.mDragState == 0 && this.mCapturedView != null)
      this.mCapturedView = null; 
    return bool;
  }
  
  boolean tryCaptureViewForDrag(View paramView, int paramInt) {
    if (paramView == this.mCapturedView && this.mActivePointerId == paramInt)
      return true; 
    if (paramView != null && this.mCallback.tryCaptureView(paramView, paramInt)) {
      this.mActivePointerId = paramInt;
      captureChildView(paramView, paramInt);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ViewDragHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */