package android.support.v7.widget.helper;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;

public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
  static final int ACTION_MODE_DRAG_MASK = 16711680;
  
  private static final int ACTION_MODE_IDLE_MASK = 255;
  
  static final int ACTION_MODE_SWIPE_MASK = 65280;
  
  public static final int ACTION_STATE_DRAG = 2;
  
  public static final int ACTION_STATE_IDLE = 0;
  
  public static final int ACTION_STATE_SWIPE = 1;
  
  static final int ACTIVE_POINTER_ID_NONE = -1;
  
  public static final int ANIMATION_TYPE_DRAG = 8;
  
  public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
  
  public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
  
  static final boolean DEBUG = false;
  
  static final int DIRECTION_FLAG_COUNT = 8;
  
  public static final int DOWN = 2;
  
  public static final int END = 32;
  
  public static final int LEFT = 4;
  
  private static final int PIXELS_PER_SECOND = 1000;
  
  public static final int RIGHT = 8;
  
  public static final int START = 16;
  
  static final String TAG = "ItemTouchHelper";
  
  public static final int UP = 1;
  
  int mActionState = 0;
  
  int mActivePointerId = -1;
  
  ItemTouchHelper$Callback mCallback;
  
  private RecyclerView.ChildDrawingOrderCallback mChildDrawingOrderCallback = null;
  
  private List<Integer> mDistances;
  
  private long mDragScrollStartTimeInMs;
  
  float mDx;
  
  float mDy;
  
  GestureDetectorCompat mGestureDetector;
  
  float mInitialTouchX;
  
  float mInitialTouchY;
  
  float mMaxSwipeVelocity;
  
  private final RecyclerView.OnItemTouchListener mOnItemTouchListener = new ItemTouchHelper$2(this);
  
  View mOverdrawChild = null;
  
  int mOverdrawChildPosition = -1;
  
  final List<View> mPendingCleanup = new ArrayList<View>();
  
  List<ItemTouchHelper$RecoverAnimation> mRecoverAnimations = new ArrayList<ItemTouchHelper$RecoverAnimation>();
  
  RecyclerView mRecyclerView;
  
  final Runnable mScrollRunnable = new ItemTouchHelper$1(this);
  
  RecyclerView.ViewHolder mSelected = null;
  
  int mSelectedFlags;
  
  float mSelectedStartX;
  
  float mSelectedStartY;
  
  private int mSlop;
  
  private List<RecyclerView.ViewHolder> mSwapTargets;
  
  float mSwipeEscapeVelocity;
  
  private final float[] mTmpPosition = new float[2];
  
  private Rect mTmpRect;
  
  VelocityTracker mVelocityTracker;
  
  public ItemTouchHelper(ItemTouchHelper$Callback paramItemTouchHelper$Callback) {
    this.mCallback = paramItemTouchHelper$Callback;
  }
  
  private void addChildDrawingOrderCallback() {
    if (Build.VERSION.SDK_INT >= 21)
      return; 
    if (this.mChildDrawingOrderCallback == null)
      this.mChildDrawingOrderCallback = new ItemTouchHelper$5(this); 
    this.mRecyclerView.setChildDrawingOrderCallback(this.mChildDrawingOrderCallback);
  }
  
  private int checkHorizontalSwipe(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    byte b = 8;
    if ((paramInt & 0xC) != 0) {
      byte b1;
      if (this.mDx > 0.0F) {
        b1 = 8;
      } else {
        b1 = 4;
      } 
      if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
        float f4 = VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId);
        float f3 = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
        if (f4 <= 0.0F)
          b = 4; 
        f4 = Math.abs(f4);
        if ((b & paramInt) != 0 && b1 == b && f4 >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && f4 > Math.abs(f3))
          return b; 
      } 
      float f1 = this.mRecyclerView.getWidth();
      float f2 = this.mCallback.getSwipeThreshold(paramViewHolder);
      if ((paramInt & b1) != 0 && Math.abs(this.mDx) > f1 * f2)
        return b1; 
    } 
    return 0;
  }
  
  private int checkVerticalSwipe(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    byte b = 2;
    if ((paramInt & 0x3) != 0) {
      byte b1;
      if (this.mDy > 0.0F) {
        b1 = 2;
      } else {
        b1 = 1;
      } 
      if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
        float f3 = VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId);
        float f4 = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
        if (f4 <= 0.0F)
          b = 1; 
        f4 = Math.abs(f4);
        if ((b & paramInt) != 0 && b == b1 && f4 >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && f4 > Math.abs(f3))
          return b; 
      } 
      float f1 = this.mRecyclerView.getHeight();
      float f2 = this.mCallback.getSwipeThreshold(paramViewHolder);
      if ((paramInt & b1) != 0 && Math.abs(this.mDy) > f1 * f2)
        return b1; 
    } 
    return 0;
  }
  
  private void destroyCallbacks() {
    this.mRecyclerView.removeItemDecoration(this);
    this.mRecyclerView.removeOnItemTouchListener(this.mOnItemTouchListener);
    this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
    for (int i = this.mRecoverAnimations.size() - 1; i >= 0; i--) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(0);
      this.mCallback.clearView(this.mRecyclerView, itemTouchHelper$RecoverAnimation.mViewHolder);
    } 
    this.mRecoverAnimations.clear();
    this.mOverdrawChild = null;
    this.mOverdrawChildPosition = -1;
    releaseVelocityTracker();
  }
  
  private List<RecyclerView.ViewHolder> findSwapTargets(RecyclerView.ViewHolder paramViewHolder) {
    if (this.mSwapTargets == null) {
      this.mSwapTargets = new ArrayList<RecyclerView.ViewHolder>();
      this.mDistances = new ArrayList<Integer>();
    } else {
      this.mSwapTargets.clear();
      this.mDistances.clear();
    } 
    int i = this.mCallback.getBoundingBoxMargin();
    int j = Math.round(this.mSelectedStartX + this.mDx) - i;
    int k = Math.round(this.mSelectedStartY + this.mDy) - i;
    int m = paramViewHolder.itemView.getWidth() + j + i * 2;
    int n = paramViewHolder.itemView.getHeight() + k + i * 2;
    int i1 = (j + m) / 2;
    int i2 = (k + n) / 2;
    RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
    int i3 = layoutManager.getChildCount();
    for (i = 0; i < i3; i++) {
      View view = layoutManager.getChildAt(i);
      if (view != paramViewHolder.itemView && view.getBottom() >= k && view.getTop() <= n && view.getRight() >= j && view.getLeft() <= m) {
        RecyclerView.ViewHolder viewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (this.mCallback.canDropOver(this.mRecyclerView, this.mSelected, viewHolder)) {
          int i4 = Math.abs(i1 - (view.getLeft() + view.getRight()) / 2);
          int i5 = view.getTop();
          i5 = Math.abs(i2 - (view.getBottom() + i5) / 2);
          int i6 = i4 * i4 + i5 * i5;
          int i7 = this.mSwapTargets.size();
          i5 = 0;
          for (i4 = 0; i4 < i7 && i6 > ((Integer)this.mDistances.get(i4)).intValue(); i4++)
            i5++; 
          this.mSwapTargets.add(i5, viewHolder);
          this.mDistances.add(i5, Integer.valueOf(i6));
        } 
      } 
    } 
    return this.mSwapTargets;
  }
  
  private RecyclerView.ViewHolder findSwipedView(MotionEvent paramMotionEvent) {
    RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
    if (this.mActivePointerId != -1) {
      int i = paramMotionEvent.findPointerIndex(this.mActivePointerId);
      float f3 = paramMotionEvent.getX(i);
      float f4 = this.mInitialTouchX;
      float f1 = paramMotionEvent.getY(i);
      float f2 = this.mInitialTouchY;
      f3 = Math.abs(f3 - f4);
      f1 = Math.abs(f1 - f2);
      if ((f3 >= this.mSlop || f1 >= this.mSlop) && (f3 <= f1 || !layoutManager.canScrollHorizontally()) && (f1 <= f3 || !layoutManager.canScrollVertically())) {
        View view = findChildView(paramMotionEvent);
        if (view != null)
          return this.mRecyclerView.getChildViewHolder(view); 
      } 
    } 
    return null;
  }
  
  private void getSelectedDxDy(float[] paramArrayOffloat) {
    if ((this.mSelectedFlags & 0xC) != 0) {
      paramArrayOffloat[0] = this.mSelectedStartX + this.mDx - this.mSelected.itemView.getLeft();
    } else {
      paramArrayOffloat[0] = ViewCompat.getTranslationX(this.mSelected.itemView);
    } 
    if ((this.mSelectedFlags & 0x3) != 0) {
      paramArrayOffloat[1] = this.mSelectedStartY + this.mDy - this.mSelected.itemView.getTop();
      return;
    } 
    paramArrayOffloat[1] = ViewCompat.getTranslationY(this.mSelected.itemView);
  }
  
  private static boolean hitTest(View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    return (paramFloat1 >= paramFloat3 && paramFloat1 <= paramView.getWidth() + paramFloat3 && paramFloat2 >= paramFloat4 && paramFloat2 <= paramView.getHeight() + paramFloat4);
  }
  
  private void initGestureDetector() {
    if (this.mGestureDetector != null)
      return; 
    this.mGestureDetector = new GestureDetectorCompat(this.mRecyclerView.getContext(), (GestureDetector.OnGestureListener)new ItemTouchHelper$ItemTouchHelperGestureListener(this));
  }
  
  private void releaseVelocityTracker() {
    if (this.mVelocityTracker != null) {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    } 
  }
  
  private void setupCallbacks() {
    this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
    this.mRecyclerView.addItemDecoration(this);
    this.mRecyclerView.addOnItemTouchListener(this.mOnItemTouchListener);
    this.mRecyclerView.addOnChildAttachStateChangeListener(this);
    initGestureDetector();
  }
  
  private int swipeIfNecessary(RecyclerView.ViewHolder paramViewHolder) {
    if (this.mActionState != 2) {
      int j = this.mCallback.getMovementFlags(this.mRecyclerView, paramViewHolder);
      int i = (this.mCallback.convertToAbsoluteDirection(j, ViewCompat.getLayoutDirection((View)this.mRecyclerView)) & 0xFF00) >> 8;
      if (i != 0) {
        j = (j & 0xFF00) >> 8;
        if (Math.abs(this.mDx) > Math.abs(this.mDy)) {
          int m = checkHorizontalSwipe(paramViewHolder, i);
          if (m > 0)
            return ((j & m) == 0) ? ItemTouchHelper$Callback.convertToRelativeDirection(m, ViewCompat.getLayoutDirection((View)this.mRecyclerView)) : m; 
          i = checkVerticalSwipe(paramViewHolder, i);
          return (i > 0) ? i : 0;
        } 
        int k = checkVerticalSwipe(paramViewHolder, i);
        if (k > 0)
          return k; 
        i = checkHorizontalSwipe(paramViewHolder, i);
        if (i > 0)
          return ((j & i) == 0) ? ItemTouchHelper$Callback.convertToRelativeDirection(i, ViewCompat.getLayoutDirection((View)this.mRecyclerView)) : i; 
      } 
    } 
    return 0;
  }
  
  public void attachToRecyclerView(@Nullable RecyclerView paramRecyclerView) {
    if (this.mRecyclerView != paramRecyclerView) {
      if (this.mRecyclerView != null)
        destroyCallbacks(); 
      this.mRecyclerView = paramRecyclerView;
      if (this.mRecyclerView != null) {
        Resources resources = paramRecyclerView.getResources();
        this.mSwipeEscapeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
        this.mMaxSwipeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
        setupCallbacks();
        return;
      } 
    } 
  }
  
  boolean checkSelectForSwipe(int paramInt1, MotionEvent paramMotionEvent, int paramInt2) {
    if (this.mSelected == null && paramInt1 == 2 && this.mActionState != 2 && this.mCallback.isItemViewSwipeEnabled() && this.mRecyclerView.getScrollState() != 1) {
      RecyclerView.ViewHolder viewHolder = findSwipedView(paramMotionEvent);
      if (viewHolder != null) {
        paramInt1 = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, viewHolder) & 0xFF00) >> 8;
        if (paramInt1 != 0) {
          float f1 = paramMotionEvent.getX(paramInt2);
          float f2 = paramMotionEvent.getY(paramInt2);
          f1 -= this.mInitialTouchX;
          f2 -= this.mInitialTouchY;
          float f3 = Math.abs(f1);
          float f4 = Math.abs(f2);
          if (f3 >= this.mSlop || f4 >= this.mSlop) {
            if (f3 > f4) {
              if ((f1 >= 0.0F || (paramInt1 & 0x4) != 0) && (f1 <= 0.0F || (paramInt1 & 0x8) != 0)) {
                this.mDy = 0.0F;
                this.mDx = 0.0F;
                this.mActivePointerId = paramMotionEvent.getPointerId(0);
                select(viewHolder, 1);
                return true;
              } 
              return false;
            } 
            if (f2 >= 0.0F || (paramInt1 & 0x1) != 0) {
              if (f2 > 0.0F && (paramInt1 & 0x2) == 0)
                return false; 
              this.mDy = 0.0F;
              this.mDx = 0.0F;
              this.mActivePointerId = paramMotionEvent.getPointerId(0);
              select(viewHolder, 1);
              return true;
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  int endRecoverAnimation(RecyclerView.ViewHolder paramViewHolder, boolean paramBoolean) {
    for (int i = this.mRecoverAnimations.size() - 1; i >= 0; i--) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(i);
      if (itemTouchHelper$RecoverAnimation.mViewHolder == paramViewHolder) {
        itemTouchHelper$RecoverAnimation.mOverridden |= paramBoolean;
        if (!itemTouchHelper$RecoverAnimation.mEnded)
          itemTouchHelper$RecoverAnimation.cancel(); 
        this.mRecoverAnimations.remove(i);
        return itemTouchHelper$RecoverAnimation.mAnimationType;
      } 
    } 
    return 0;
  }
  
  ItemTouchHelper$RecoverAnimation findAnimation(MotionEvent paramMotionEvent) {
    if (this.mRecoverAnimations.isEmpty())
      return null; 
    View view = findChildView(paramMotionEvent);
    int i = this.mRecoverAnimations.size() - 1;
    while (i >= 0) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation2 = this.mRecoverAnimations.get(i);
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation1 = itemTouchHelper$RecoverAnimation2;
      if (itemTouchHelper$RecoverAnimation2.mViewHolder.itemView != view) {
        i--;
        continue;
      } 
      return itemTouchHelper$RecoverAnimation1;
    } 
    return null;
  }
  
  View findChildView(MotionEvent paramMotionEvent) {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    if (this.mSelected != null) {
      View view = this.mSelected.itemView;
      if (hitTest(view, f1, f2, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy))
        return view; 
    } 
    int i;
    for (i = this.mRecoverAnimations.size() - 1; i >= 0; i--) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(i);
      View view = itemTouchHelper$RecoverAnimation.mViewHolder.itemView;
      if (hitTest(view, f1, f2, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY))
        return view; 
    } 
    return this.mRecyclerView.findChildViewUnder(f1, f2);
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    paramRect.setEmpty();
  }
  
  boolean hasRunningRecoverAnim() {
    int j = this.mRecoverAnimations.size();
    for (int i = 0; i < j; i++) {
      if (!((ItemTouchHelper$RecoverAnimation)this.mRecoverAnimations.get(i)).mEnded)
        return true; 
    } 
    return false;
  }
  
  void moveIfNecessary(RecyclerView.ViewHolder paramViewHolder) {
    if (!this.mRecyclerView.isLayoutRequested() && this.mActionState == 2) {
      float f = this.mCallback.getMoveThreshold(paramViewHolder);
      int i = (int)(this.mSelectedStartX + this.mDx);
      int j = (int)(this.mSelectedStartY + this.mDy);
      if (Math.abs(j - paramViewHolder.itemView.getTop()) >= paramViewHolder.itemView.getHeight() * f || Math.abs(i - paramViewHolder.itemView.getLeft()) >= f * paramViewHolder.itemView.getWidth()) {
        List<RecyclerView.ViewHolder> list = findSwapTargets(paramViewHolder);
        if (list.size() != 0) {
          RecyclerView.ViewHolder viewHolder = this.mCallback.chooseDropTarget(paramViewHolder, list, i, j);
          if (viewHolder == null) {
            this.mSwapTargets.clear();
            this.mDistances.clear();
            return;
          } 
          int k = viewHolder.getAdapterPosition();
          int m = paramViewHolder.getAdapterPosition();
          if (this.mCallback.onMove(this.mRecyclerView, paramViewHolder, viewHolder)) {
            this.mCallback.onMoved(this.mRecyclerView, paramViewHolder, m, viewHolder, k, i, j);
            return;
          } 
        } 
      } 
    } 
  }
  
  void obtainVelocityTracker() {
    if (this.mVelocityTracker != null)
      this.mVelocityTracker.recycle(); 
    this.mVelocityTracker = VelocityTracker.obtain();
  }
  
  public void onChildViewAttachedToWindow(View paramView) {}
  
  public void onChildViewDetachedFromWindow(View paramView) {
    removeChildDrawingOrderCallbackIfNecessary(paramView);
    RecyclerView.ViewHolder viewHolder = this.mRecyclerView.getChildViewHolder(paramView);
    if (viewHolder != null) {
      if (this.mSelected != null && viewHolder == this.mSelected) {
        select(null, 0);
        return;
      } 
      endRecoverAnimation(viewHolder, false);
      if (this.mPendingCleanup.remove(viewHolder.itemView)) {
        this.mCallback.clearView(this.mRecyclerView, viewHolder);
        return;
      } 
    } 
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    float f1;
    float f2 = 0.0F;
    this.mOverdrawChildPosition = -1;
    if (this.mSelected != null) {
      getSelectedDxDy(this.mTmpPosition);
      f1 = this.mTmpPosition[0];
      f2 = this.mTmpPosition[1];
    } else {
      f1 = 0.0F;
    } 
    this.mCallback.onDraw(paramCanvas, paramRecyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f1, f2);
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    float f1;
    float f2 = 0.0F;
    if (this.mSelected != null) {
      getSelectedDxDy(this.mTmpPosition);
      f1 = this.mTmpPosition[0];
      f2 = this.mTmpPosition[1];
    } else {
      f1 = 0.0F;
    } 
    this.mCallback.onDrawOver(paramCanvas, paramRecyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f1, f2);
  }
  
  void postDispatchSwipe(ItemTouchHelper$RecoverAnimation paramItemTouchHelper$RecoverAnimation, int paramInt) {
    this.mRecyclerView.post(new ItemTouchHelper$4(this, paramItemTouchHelper$RecoverAnimation, paramInt));
  }
  
  void removeChildDrawingOrderCallbackIfNecessary(View paramView) {
    if (paramView == this.mOverdrawChild) {
      this.mOverdrawChild = null;
      if (this.mChildDrawingOrderCallback != null)
        this.mRecyclerView.setChildDrawingOrderCallback(null); 
    } 
  }
  
  boolean scrollIfNecessary() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   4: ifnonnull -> 16
    //   7: aload_0
    //   8: ldc2_w -9223372036854775808
    //   11: putfield mDragScrollStartTimeInMs : J
    //   14: iconst_0
    //   15: ireturn
    //   16: invokestatic currentTimeMillis : ()J
    //   19: lstore #6
    //   21: aload_0
    //   22: getfield mDragScrollStartTimeInMs : J
    //   25: ldc2_w -9223372036854775808
    //   28: lcmp
    //   29: ifne -> 286
    //   32: lconst_0
    //   33: lstore #4
    //   35: aload_0
    //   36: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   39: invokevirtual getLayoutManager : ()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   42: astore #8
    //   44: aload_0
    //   45: getfield mTmpRect : Landroid/graphics/Rect;
    //   48: ifnonnull -> 62
    //   51: aload_0
    //   52: new android/graphics/Rect
    //   55: dup
    //   56: invokespecial <init> : ()V
    //   59: putfield mTmpRect : Landroid/graphics/Rect;
    //   62: aload #8
    //   64: aload_0
    //   65: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   68: getfield itemView : Landroid/view/View;
    //   71: aload_0
    //   72: getfield mTmpRect : Landroid/graphics/Rect;
    //   75: invokevirtual calculateItemDecorationsForChild : (Landroid/view/View;Landroid/graphics/Rect;)V
    //   78: aload #8
    //   80: invokevirtual canScrollHorizontally : ()Z
    //   83: ifeq -> 350
    //   86: aload_0
    //   87: getfield mSelectedStartX : F
    //   90: aload_0
    //   91: getfield mDx : F
    //   94: fadd
    //   95: f2i
    //   96: istore_2
    //   97: iload_2
    //   98: aload_0
    //   99: getfield mTmpRect : Landroid/graphics/Rect;
    //   102: getfield left : I
    //   105: isub
    //   106: aload_0
    //   107: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   110: invokevirtual getPaddingLeft : ()I
    //   113: isub
    //   114: istore_1
    //   115: aload_0
    //   116: getfield mDx : F
    //   119: fconst_0
    //   120: fcmpg
    //   121: ifge -> 298
    //   124: iload_1
    //   125: ifge -> 298
    //   128: aload #8
    //   130: invokevirtual canScrollVertically : ()Z
    //   133: ifeq -> 407
    //   136: aload_0
    //   137: getfield mSelectedStartY : F
    //   140: aload_0
    //   141: getfield mDy : F
    //   144: fadd
    //   145: f2i
    //   146: istore_3
    //   147: iload_3
    //   148: aload_0
    //   149: getfield mTmpRect : Landroid/graphics/Rect;
    //   152: getfield top : I
    //   155: isub
    //   156: aload_0
    //   157: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   160: invokevirtual getPaddingTop : ()I
    //   163: isub
    //   164: istore_2
    //   165: aload_0
    //   166: getfield mDy : F
    //   169: fconst_0
    //   170: fcmpg
    //   171: ifge -> 355
    //   174: iload_2
    //   175: ifge -> 355
    //   178: iload_1
    //   179: ifeq -> 424
    //   182: aload_0
    //   183: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   186: aload_0
    //   187: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   190: aload_0
    //   191: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   194: getfield itemView : Landroid/view/View;
    //   197: invokevirtual getWidth : ()I
    //   200: iload_1
    //   201: aload_0
    //   202: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   205: invokevirtual getWidth : ()I
    //   208: lload #4
    //   210: invokevirtual interpolateOutOfBoundsScroll : (Landroid/support/v7/widget/RecyclerView;IIIJ)I
    //   213: istore_1
    //   214: iload_2
    //   215: ifeq -> 421
    //   218: aload_0
    //   219: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   222: aload_0
    //   223: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   226: aload_0
    //   227: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   230: getfield itemView : Landroid/view/View;
    //   233: invokevirtual getHeight : ()I
    //   236: iload_2
    //   237: aload_0
    //   238: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   241: invokevirtual getHeight : ()I
    //   244: lload #4
    //   246: invokevirtual interpolateOutOfBoundsScroll : (Landroid/support/v7/widget/RecyclerView;IIIJ)I
    //   249: istore_2
    //   250: iload_1
    //   251: ifne -> 258
    //   254: iload_2
    //   255: ifeq -> 412
    //   258: aload_0
    //   259: getfield mDragScrollStartTimeInMs : J
    //   262: ldc2_w -9223372036854775808
    //   265: lcmp
    //   266: ifne -> 275
    //   269: aload_0
    //   270: lload #6
    //   272: putfield mDragScrollStartTimeInMs : J
    //   275: aload_0
    //   276: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   279: iload_1
    //   280: iload_2
    //   281: invokevirtual scrollBy : (II)V
    //   284: iconst_1
    //   285: ireturn
    //   286: lload #6
    //   288: aload_0
    //   289: getfield mDragScrollStartTimeInMs : J
    //   292: lsub
    //   293: lstore #4
    //   295: goto -> 35
    //   298: aload_0
    //   299: getfield mDx : F
    //   302: fconst_0
    //   303: fcmpl
    //   304: ifle -> 350
    //   307: iload_2
    //   308: aload_0
    //   309: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   312: getfield itemView : Landroid/view/View;
    //   315: invokevirtual getWidth : ()I
    //   318: iadd
    //   319: aload_0
    //   320: getfield mTmpRect : Landroid/graphics/Rect;
    //   323: getfield right : I
    //   326: iadd
    //   327: aload_0
    //   328: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   331: invokevirtual getWidth : ()I
    //   334: aload_0
    //   335: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   338: invokevirtual getPaddingRight : ()I
    //   341: isub
    //   342: isub
    //   343: istore_2
    //   344: iload_2
    //   345: istore_1
    //   346: iload_2
    //   347: ifgt -> 128
    //   350: iconst_0
    //   351: istore_1
    //   352: goto -> 128
    //   355: aload_0
    //   356: getfield mDy : F
    //   359: fconst_0
    //   360: fcmpl
    //   361: ifle -> 407
    //   364: iload_3
    //   365: aload_0
    //   366: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   369: getfield itemView : Landroid/view/View;
    //   372: invokevirtual getHeight : ()I
    //   375: iadd
    //   376: aload_0
    //   377: getfield mTmpRect : Landroid/graphics/Rect;
    //   380: getfield bottom : I
    //   383: iadd
    //   384: aload_0
    //   385: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   388: invokevirtual getHeight : ()I
    //   391: aload_0
    //   392: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   395: invokevirtual getPaddingBottom : ()I
    //   398: isub
    //   399: isub
    //   400: istore_3
    //   401: iload_3
    //   402: istore_2
    //   403: iload_3
    //   404: ifgt -> 178
    //   407: iconst_0
    //   408: istore_2
    //   409: goto -> 178
    //   412: aload_0
    //   413: ldc2_w -9223372036854775808
    //   416: putfield mDragScrollStartTimeInMs : J
    //   419: iconst_0
    //   420: ireturn
    //   421: goto -> 250
    //   424: goto -> 214
  }
  
  void select(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   5: if_acmpne -> 17
    //   8: iload_2
    //   9: aload_0
    //   10: getfield mActionState : I
    //   13: if_icmpne -> 17
    //   16: return
    //   17: aload_0
    //   18: ldc2_w -9223372036854775808
    //   21: putfield mDragScrollStartTimeInMs : J
    //   24: aload_0
    //   25: getfield mActionState : I
    //   28: istore #9
    //   30: aload_0
    //   31: aload_1
    //   32: iconst_1
    //   33: invokevirtual endRecoverAnimation : (Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    //   36: pop
    //   37: aload_0
    //   38: iload_2
    //   39: putfield mActionState : I
    //   42: iload_2
    //   43: iconst_2
    //   44: if_icmpne -> 59
    //   47: aload_0
    //   48: aload_1
    //   49: getfield itemView : Landroid/view/View;
    //   52: putfield mOverdrawChild : Landroid/view/View;
    //   55: aload_0
    //   56: invokespecial addChildDrawingOrderCallback : ()V
    //   59: iconst_0
    //   60: istore #7
    //   62: iconst_0
    //   63: istore #8
    //   65: aload_0
    //   66: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   69: ifnull -> 282
    //   72: aload_0
    //   73: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   76: astore #11
    //   78: aload #11
    //   80: getfield itemView : Landroid/view/View;
    //   83: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   86: ifnull -> 510
    //   89: iload #9
    //   91: iconst_2
    //   92: if_icmpne -> 436
    //   95: iconst_0
    //   96: istore #8
    //   98: aload_0
    //   99: invokespecial releaseVelocityTracker : ()V
    //   102: iload #8
    //   104: lookupswitch default -> 164, 1 -> 470, 2 -> 470, 4 -> 447, 8 -> 447, 16 -> 447, 32 -> 447
    //   164: fconst_0
    //   165: fstore_3
    //   166: fconst_0
    //   167: fstore #4
    //   169: iload #9
    //   171: iconst_2
    //   172: if_icmpne -> 493
    //   175: bipush #8
    //   177: istore #7
    //   179: aload_0
    //   180: aload_0
    //   181: getfield mTmpPosition : [F
    //   184: invokespecial getSelectedDxDy : ([F)V
    //   187: aload_0
    //   188: getfield mTmpPosition : [F
    //   191: iconst_0
    //   192: faload
    //   193: fstore #5
    //   195: aload_0
    //   196: getfield mTmpPosition : [F
    //   199: iconst_1
    //   200: faload
    //   201: fstore #6
    //   203: new android/support/v7/widget/helper/ItemTouchHelper$3
    //   206: dup
    //   207: aload_0
    //   208: aload #11
    //   210: iload #7
    //   212: iload #9
    //   214: fload #5
    //   216: fload #6
    //   218: fload_3
    //   219: fload #4
    //   221: iload #8
    //   223: aload #11
    //   225: invokespecial <init> : (Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   228: astore #11
    //   230: aload #11
    //   232: aload_0
    //   233: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   236: aload_0
    //   237: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   240: iload #7
    //   242: fload_3
    //   243: fload #5
    //   245: fsub
    //   246: fload #4
    //   248: fload #6
    //   250: fsub
    //   251: invokevirtual getAnimationDuration : (Landroid/support/v7/widget/RecyclerView;IFF)J
    //   254: invokevirtual setDuration : (J)V
    //   257: aload_0
    //   258: getfield mRecoverAnimations : Ljava/util/List;
    //   261: aload #11
    //   263: invokeinterface add : (Ljava/lang/Object;)Z
    //   268: pop
    //   269: aload #11
    //   271: invokevirtual start : ()V
    //   274: iconst_1
    //   275: istore #7
    //   277: aload_0
    //   278: aconst_null
    //   279: putfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   282: aload_1
    //   283: ifnull -> 368
    //   286: aload_0
    //   287: aload_0
    //   288: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   291: aload_0
    //   292: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   295: aload_1
    //   296: invokevirtual getAbsoluteMovementFlags : (Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    //   299: iconst_1
    //   300: iload_2
    //   301: bipush #8
    //   303: imul
    //   304: bipush #8
    //   306: iadd
    //   307: ishl
    //   308: iconst_1
    //   309: isub
    //   310: iand
    //   311: aload_0
    //   312: getfield mActionState : I
    //   315: bipush #8
    //   317: imul
    //   318: ishr
    //   319: putfield mSelectedFlags : I
    //   322: aload_0
    //   323: aload_1
    //   324: getfield itemView : Landroid/view/View;
    //   327: invokevirtual getLeft : ()I
    //   330: i2f
    //   331: putfield mSelectedStartX : F
    //   334: aload_0
    //   335: aload_1
    //   336: getfield itemView : Landroid/view/View;
    //   339: invokevirtual getTop : ()I
    //   342: i2f
    //   343: putfield mSelectedStartY : F
    //   346: aload_0
    //   347: aload_1
    //   348: putfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   351: iload_2
    //   352: iconst_2
    //   353: if_icmpne -> 368
    //   356: aload_0
    //   357: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   360: getfield itemView : Landroid/view/View;
    //   363: iconst_0
    //   364: invokevirtual performHapticFeedback : (I)Z
    //   367: pop
    //   368: aload_0
    //   369: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   372: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   375: astore_1
    //   376: aload_1
    //   377: ifnull -> 398
    //   380: aload_0
    //   381: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   384: ifnull -> 539
    //   387: iconst_1
    //   388: istore #10
    //   390: aload_1
    //   391: iload #10
    //   393: invokeinterface requestDisallowInterceptTouchEvent : (Z)V
    //   398: iload #7
    //   400: ifne -> 413
    //   403: aload_0
    //   404: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   407: invokevirtual getLayoutManager : ()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   410: invokevirtual requestSimpleAnimationsInNextLayout : ()V
    //   413: aload_0
    //   414: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   417: aload_0
    //   418: getfield mSelected : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   421: aload_0
    //   422: getfield mActionState : I
    //   425: invokevirtual onSelectedChanged : (Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    //   428: aload_0
    //   429: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   432: invokevirtual invalidate : ()V
    //   435: return
    //   436: aload_0
    //   437: aload #11
    //   439: invokespecial swipeIfNecessary : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    //   442: istore #8
    //   444: goto -> 98
    //   447: fconst_0
    //   448: fstore #4
    //   450: aload_0
    //   451: getfield mDx : F
    //   454: invokestatic signum : (F)F
    //   457: aload_0
    //   458: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   461: invokevirtual getWidth : ()I
    //   464: i2f
    //   465: fmul
    //   466: fstore_3
    //   467: goto -> 169
    //   470: fconst_0
    //   471: fstore_3
    //   472: aload_0
    //   473: getfield mDy : F
    //   476: invokestatic signum : (F)F
    //   479: aload_0
    //   480: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   483: invokevirtual getHeight : ()I
    //   486: i2f
    //   487: fmul
    //   488: fstore #4
    //   490: goto -> 169
    //   493: iload #8
    //   495: ifle -> 504
    //   498: iconst_2
    //   499: istore #7
    //   501: goto -> 179
    //   504: iconst_4
    //   505: istore #7
    //   507: goto -> 179
    //   510: aload_0
    //   511: aload #11
    //   513: getfield itemView : Landroid/view/View;
    //   516: invokevirtual removeChildDrawingOrderCallbackIfNecessary : (Landroid/view/View;)V
    //   519: aload_0
    //   520: getfield mCallback : Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    //   523: aload_0
    //   524: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   527: aload #11
    //   529: invokevirtual clearView : (Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   532: iload #8
    //   534: istore #7
    //   536: goto -> 277
    //   539: iconst_0
    //   540: istore #10
    //   542: goto -> 390
  }
  
  public void startDrag(RecyclerView.ViewHolder paramViewHolder) {
    if (!this.mCallback.hasDragFlag(this.mRecyclerView, paramViewHolder)) {
      Log.e("ItemTouchHelper", "Start drag has been called but swiping is not enabled");
      return;
    } 
    if (paramViewHolder.itemView.getParent() != this.mRecyclerView) {
      Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
      return;
    } 
    obtainVelocityTracker();
    this.mDy = 0.0F;
    this.mDx = 0.0F;
    select(paramViewHolder, 2);
  }
  
  public void startSwipe(RecyclerView.ViewHolder paramViewHolder) {
    if (!this.mCallback.hasSwipeFlag(this.mRecyclerView, paramViewHolder)) {
      Log.e("ItemTouchHelper", "Start swipe has been called but dragging is not enabled");
      return;
    } 
    if (paramViewHolder.itemView.getParent() != this.mRecyclerView) {
      Log.e("ItemTouchHelper", "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
      return;
    } 
    obtainVelocityTracker();
    this.mDy = 0.0F;
    this.mDx = 0.0F;
    select(paramViewHolder, 1);
  }
  
  void updateDxDy(MotionEvent paramMotionEvent, int paramInt1, int paramInt2) {
    float f1 = paramMotionEvent.getX(paramInt2);
    float f2 = paramMotionEvent.getY(paramInt2);
    this.mDx = f1 - this.mInitialTouchX;
    this.mDy = f2 - this.mInitialTouchY;
    if ((paramInt1 & 0x4) == 0)
      this.mDx = Math.max(0.0F, this.mDx); 
    if ((paramInt1 & 0x8) == 0)
      this.mDx = Math.min(0.0F, this.mDx); 
    if ((paramInt1 & 0x1) == 0)
      this.mDy = Math.max(0.0F, this.mDy); 
    if ((paramInt1 & 0x2) == 0)
      this.mDy = Math.min(0.0F, this.mDy); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */