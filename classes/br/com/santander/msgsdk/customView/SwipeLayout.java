package br.com.santander.msgsdk.customView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import br.com.santander.msgsdk.R;

@SuppressLint({"RtlHardcoded"})
public class SwipeLayout extends ViewGroup {
  private static final int DEFAULT_MIN_DIST_REQUEST_DISALLOW_PARENT = 1;
  
  private static final int DEFAULT_MIN_FLING_VELOCITY = 300;
  
  public static final int DRAG_EDGE_BOTTOM = 8;
  
  public static final int DRAG_EDGE_LEFT = 1;
  
  public static final int DRAG_EDGE_RIGHT = 2;
  
  public static final int DRAG_EDGE_TOP = 4;
  
  public static final int MODE_NORMAL = 0;
  
  public static final int MODE_SAME_LEVEL = 1;
  
  protected static final int STATE_CLOSE = 0;
  
  protected static final int STATE_CLOSING = 1;
  
  protected static final int STATE_DRAGGING = 4;
  
  protected static final int STATE_OPEN = 2;
  
  protected static final int STATE_OPENING = 3;
  
  private volatile boolean mAborted = false;
  
  private int mDragEdge = 1;
  
  private ViewDragHelper mDragHelper;
  
  private final ViewDragHelper.Callback mDragHelperCallback = new SwipeLayout$2(this);
  
  private SwipeLayout$DragStateChangeListener mDragStateChangeListener;
  
  private GestureDetectorCompat mGestureDetector;
  
  private final GestureDetector.OnGestureListener mGestureListener = (GestureDetector.OnGestureListener)new SwipeLayout$1(this);
  
  private boolean mIsOpenBeforeInit = false;
  
  private volatile boolean mIsScrolling = false;
  
  private int mLastMainLeft = 0;
  
  private int mLastMainTop = 0;
  
  private volatile boolean mLockDrag = false;
  
  private View mMainView;
  
  private int mMinDistRequestDisallowParent = 0;
  
  private int mMinFlingVelocity = 300;
  
  private int mMode = 0;
  
  private int mOnLayoutCount = 0;
  
  private Rect mRectMainClose = new Rect();
  
  private Rect mRectMainOpen = new Rect();
  
  private Rect mRectSecClose = new Rect();
  
  private Rect mRectSecOpen = new Rect();
  
  private View mSecondaryView;
  
  private int mState = 0;
  
  private SwipeLayout$SwipeListener mSwipeListener;
  
  public SwipeLayout(Context paramContext) {
    super(paramContext);
    init(paramContext, (AttributeSet)null);
  }
  
  public SwipeLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  public SwipeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int dpToPx(int paramInt) {
    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
    float f = paramInt;
    return (int)(displayMetrics.densityDpi / 160.0F * f);
  }
  
  private int getDistToClosestEdge() {
    switch (this.mDragEdge) {
      default:
        return 0;
      case 1:
        i = this.mRectMainClose.left;
        j = this.mSecondaryView.getWidth();
        return Math.min(this.mMainView.getLeft() - this.mRectMainClose.left, i + j - this.mMainView.getLeft());
      case 2:
        i = this.mRectMainClose.right;
        j = this.mSecondaryView.getWidth();
        return Math.min(this.mMainView.getRight() - i - j, this.mRectMainClose.right - this.mMainView.getRight());
      case 4:
        i = this.mRectMainClose.top + this.mSecondaryView.getHeight();
        return Math.min(this.mMainView.getBottom() - i, i - this.mMainView.getTop());
      case 8:
        break;
    } 
    int i = this.mRectMainClose.bottom;
    int j = this.mSecondaryView.getHeight();
    return Math.min(this.mRectMainClose.bottom - this.mMainView.getBottom(), this.mMainView.getBottom() - i - j);
  }
  
  private int getHalfwayPivotHorizontal() {
    return (this.mDragEdge == 1) ? (this.mRectMainClose.left + this.mSecondaryView.getWidth() / 2) : (this.mRectMainClose.right - this.mSecondaryView.getWidth() / 2);
  }
  
  private int getHalfwayPivotVertical() {
    return (this.mDragEdge == 4) ? (this.mRectMainClose.top + this.mSecondaryView.getHeight() / 2) : (this.mRectMainClose.bottom - this.mSecondaryView.getHeight() / 2);
  }
  
  private int getMainOpenLeft() {
    switch (this.mDragEdge) {
      default:
        return 0;
      case 1:
        return this.mRectMainClose.left + this.mSecondaryView.getWidth();
      case 2:
        return this.mRectMainClose.left - this.mSecondaryView.getWidth();
      case 4:
        return this.mRectMainClose.left;
      case 8:
        break;
    } 
    return this.mRectMainClose.left;
  }
  
  private int getMainOpenTop() {
    switch (this.mDragEdge) {
      default:
        return 0;
      case 1:
        return this.mRectMainClose.top;
      case 2:
        return this.mRectMainClose.top;
      case 4:
        return this.mRectMainClose.top + this.mSecondaryView.getHeight();
      case 8:
        break;
    } 
    return this.mRectMainClose.top - this.mSecondaryView.getHeight();
  }
  
  private int getSecOpenLeft() {
    return (this.mMode == 0 || this.mDragEdge == 8 || this.mDragEdge == 4) ? this.mRectSecClose.left : ((this.mDragEdge == 1) ? (this.mRectSecClose.left + this.mSecondaryView.getWidth()) : (this.mRectSecClose.left - this.mSecondaryView.getWidth()));
  }
  
  private int getSecOpenTop() {
    return (this.mMode == 0 || this.mDragEdge == 1 || this.mDragEdge == 2) ? this.mRectSecClose.top : ((this.mDragEdge == 4) ? (this.mRectSecClose.top + this.mSecondaryView.getHeight()) : (this.mRectSecClose.top - this.mSecondaryView.getHeight()));
  }
  
  public static String getStateString(int paramInt) {
    switch (paramInt) {
      default:
        return "undefined";
      case 0:
        return "state_close";
      case 1:
        return "state_closing";
      case 2:
        return "state_open";
      case 3:
        return "state_opening";
      case 4:
        break;
    } 
    return "state_dragging";
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null && paramContext != null) {
      TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.SwipeLayout, 0, 0);
      this.mDragEdge = typedArray.getInteger(R.styleable.SwipeLayout_msgDragEdge, 1);
      this.mMinFlingVelocity = typedArray.getInteger(R.styleable.SwipeLayout_flingVelocity, 300);
      this.mMode = typedArray.getInteger(R.styleable.SwipeLayout_msgSwipeMode, 0);
      this.mMinDistRequestDisallowParent = typedArray.getDimensionPixelSize(R.styleable.SwipeLayout_minDistRequestDisallowParent, dpToPx(1));
    } 
    this.mDragHelper = ViewDragHelper.create(this, 1.0F, this.mDragHelperCallback);
    this.mDragHelper.setEdgeTrackingEnabled(15);
    this.mGestureDetector = new GestureDetectorCompat(paramContext, this.mGestureListener);
  }
  
  private void initRects() {
    this.mRectMainClose.set(this.mMainView.getLeft(), this.mMainView.getTop(), this.mMainView.getRight(), this.mMainView.getBottom());
    this.mRectSecClose.set(this.mSecondaryView.getLeft(), this.mSecondaryView.getTop(), this.mSecondaryView.getRight(), this.mSecondaryView.getBottom());
    this.mRectMainOpen.set(getMainOpenLeft(), getMainOpenTop(), getMainOpenLeft() + this.mMainView.getWidth(), getMainOpenTop() + this.mMainView.getHeight());
    this.mRectSecOpen.set(getSecOpenLeft(), getSecOpenTop(), getSecOpenLeft() + this.mSecondaryView.getWidth(), getSecOpenTop() + this.mSecondaryView.getHeight());
  }
  
  private int pxToDp(int paramInt) {
    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
    return (int)(paramInt / displayMetrics.densityDpi / 160.0F);
  }
  
  protected void abort() {
    this.mAborted = true;
    this.mDragHelper.abort();
  }
  
  public void close(boolean paramBoolean) {
    this.mIsOpenBeforeInit = false;
    this.mAborted = false;
    if (paramBoolean) {
      this.mState = 1;
      this.mDragHelper.smoothSlideViewTo(this.mMainView, this.mRectMainClose.left, this.mRectMainClose.top);
      if (this.mDragStateChangeListener != null)
        this.mDragStateChangeListener.onDragStateChanged(this.mState); 
    } else {
      this.mState = 0;
      this.mDragHelper.abort();
      this.mMainView.layout(this.mRectMainClose.left, this.mRectMainClose.top, this.mRectMainClose.right, this.mRectMainClose.bottom);
      this.mSecondaryView.layout(this.mRectSecClose.left, this.mRectSecClose.top, this.mRectSecClose.right, this.mRectSecClose.bottom);
    } 
    ViewCompat.postInvalidateOnAnimation((View)this);
  }
  
  public void computeScroll() {
    if (this.mDragHelper.continueSettling(true))
      ViewCompat.postInvalidateOnAnimation((View)this); 
  }
  
  public int getDragEdge() {
    return this.mDragEdge;
  }
  
  public int getMinFlingVelocity() {
    return this.mMinFlingVelocity;
  }
  
  public boolean isClosed() {
    return (this.mState == 0);
  }
  
  public boolean isDragLocked() {
    return this.mLockDrag;
  }
  
  public boolean isOpened() {
    return (this.mState == 2);
  }
  
  protected void onFinishInflate() {
    super.onFinishInflate();
    if (getChildCount() >= 2) {
      this.mSecondaryView = getChildAt(0);
      this.mMainView = getChildAt(1);
      return;
    } 
    if (getChildCount() == 1) {
      this.mMainView = getChildAt(0);
      return;
    } 
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    boolean bool1;
    boolean bool2;
    boolean bool3 = false;
    this.mDragHelper.processTouchEvent(paramMotionEvent);
    this.mGestureDetector.onTouchEvent(paramMotionEvent);
    if (this.mDragHelper.getViewDragState() == 2) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.mDragHelper.getViewDragState() == 0 && this.mIsScrolling) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1 || bool2)
      bool3 = true; 
    return bool3;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mAborted = false;
    int i = 0;
    while (true) {
      if (i < getChildCount()) {
        View view = getChildAt(i);
        int n = 0;
        int i6 = getPaddingLeft();
        int i4 = Math.max(paramInt3 - getPaddingRight() - paramInt1, 0);
        int i5 = getPaddingTop();
        int i3 = Math.max(paramInt4 - getPaddingBottom() - paramInt2, 0);
        int i2 = view.getMeasuredHeight();
        int i1 = view.getMeasuredWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int m = 0;
        int j = 0;
        if (layoutParams != null) {
          byte b;
          if (layoutParams.height == -1) {
            b = 1;
          } else {
            b = 0;
          } 
          if (layoutParams.width == -1) {
            j = 1;
            m = b;
          } else {
            j = 0;
            m = b;
          } 
        } 
        int k = i2;
        if (m) {
          k = i3 - i5;
          layoutParams.height = k;
        } 
        if (j) {
          j = i4 - i6;
          layoutParams.width = j;
        } else {
          j = i1;
        } 
        switch (this.mDragEdge) {
          case 2:
            m = Math.max(paramInt3 - j - getPaddingRight() - paramInt1, i6);
            n = Math.min(getPaddingTop(), i3);
            i1 = Math.max(paramInt3 - getPaddingRight() - paramInt1, i6);
            j = Math.min(getPaddingTop() + k, i3);
            k = i1;
            view.layout(m, n, k, j);
            i++;
            break;
          case 1:
            m = Math.min(getPaddingLeft(), i4);
            n = Math.min(getPaddingTop(), i3);
            i1 = Math.min(j + getPaddingLeft(), i4);
            j = Math.min(getPaddingTop() + k, i3);
            k = i1;
            view.layout(m, n, k, j);
            i++;
            break;
          case 4:
            m = Math.min(getPaddingLeft(), i4);
            n = Math.min(getPaddingTop(), i3);
            i1 = Math.min(j + getPaddingLeft(), i4);
            j = Math.min(getPaddingTop() + k, i3);
            k = i1;
            view.layout(m, n, k, j);
            i++;
            break;
          case 8:
            m = Math.min(getPaddingLeft(), i4);
            n = Math.max(paramInt4 - k - getPaddingBottom() - paramInt2, i5);
            k = Math.min(j + getPaddingLeft(), i4);
            j = Math.max(paramInt4 - getPaddingBottom() - paramInt2, i5);
            view.layout(m, n, k, j);
            i++;
            break;
        } 
        continue;
      } 
      if (this.mMode == 1) {
        switch (this.mDragEdge) {
          default:
            initRects();
            if (this.mIsOpenBeforeInit) {
              open(false);
            } else {
              break;
            } 
            this.mLastMainLeft = this.mMainView.getLeft();
            this.mLastMainTop = this.mMainView.getTop();
            this.mOnLayoutCount++;
            return;
          case 1:
            this.mSecondaryView.offsetLeftAndRight(-this.mSecondaryView.getWidth());
          case 2:
            this.mSecondaryView.offsetLeftAndRight(this.mSecondaryView.getWidth());
          case 4:
            this.mSecondaryView.offsetTopAndBottom(-this.mSecondaryView.getHeight());
          case 8:
            this.mSecondaryView.offsetTopAndBottom(this.mSecondaryView.getHeight());
        } 
        close(false);
      } else {
      
      } 
      this.mLastMainLeft = this.mMainView.getLeft();
      this.mLastMainTop = this.mMainView.getTop();
      this.mOnLayoutCount++;
      return;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (getChildCount() < 2)
      throw new RuntimeException("O Layout deve ter dois filhos"); 
    ViewGroup.LayoutParams layoutParams = getLayoutParams();
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getMode(paramInt2);
    int k = 0;
    int j = 0;
    int i;
    for (i = 0; i < getChildCount(); i++) {
      View view = getChildAt(i);
      measureChild(view, paramInt1, paramInt2);
      k = Math.max(view.getMeasuredWidth(), k);
      j = Math.max(view.getMeasuredHeight(), j);
    } 
    int i2 = View.MeasureSpec.makeMeasureSpec(k, i1);
    int i3 = View.MeasureSpec.makeMeasureSpec(j, n);
    i = View.MeasureSpec.getSize(i2);
    paramInt2 = View.MeasureSpec.getSize(i3);
    paramInt1 = 0;
    int m = k;
    k = j;
    while (paramInt1 < getChildCount()) {
      View view = getChildAt(paramInt1);
      ViewGroup.LayoutParams layoutParams1 = view.getLayoutParams();
      if (layoutParams1 != null) {
        if (layoutParams1.height == -1)
          view.setMinimumHeight(paramInt2); 
        if (layoutParams1.width == -1)
          view.setMinimumWidth(i); 
      } 
      measureChild(view, i2, i3);
      m = Math.max(view.getMeasuredWidth(), m);
      k = Math.max(view.getMeasuredHeight(), k);
      paramInt1++;
    } 
    paramInt1 = getPaddingLeft() + getPaddingRight() + m;
    m = getPaddingTop();
    i2 = getPaddingBottom();
    if (i1 != 1073741824) {
      if (layoutParams.width == -1)
        paramInt1 = i; 
      if (i1 == Integer.MIN_VALUE) {
        j = paramInt1;
        if (paramInt1 > i)
          j = i; 
        i = j;
      } else {
        i = paramInt1;
      } 
    } 
    if (n == 1073741824) {
      paramInt1 = paramInt2;
    } else {
      if (layoutParams.height == -1) {
        j = paramInt2;
      } else {
        j = k + m + i2;
      } 
      paramInt1 = j;
      if (n == Integer.MIN_VALUE) {
        paramInt1 = j;
        if (j > paramInt2)
          paramInt1 = paramInt2; 
      } 
    } 
    setMeasuredDimension(i, paramInt1);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    this.mGestureDetector.onTouchEvent(paramMotionEvent);
    this.mDragHelper.processTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void open(boolean paramBoolean) {
    this.mIsOpenBeforeInit = true;
    this.mAborted = false;
    if (paramBoolean) {
      this.mState = 3;
      this.mDragHelper.smoothSlideViewTo(this.mMainView, this.mRectMainOpen.left, this.mRectMainOpen.top);
      if (this.mDragStateChangeListener != null)
        this.mDragStateChangeListener.onDragStateChanged(this.mState); 
    } else {
      this.mState = 2;
      this.mDragHelper.abort();
      this.mMainView.layout(this.mRectMainOpen.left, this.mRectMainOpen.top, this.mRectMainOpen.right, this.mRectMainOpen.bottom);
      this.mSecondaryView.layout(this.mRectSecOpen.left, this.mRectSecOpen.top, this.mRectSecOpen.right, this.mRectSecOpen.bottom);
    } 
    ViewCompat.postInvalidateOnAnimation((View)this);
  }
  
  public void setDragEdge(int paramInt) {
    this.mDragEdge = paramInt;
  }
  
  void setDragStateChangeListener(SwipeLayout$DragStateChangeListener paramSwipeLayout$DragStateChangeListener) {
    this.mDragStateChangeListener = paramSwipeLayout$DragStateChangeListener;
  }
  
  public void setLockDrag(boolean paramBoolean) {
    this.mLockDrag = paramBoolean;
  }
  
  public void setMinFlingVelocity(int paramInt) {
    this.mMinFlingVelocity = paramInt;
  }
  
  public void setSwipeListener(SwipeLayout$SwipeListener paramSwipeLayout$SwipeListener) {
    this.mSwipeListener = paramSwipeLayout$SwipeListener;
  }
  
  protected boolean shouldRequestLayout() {
    return (this.mOnLayoutCount < 2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\customView\SwipeLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */