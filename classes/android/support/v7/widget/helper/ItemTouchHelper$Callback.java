package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.List;

public abstract class ItemTouchHelper$Callback {
  private static final int ABS_HORIZONTAL_DIR_FLAGS = 789516;
  
  public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
  
  public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
  
  private static final long DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS = 2000L;
  
  static final int RELATIVE_DIR_FLAGS = 3158064;
  
  private static final Interpolator sDragScrollInterpolator = new ItemTouchHelper$Callback$1();
  
  private static final Interpolator sDragViewScrollCapInterpolator = new ItemTouchHelper$Callback$2();
  
  private static final ItemTouchUIUtil sUICallback = new ItemTouchUIUtilImpl$Gingerbread();
  
  private int mCachedMaxScrollSpeed = -1;
  
  public static int convertToRelativeDirection(int paramInt1, int paramInt2) {
    int i = paramInt1 & 0xC0C0C;
    if (i == 0)
      return paramInt1; 
    paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
    return (paramInt2 == 0) ? (paramInt1 | i << 2) : (paramInt1 | i << 1 & 0xFFF3F3F3 | (i << 1 & 0xC0C0C) << 2);
  }
  
  public static ItemTouchUIUtil getDefaultUIUtil() {
    return sUICallback;
  }
  
  private int getMaxDragScroll(RecyclerView paramRecyclerView) {
    if (this.mCachedMaxScrollSpeed == -1)
      this.mCachedMaxScrollSpeed = paramRecyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame); 
    return this.mCachedMaxScrollSpeed;
  }
  
  public static int makeFlag(int paramInt1, int paramInt2) {
    return paramInt2 << paramInt1 * 8;
  }
  
  public static int makeMovementFlags(int paramInt1, int paramInt2) {
    return makeFlag(0, paramInt2 | paramInt1) | makeFlag(1, paramInt2) | makeFlag(2, paramInt1);
  }
  
  public boolean canDropOver(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2) {
    return true;
  }
  
  public RecyclerView.ViewHolder chooseDropTarget(RecyclerView.ViewHolder paramViewHolder, List<RecyclerView.ViewHolder> paramList, int paramInt1, int paramInt2) {
    int k = paramViewHolder.itemView.getWidth();
    int m = paramViewHolder.itemView.getHeight();
    Object object = null;
    int i = -1;
    int n = paramInt1 - paramViewHolder.itemView.getLeft();
    int i1 = paramInt2 - paramViewHolder.itemView.getTop();
    int i2 = paramList.size();
    int j = 0;
    while (true) {
      if (j < i2) {
        RecyclerView.ViewHolder viewHolder = paramList.get(j);
        if (n > 0) {
          int i3 = viewHolder.itemView.getRight() - paramInt1 + k;
          if (i3 < 0 && viewHolder.itemView.getRight() > paramViewHolder.itemView.getRight()) {
            i3 = Math.abs(i3);
            if (i3 > i) {
              i = i3;
              object = viewHolder;
            } 
          } 
        } 
        if (n < 0) {
          int i3 = viewHolder.itemView.getLeft() - paramInt1;
          if (i3 > 0 && viewHolder.itemView.getLeft() < paramViewHolder.itemView.getLeft()) {
            i3 = Math.abs(i3);
            if (i3 > i) {
              object = viewHolder;
              i = i3;
            } 
          } 
        } 
        if (i1 < 0) {
          int i3 = viewHolder.itemView.getTop() - paramInt2;
          if (i3 > 0 && viewHolder.itemView.getTop() < paramViewHolder.itemView.getTop()) {
            i3 = Math.abs(i3);
            if (i3 > i) {
              object = viewHolder;
              i = i3;
            } 
          } 
        } 
        if (i1 > 0) {
          int i3 = viewHolder.itemView.getBottom() - paramInt2 + m;
          if (i3 < 0 && viewHolder.itemView.getBottom() > paramViewHolder.itemView.getBottom()) {
            i3 = Math.abs(i3);
            if (i3 > i) {
              i = i3;
              continue;
            } 
          } 
        } 
      } else {
        return (RecyclerView.ViewHolder)object;
      } 
      Object object1 = object;
      continue;
      j++;
      object = SYNTHETIC_LOCAL_VARIABLE_13;
    } 
  }
  
  public void clearView(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    sUICallback.clearView(paramViewHolder.itemView);
  }
  
  public int convertToAbsoluteDirection(int paramInt1, int paramInt2) {
    int i = paramInt1 & 0x303030;
    if (i == 0)
      return paramInt1; 
    paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
    return (paramInt2 == 0) ? (paramInt1 | i >> 2) : (paramInt1 | i >> 1 & 0xFFCFCFCF | (i >> 1 & 0x303030) >> 2);
  }
  
  final int getAbsoluteMovementFlags(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return convertToAbsoluteDirection(getMovementFlags(paramRecyclerView, paramViewHolder), ViewCompat.getLayoutDirection((View)paramRecyclerView));
  }
  
  public long getAnimationDuration(RecyclerView paramRecyclerView, int paramInt, float paramFloat1, float paramFloat2) {
    RecyclerView.ItemAnimator itemAnimator = paramRecyclerView.getItemAnimator();
    return (itemAnimator == null) ? ((paramInt == 8) ? 200L : 250L) : ((paramInt == 8) ? itemAnimator.getMoveDuration() : itemAnimator.getRemoveDuration());
  }
  
  public int getBoundingBoxMargin() {
    return 0;
  }
  
  public float getMoveThreshold(RecyclerView.ViewHolder paramViewHolder) {
    return 0.5F;
  }
  
  public abstract int getMovementFlags(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder);
  
  public float getSwipeEscapeVelocity(float paramFloat) {
    return paramFloat;
  }
  
  public float getSwipeThreshold(RecyclerView.ViewHolder paramViewHolder) {
    return 0.5F;
  }
  
  public float getSwipeVelocityThreshold(float paramFloat) {
    return paramFloat;
  }
  
  boolean hasDragFlag(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return ((getAbsoluteMovementFlags(paramRecyclerView, paramViewHolder) & 0xFF0000) != 0);
  }
  
  boolean hasSwipeFlag(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return ((getAbsoluteMovementFlags(paramRecyclerView, paramViewHolder) & 0xFF00) != 0);
  }
  
  public int interpolateOutOfBoundsScroll(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3, long paramLong) {
    float f1 = 1.0F;
    paramInt3 = getMaxDragScroll(paramRecyclerView);
    int i = Math.abs(paramInt2);
    int j = (int)Math.signum(paramInt2);
    float f2 = Math.min(1.0F, i * 1.0F / paramInt1);
    paramInt1 = (int)((paramInt3 * j) * sDragViewScrollCapInterpolator.getInterpolation(f2));
    if (paramLong <= 2000L)
      f1 = (float)paramLong / 2000.0F; 
    f2 = paramInt1;
    paramInt3 = (int)(sDragScrollInterpolator.getInterpolation(f1) * f2);
    paramInt1 = paramInt3;
    if (paramInt3 == 0) {
      if (paramInt2 > 0)
        return 1; 
    } else {
      return paramInt1;
    } 
    return -1;
  }
  
  public boolean isItemViewSwipeEnabled() {
    return true;
  }
  
  public boolean isLongPressDragEnabled() {
    return true;
  }
  
  public void onChildDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    sUICallback.onDraw(paramCanvas, paramRecyclerView, paramViewHolder.itemView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
  
  public void onChildDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    sUICallback.onDrawOver(paramCanvas, paramRecyclerView, paramViewHolder.itemView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
  
  void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, List<ItemTouchHelper$RecoverAnimation> paramList, int paramInt, float paramFloat1, float paramFloat2) {
    int j = paramList.size();
    int i;
    for (i = 0; i < j; i++) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = paramList.get(i);
      itemTouchHelper$RecoverAnimation.update();
      int k = paramCanvas.save();
      onChildDraw(paramCanvas, paramRecyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
      paramCanvas.restoreToCount(k);
    } 
    if (paramViewHolder != null) {
      i = paramCanvas.save();
      onChildDraw(paramCanvas, paramRecyclerView, paramViewHolder, paramFloat1, paramFloat2, paramInt, true);
      paramCanvas.restoreToCount(i);
    } 
  }
  
  void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, List<ItemTouchHelper$RecoverAnimation> paramList, int paramInt, float paramFloat1, float paramFloat2) {
    int j = paramList.size();
    int i;
    for (i = 0; i < j; i++) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = paramList.get(i);
      int k = paramCanvas.save();
      onChildDrawOver(paramCanvas, paramRecyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
      paramCanvas.restoreToCount(k);
    } 
    if (paramViewHolder != null) {
      i = paramCanvas.save();
      onChildDrawOver(paramCanvas, paramRecyclerView, paramViewHolder, paramFloat1, paramFloat2, paramInt, true);
      paramCanvas.restoreToCount(i);
    } 
    paramInt = 0;
    for (i = j - 1; i >= 0; i--) {
      ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = paramList.get(i);
      if (itemTouchHelper$RecoverAnimation.mEnded && !itemTouchHelper$RecoverAnimation.mIsPendingCleanup) {
        paramList.remove(i);
      } else if (!itemTouchHelper$RecoverAnimation.mEnded) {
        paramInt = 1;
      } 
    } 
    if (paramInt != 0)
      paramRecyclerView.invalidate(); 
  }
  
  public abstract boolean onMove(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2);
  
  public void onMoved(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, int paramInt1, RecyclerView.ViewHolder paramViewHolder2, int paramInt2, int paramInt3, int paramInt4) {
    RecyclerView.LayoutManager layoutManager = paramRecyclerView.getLayoutManager();
    if (layoutManager instanceof ItemTouchHelper$ViewDropHandler) {
      ((ItemTouchHelper$ViewDropHandler)layoutManager).prepareForDrop(paramViewHolder1.itemView, paramViewHolder2.itemView, paramInt3, paramInt4);
      return;
    } 
    if (layoutManager.canScrollHorizontally()) {
      if (layoutManager.getDecoratedLeft(paramViewHolder2.itemView) <= paramRecyclerView.getPaddingLeft())
        paramRecyclerView.scrollToPosition(paramInt2); 
      if (layoutManager.getDecoratedRight(paramViewHolder2.itemView) >= paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight())
        paramRecyclerView.scrollToPosition(paramInt2); 
    } 
    if (layoutManager.canScrollVertically()) {
      if (layoutManager.getDecoratedTop(paramViewHolder2.itemView) <= paramRecyclerView.getPaddingTop())
        paramRecyclerView.scrollToPosition(paramInt2); 
      if (layoutManager.getDecoratedBottom(paramViewHolder2.itemView) >= paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom()) {
        paramRecyclerView.scrollToPosition(paramInt2);
        return;
      } 
    } 
  }
  
  public void onSelectedChanged(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (paramViewHolder != null)
      sUICallback.onSelected(paramViewHolder.itemView); 
  }
  
  public abstract void onSwiped(RecyclerView.ViewHolder paramViewHolder, int paramInt);
  
  static {
    if (Build.VERSION.SDK_INT >= 21) {
      sUICallback = new ItemTouchUIUtilImpl$Lollipop();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      sUICallback = new ItemTouchUIUtilImpl$Honeycomb();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */