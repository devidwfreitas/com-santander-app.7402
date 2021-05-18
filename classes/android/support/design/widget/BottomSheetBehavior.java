package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {
  private static final float HIDE_FRICTION = 0.1F;
  
  private static final float HIDE_THRESHOLD = 0.5F;
  
  public static final int PEEK_HEIGHT_AUTO = -1;
  
  public static final int STATE_COLLAPSED = 4;
  
  public static final int STATE_DRAGGING = 1;
  
  public static final int STATE_EXPANDED = 3;
  
  public static final int STATE_HIDDEN = 5;
  
  public static final int STATE_SETTLING = 2;
  
  int mActivePointerId;
  
  private BottomSheetBehavior$BottomSheetCallback mCallback;
  
  private final ViewDragHelper.Callback mDragCallback = new BottomSheetBehavior$2(this);
  
  boolean mHideable;
  
  private boolean mIgnoreEvents;
  
  private int mInitialY;
  
  private int mLastNestedScrollDy;
  
  int mMaxOffset;
  
  private float mMaximumVelocity;
  
  int mMinOffset;
  
  private boolean mNestedScrolled;
  
  WeakReference<View> mNestedScrollingChildRef;
  
  int mParentHeight;
  
  private int mPeekHeight;
  
  private boolean mPeekHeightAuto;
  
  private int mPeekHeightMin;
  
  private boolean mSkipCollapsed;
  
  int mState = 4;
  
  boolean mTouchingScrollingChild;
  
  private VelocityTracker mVelocityTracker;
  
  ViewDragHelper mViewDragHelper;
  
  WeakReference<V> mViewRef;
  
  public BottomSheetBehavior() {}
  
  public BottomSheetBehavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.BottomSheetBehavior_Layout);
    TypedValue typedValue = typedArray.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
    if (typedValue != null && typedValue.data == -1) {
      setPeekHeight(typedValue.data);
    } else {
      setPeekHeight(typedArray.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
    } 
    setHideable(typedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
    setSkipCollapsed(typedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
    typedArray.recycle();
    this.mMaximumVelocity = ViewConfiguration.get(paramContext).getScaledMaximumFlingVelocity();
  }
  
  private View findScrollingChild(View paramView) {
    if (paramView instanceof android.support.v4.view.NestedScrollingChild)
      return paramView; 
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      int j = viewGroup.getChildCount();
      for (int i = 0; i < j; i++) {
        View view = findScrollingChild(viewGroup.getChildAt(i));
        if (view != null)
          return view; 
      } 
    } 
    return null;
  }
  
  public static <V extends View> BottomSheetBehavior<V> from(V paramV) {
    ViewGroup.LayoutParams layoutParams = paramV.getLayoutParams();
    if (!(layoutParams instanceof CoordinatorLayout$LayoutParams))
      throw new IllegalArgumentException("The view is not a child of CoordinatorLayout"); 
    CoordinatorLayout$Behavior coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)layoutParams).getBehavior();
    if (!(coordinatorLayout$Behavior instanceof BottomSheetBehavior))
      throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior"); 
    return (BottomSheetBehavior<V>)coordinatorLayout$Behavior;
  }
  
  private float getYVelocity() {
    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
    return VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
  }
  
  private void reset() {
    this.mActivePointerId = -1;
    if (this.mVelocityTracker != null) {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    } 
  }
  
  void dispatchOnSlide(int paramInt) {
    View view = (View)this.mViewRef.get();
    if (view != null && this.mCallback != null) {
      if (paramInt > this.mMaxOffset) {
        this.mCallback.onSlide(view, (this.mMaxOffset - paramInt) / (this.mParentHeight - this.mMaxOffset));
        return;
      } 
    } else {
      return;
    } 
    this.mCallback.onSlide(view, (this.mMaxOffset - paramInt) / (this.mMaxOffset - this.mMinOffset));
  }
  
  public final int getPeekHeight() {
    return this.mPeekHeightAuto ? -1 : this.mPeekHeight;
  }
  
  @VisibleForTesting
  int getPeekHeightMin() {
    return this.mPeekHeightMin;
  }
  
  public boolean getSkipCollapsed() {
    return this.mSkipCollapsed;
  }
  
  public final int getState() {
    return this.mState;
  }
  
  public boolean isHideable() {
    return this.mHideable;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    int j;
    View view2;
    boolean bool = true;
    if (!paramV.isShown()) {
      this.mIgnoreEvents = true;
      return false;
    } 
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i == 0)
      reset(); 
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain(); 
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (i) {
      default:
        if (!this.mIgnoreEvents && this.mViewDragHelper.shouldInterceptTouchEvent(paramMotionEvent))
          return true; 
        break;
      case 1:
      case 3:
        this.mTouchingScrollingChild = false;
        this.mActivePointerId = -1;
        if (this.mIgnoreEvents) {
          this.mIgnoreEvents = false;
          return false;
        } 
      case 0:
        j = (int)paramMotionEvent.getX();
        this.mInitialY = (int)paramMotionEvent.getY();
        view2 = this.mNestedScrollingChildRef.get();
        if (view2 != null && paramCoordinatorLayout.isPointInChildBounds(view2, j, this.mInitialY)) {
          this.mActivePointerId = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
          this.mTouchingScrollingChild = true;
        } 
        if (this.mActivePointerId == -1 && !paramCoordinatorLayout.isPointInChildBounds((View)paramV, j, this.mInitialY)) {
          null = true;
        } else {
          null = false;
        } 
        this.mIgnoreEvents = null;
    } 
    View view1 = this.mNestedScrollingChildRef.get();
    return (i == 2 && view1 != null && !this.mIgnoreEvents && this.mState != 1 && !paramCoordinatorLayout.isPointInChildBounds(view1, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()) && Math.abs(this.mInitialY - paramMotionEvent.getY()) > this.mViewDragHelper.getTouchSlop()) ? bool : false;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt) {
    if (ViewCompat.getFitsSystemWindows((View)paramCoordinatorLayout) && !ViewCompat.getFitsSystemWindows((View)paramV))
      ViewCompat.setFitsSystemWindows((View)paramV, true); 
    int i = paramV.getTop();
    paramCoordinatorLayout.onLayoutChild((View)paramV, paramInt);
    this.mParentHeight = paramCoordinatorLayout.getHeight();
    if (this.mPeekHeightAuto) {
      if (this.mPeekHeightMin == 0)
        this.mPeekHeightMin = paramCoordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min); 
      paramInt = Math.max(this.mPeekHeightMin, this.mParentHeight - paramCoordinatorLayout.getWidth() * 9 / 16);
    } else {
      paramInt = this.mPeekHeight;
    } 
    this.mMinOffset = Math.max(0, this.mParentHeight - paramV.getHeight());
    this.mMaxOffset = Math.max(this.mParentHeight - paramInt, this.mMinOffset);
    if (this.mState == 3) {
      ViewCompat.offsetTopAndBottom((View)paramV, this.mMinOffset);
    } else if (this.mHideable && this.mState == 5) {
      ViewCompat.offsetTopAndBottom((View)paramV, this.mParentHeight);
    } else if (this.mState == 4) {
      ViewCompat.offsetTopAndBottom((View)paramV, this.mMaxOffset);
    } else if (this.mState == 1 || this.mState == 2) {
      ViewCompat.offsetTopAndBottom((View)paramV, i - paramV.getTop());
    } 
    if (this.mViewDragHelper == null)
      this.mViewDragHelper = ViewDragHelper.create(paramCoordinatorLayout, this.mDragCallback); 
    this.mViewRef = new WeakReference<V>(paramV);
    this.mNestedScrollingChildRef = new WeakReference<View>(findScrollingChild((View)paramV));
    return true;
  }
  
  public boolean onNestedPreFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2) {
    return (paramView == this.mNestedScrollingChildRef.get() && (this.mState != 3 || super.onNestedPreFling(paramCoordinatorLayout, paramV, paramView, paramFloat1, paramFloat2)));
  }
  
  public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {
    if (paramView != (View)this.mNestedScrollingChildRef.get())
      return; 
    paramInt1 = paramV.getTop();
    int i = paramInt1 - paramInt2;
    if (paramInt2 > 0) {
      if (i < this.mMinOffset) {
        paramArrayOfint[1] = paramInt1 - this.mMinOffset;
        ViewCompat.offsetTopAndBottom((View)paramV, -paramArrayOfint[1]);
        setStateInternal(3);
      } else {
        paramArrayOfint[1] = paramInt2;
        ViewCompat.offsetTopAndBottom((View)paramV, -paramInt2);
        setStateInternal(1);
      } 
    } else if (paramInt2 < 0 && !ViewCompat.canScrollVertically(paramView, -1)) {
      if (i <= this.mMaxOffset || this.mHideable) {
        paramArrayOfint[1] = paramInt2;
        ViewCompat.offsetTopAndBottom((View)paramV, -paramInt2);
        setStateInternal(1);
      } else {
        paramArrayOfint[1] = paramInt1 - this.mMaxOffset;
        ViewCompat.offsetTopAndBottom((View)paramV, -paramArrayOfint[1]);
        setStateInternal(4);
      } 
    } 
    dispatchOnSlide(paramV.getTop());
    this.mLastNestedScrollDy = paramInt2;
    this.mNestedScrolled = true;
  }
  
  public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable) {
    BottomSheetBehavior$SavedState bottomSheetBehavior$SavedState = (BottomSheetBehavior$SavedState)paramParcelable;
    super.onRestoreInstanceState(paramCoordinatorLayout, paramV, bottomSheetBehavior$SavedState.getSuperState());
    if (bottomSheetBehavior$SavedState.state == 1 || bottomSheetBehavior$SavedState.state == 2) {
      this.mState = 4;
      return;
    } 
    this.mState = bottomSheetBehavior$SavedState.state;
  }
  
  public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    return (Parcelable)new BottomSheetBehavior$SavedState(super.onSaveInstanceState(paramCoordinatorLayout, paramV), this.mState);
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt) {
    boolean bool = false;
    this.mLastNestedScrollDy = 0;
    this.mNestedScrolled = false;
    if ((paramInt & 0x2) != 0)
      bool = true; 
    return bool;
  }
  
  public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {
    byte b = 3;
    if (paramV.getTop() == this.mMinOffset) {
      setStateInternal(3);
      return;
    } 
    if (paramView == this.mNestedScrollingChildRef.get() && this.mNestedScrolled) {
      int i;
      if (this.mLastNestedScrollDy > 0) {
        i = this.mMinOffset;
      } else if (this.mHideable && shouldHide((View)paramV, getYVelocity())) {
        i = this.mParentHeight;
        b = 5;
      } else if (this.mLastNestedScrollDy == 0) {
        i = paramV.getTop();
        if (Math.abs(i - this.mMinOffset) < Math.abs(i - this.mMaxOffset)) {
          i = this.mMinOffset;
        } else {
          i = this.mMaxOffset;
          b = 4;
        } 
      } else {
        i = this.mMaxOffset;
        b = 4;
      } 
      if (this.mViewDragHelper.smoothSlideViewTo((View)paramV, paramV.getLeft(), i)) {
        setStateInternal(2);
        ViewCompat.postOnAnimation((View)paramV, new BottomSheetBehavior$SettleRunnable(this, (View)paramV, b));
      } else {
        setStateInternal(b);
      } 
      this.mNestedScrolled = false;
      return;
    } 
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: aload_2
    //   4: invokevirtual isShown : ()Z
    //   7: ifne -> 16
    //   10: iconst_0
    //   11: istore #5
    //   13: iload #5
    //   15: ireturn
    //   16: aload_3
    //   17: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   20: istore #4
    //   22: aload_0
    //   23: getfield mState : I
    //   26: iconst_1
    //   27: if_icmpne -> 39
    //   30: iload #6
    //   32: istore #5
    //   34: iload #4
    //   36: ifeq -> 13
    //   39: aload_0
    //   40: getfield mViewDragHelper : Landroid/support/v4/widget/ViewDragHelper;
    //   43: aload_3
    //   44: invokevirtual processTouchEvent : (Landroid/view/MotionEvent;)V
    //   47: iload #4
    //   49: ifne -> 56
    //   52: aload_0
    //   53: invokespecial reset : ()V
    //   56: aload_0
    //   57: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   60: ifnonnull -> 70
    //   63: aload_0
    //   64: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   67: putfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   70: aload_0
    //   71: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   74: aload_3
    //   75: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   78: iload #4
    //   80: iconst_2
    //   81: if_icmpne -> 132
    //   84: aload_0
    //   85: getfield mIgnoreEvents : Z
    //   88: ifne -> 132
    //   91: aload_0
    //   92: getfield mInitialY : I
    //   95: i2f
    //   96: aload_3
    //   97: invokevirtual getY : ()F
    //   100: fsub
    //   101: invokestatic abs : (F)F
    //   104: aload_0
    //   105: getfield mViewDragHelper : Landroid/support/v4/widget/ViewDragHelper;
    //   108: invokevirtual getTouchSlop : ()I
    //   111: i2f
    //   112: fcmpl
    //   113: ifle -> 132
    //   116: aload_0
    //   117: getfield mViewDragHelper : Landroid/support/v4/widget/ViewDragHelper;
    //   120: aload_2
    //   121: aload_3
    //   122: aload_3
    //   123: invokevirtual getActionIndex : ()I
    //   126: invokevirtual getPointerId : (I)I
    //   129: invokevirtual captureChildView : (Landroid/view/View;I)V
    //   132: iload #6
    //   134: istore #5
    //   136: aload_0
    //   137: getfield mIgnoreEvents : Z
    //   140: ifeq -> 13
    //   143: iconst_0
    //   144: ireturn
  }
  
  public void setBottomSheetCallback(BottomSheetBehavior$BottomSheetCallback paramBottomSheetBehavior$BottomSheetCallback) {
    this.mCallback = paramBottomSheetBehavior$BottomSheetCallback;
  }
  
  public void setHideable(boolean paramBoolean) {
    this.mHideable = paramBoolean;
  }
  
  public final void setPeekHeight(int paramInt) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iload_1
    //   3: iconst_m1
    //   4: if_icmpne -> 60
    //   7: aload_0
    //   8: getfield mPeekHeightAuto : Z
    //   11: ifne -> 104
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield mPeekHeightAuto : Z
    //   19: iload_2
    //   20: istore_1
    //   21: iload_1
    //   22: ifeq -> 59
    //   25: aload_0
    //   26: getfield mState : I
    //   29: iconst_4
    //   30: if_icmpne -> 59
    //   33: aload_0
    //   34: getfield mViewRef : Ljava/lang/ref/WeakReference;
    //   37: ifnull -> 59
    //   40: aload_0
    //   41: getfield mViewRef : Ljava/lang/ref/WeakReference;
    //   44: invokevirtual get : ()Ljava/lang/Object;
    //   47: checkcast android/view/View
    //   50: astore_3
    //   51: aload_3
    //   52: ifnull -> 59
    //   55: aload_3
    //   56: invokevirtual requestLayout : ()V
    //   59: return
    //   60: aload_0
    //   61: getfield mPeekHeightAuto : Z
    //   64: ifne -> 75
    //   67: aload_0
    //   68: getfield mPeekHeight : I
    //   71: iload_1
    //   72: if_icmpeq -> 104
    //   75: aload_0
    //   76: iconst_0
    //   77: putfield mPeekHeightAuto : Z
    //   80: aload_0
    //   81: iconst_0
    //   82: iload_1
    //   83: invokestatic max : (II)I
    //   86: putfield mPeekHeight : I
    //   89: aload_0
    //   90: aload_0
    //   91: getfield mParentHeight : I
    //   94: iload_1
    //   95: isub
    //   96: putfield mMaxOffset : I
    //   99: iload_2
    //   100: istore_1
    //   101: goto -> 21
    //   104: iconst_0
    //   105: istore_1
    //   106: goto -> 21
  }
  
  public void setSkipCollapsed(boolean paramBoolean) {
    this.mSkipCollapsed = paramBoolean;
  }
  
  public final void setState(int paramInt) {
    if (paramInt != this.mState) {
      if (this.mViewRef == null) {
        if (paramInt == 4 || paramInt == 3 || (this.mHideable && paramInt == 5)) {
          this.mState = paramInt;
          return;
        } 
        return;
      } 
      View view = (View)this.mViewRef.get();
      if (view != null) {
        ViewParent viewParent = view.getParent();
        if (viewParent != null && viewParent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view)) {
          view.post(new BottomSheetBehavior$1(this, view, paramInt));
          return;
        } 
        startSettlingAnimation(view, paramInt);
        return;
      } 
    } 
  }
  
  void setStateInternal(int paramInt) {
    if (this.mState != paramInt) {
      this.mState = paramInt;
      View view = (View)this.mViewRef.get();
      if (view != null && this.mCallback != null) {
        this.mCallback.onStateChanged(view, paramInt);
        return;
      } 
    } 
  }
  
  boolean shouldHide(View paramView, float paramFloat) {
    if (!this.mSkipCollapsed) {
      if (paramView.getTop() < this.mMaxOffset)
        return false; 
      if (Math.abs(paramView.getTop() + 0.1F * paramFloat - this.mMaxOffset) / this.mPeekHeight <= 0.5F)
        return false; 
    } 
    return true;
  }
  
  void startSettlingAnimation(View paramView, int paramInt) {
    int i;
    if (paramInt == 4) {
      i = this.mMaxOffset;
    } else if (paramInt == 3) {
      i = this.mMinOffset;
    } else if (this.mHideable && paramInt == 5) {
      i = this.mParentHeight;
    } else {
      throw new IllegalArgumentException("Illegal state argument: " + paramInt);
    } 
    setStateInternal(2);
    if (this.mViewDragHelper.smoothSlideViewTo(paramView, paramView.getLeft(), i))
      ViewCompat.postOnAnimation(paramView, new BottomSheetBehavior$SettleRunnable(this, paramView, paramInt)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */