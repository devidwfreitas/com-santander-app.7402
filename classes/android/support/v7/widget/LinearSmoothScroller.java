package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

public class LinearSmoothScroller extends RecyclerView$SmoothScroller {
  private static final boolean DEBUG = false;
  
  private static final float MILLISECONDS_PER_INCH = 25.0F;
  
  public static final int SNAP_TO_ANY = 0;
  
  public static final int SNAP_TO_END = 1;
  
  public static final int SNAP_TO_START = -1;
  
  private static final String TAG = "LinearSmoothScroller";
  
  private static final float TARGET_SEEK_EXTRA_SCROLL_RATIO = 1.2F;
  
  private static final int TARGET_SEEK_SCROLL_DISTANCE_PX = 10000;
  
  private final float MILLISECONDS_PER_PX;
  
  protected final DecelerateInterpolator mDecelerateInterpolator = new DecelerateInterpolator();
  
  protected int mInterimTargetDx = 0;
  
  protected int mInterimTargetDy = 0;
  
  protected final LinearInterpolator mLinearInterpolator = new LinearInterpolator();
  
  protected PointF mTargetVector;
  
  public LinearSmoothScroller(Context paramContext) {
    this.MILLISECONDS_PER_PX = calculateSpeedPerPixel(paramContext.getResources().getDisplayMetrics());
  }
  
  private int clampApplyScroll(int paramInt1, int paramInt2) {
    int i = paramInt1 - paramInt2;
    paramInt2 = i;
    if (paramInt1 * i <= 0)
      paramInt2 = 0; 
    return paramInt2;
  }
  
  public int calculateDtToFit(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    switch (paramInt5) {
      default:
        throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
      case -1:
        return paramInt3 - paramInt1;
      case 1:
        return paramInt4 - paramInt2;
      case 0:
        break;
    } 
    paramInt3 -= paramInt1;
    paramInt1 = paramInt3;
    if (paramInt3 <= 0) {
      paramInt2 = paramInt4 - paramInt2;
      paramInt1 = paramInt2;
      if (paramInt2 >= 0)
        return 0; 
    } 
    return paramInt1;
  }
  
  public int calculateDxToMakeVisible(View paramView, int paramInt) {
    RecyclerView$LayoutManager recyclerView$LayoutManager = getLayoutManager();
    if (recyclerView$LayoutManager == null || !recyclerView$LayoutManager.canScrollHorizontally())
      return 0; 
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return calculateDtToFit(recyclerView$LayoutManager.getDecoratedLeft(paramView) - recyclerView$LayoutParams.leftMargin, recyclerView$LayoutManager.getDecoratedRight(paramView) + recyclerView$LayoutParams.rightMargin, recyclerView$LayoutManager.getPaddingLeft(), recyclerView$LayoutManager.getWidth() - recyclerView$LayoutManager.getPaddingRight(), paramInt);
  }
  
  public int calculateDyToMakeVisible(View paramView, int paramInt) {
    RecyclerView$LayoutManager recyclerView$LayoutManager = getLayoutManager();
    if (recyclerView$LayoutManager == null || !recyclerView$LayoutManager.canScrollVertically())
      return 0; 
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return calculateDtToFit(recyclerView$LayoutManager.getDecoratedTop(paramView) - recyclerView$LayoutParams.topMargin, recyclerView$LayoutManager.getDecoratedBottom(paramView) + recyclerView$LayoutParams.bottomMargin, recyclerView$LayoutManager.getPaddingTop(), recyclerView$LayoutManager.getHeight() - recyclerView$LayoutManager.getPaddingBottom(), paramInt);
  }
  
  protected float calculateSpeedPerPixel(DisplayMetrics paramDisplayMetrics) {
    return 25.0F / paramDisplayMetrics.densityDpi;
  }
  
  protected int calculateTimeForDeceleration(int paramInt) {
    return (int)Math.ceil(calculateTimeForScrolling(paramInt) / 0.3356D);
  }
  
  protected int calculateTimeForScrolling(int paramInt) {
    return (int)Math.ceil((Math.abs(paramInt) * this.MILLISECONDS_PER_PX));
  }
  
  @Nullable
  public PointF computeScrollVectorForPosition(int paramInt) {
    RecyclerView$LayoutManager recyclerView$LayoutManager = getLayoutManager();
    if (recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider)
      return ((RecyclerView$SmoothScroller$ScrollVectorProvider)recyclerView$LayoutManager).computeScrollVectorForPosition(paramInt); 
    Log.w("LinearSmoothScroller", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView$SmoothScroller$ScrollVectorProvider.class.getCanonicalName());
    return null;
  }
  
  protected int getHorizontalSnapPreference() {
    return (this.mTargetVector == null || this.mTargetVector.x == 0.0F) ? 0 : ((this.mTargetVector.x > 0.0F) ? 1 : -1);
  }
  
  public int getVerticalSnapPreference() {
    return (this.mTargetVector == null || this.mTargetVector.y == 0.0F) ? 0 : ((this.mTargetVector.y > 0.0F) ? 1 : -1);
  }
  
  protected void onSeekTargetStep(int paramInt1, int paramInt2, RecyclerView$State paramRecyclerView$State, RecyclerView$SmoothScroller$Action paramRecyclerView$SmoothScroller$Action) {
    if (getChildCount() == 0) {
      stop();
      return;
    } 
    this.mInterimTargetDx = clampApplyScroll(this.mInterimTargetDx, paramInt1);
    this.mInterimTargetDy = clampApplyScroll(this.mInterimTargetDy, paramInt2);
    if (this.mInterimTargetDx == 0 && this.mInterimTargetDy == 0) {
      updateActionForInterimTarget(paramRecyclerView$SmoothScroller$Action);
      return;
    } 
  }
  
  protected void onStart() {}
  
  protected void onStop() {
    this.mInterimTargetDy = 0;
    this.mInterimTargetDx = 0;
    this.mTargetVector = null;
  }
  
  protected void onTargetFound(View paramView, RecyclerView$State paramRecyclerView$State, RecyclerView$SmoothScroller$Action paramRecyclerView$SmoothScroller$Action) {
    int i = calculateDxToMakeVisible(paramView, getHorizontalSnapPreference());
    int j = calculateDyToMakeVisible(paramView, getVerticalSnapPreference());
    int k = calculateTimeForDeceleration((int)Math.sqrt((i * i + j * j)));
    if (k > 0)
      paramRecyclerView$SmoothScroller$Action.update(-i, -j, k, (Interpolator)this.mDecelerateInterpolator); 
  }
  
  protected void updateActionForInterimTarget(RecyclerView$SmoothScroller$Action paramRecyclerView$SmoothScroller$Action) {
    PointF pointF = computeScrollVectorForPosition(getTargetPosition());
    if (pointF == null || (pointF.x == 0.0F && pointF.y == 0.0F)) {
      paramRecyclerView$SmoothScroller$Action.jumpTo(getTargetPosition());
      stop();
      return;
    } 
    normalize(pointF);
    this.mTargetVector = pointF;
    this.mInterimTargetDx = (int)(pointF.x * 10000.0F);
    this.mInterimTargetDy = (int)(pointF.y * 10000.0F);
    int i = calculateTimeForScrolling(10000);
    paramRecyclerView$SmoothScroller$Action.update((int)(this.mInterimTargetDx * 1.2F), (int)(this.mInterimTargetDy * 1.2F), (int)(i * 1.2F), (Interpolator)this.mLinearInterpolator);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearSmoothScroller.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */