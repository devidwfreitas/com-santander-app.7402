package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public abstract class SnapHelper extends RecyclerView$OnFlingListener {
  static final float MILLISECONDS_PER_INCH = 100.0F;
  
  private Scroller mGravityScroller;
  
  RecyclerView mRecyclerView;
  
  private final RecyclerView$OnScrollListener mScrollListener = new SnapHelper$1(this);
  
  private void destroyCallbacks() {
    this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
    this.mRecyclerView.setOnFlingListener((RecyclerView$OnFlingListener)null);
  }
  
  private void setupCallbacks() {
    if (this.mRecyclerView.getOnFlingListener() != null)
      throw new IllegalStateException("An instance of OnFlingListener already set."); 
    this.mRecyclerView.addOnScrollListener(this.mScrollListener);
    this.mRecyclerView.setOnFlingListener(this);
  }
  
  private boolean snapFromFling(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager, int paramInt1, int paramInt2) {
    if (paramRecyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
      LinearSmoothScroller linearSmoothScroller = createSnapScroller(paramRecyclerView$LayoutManager);
      if (linearSmoothScroller != null) {
        paramInt1 = findTargetSnapPosition(paramRecyclerView$LayoutManager, paramInt1, paramInt2);
        if (paramInt1 != -1) {
          linearSmoothScroller.setTargetPosition(paramInt1);
          paramRecyclerView$LayoutManager.startSmoothScroll(linearSmoothScroller);
          return true;
        } 
      } 
    } 
    return false;
  }
  
  public void attachToRecyclerView(@Nullable RecyclerView paramRecyclerView) {
    if (this.mRecyclerView != paramRecyclerView) {
      if (this.mRecyclerView != null)
        destroyCallbacks(); 
      this.mRecyclerView = paramRecyclerView;
      if (this.mRecyclerView != null) {
        setupCallbacks();
        this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), (Interpolator)new DecelerateInterpolator());
        snapToTargetExistingView();
        return;
      } 
    } 
  }
  
  @Nullable
  public abstract int[] calculateDistanceToFinalSnap(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager, @NonNull View paramView);
  
  public int[] calculateScrollDistance(int paramInt1, int paramInt2) {
    this.mGravityScroller.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
    return new int[] { this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY() };
  }
  
  @Nullable
  protected LinearSmoothScroller createSnapScroller(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return !(paramRecyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) ? null : new SnapHelper$2(this, this.mRecyclerView.getContext());
  }
  
  @Nullable
  public abstract View findSnapView(RecyclerView$LayoutManager paramRecyclerView$LayoutManager);
  
  public abstract int findTargetSnapPosition(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, int paramInt1, int paramInt2);
  
  public boolean onFling(int paramInt1, int paramInt2) {
    RecyclerView$LayoutManager recyclerView$LayoutManager = this.mRecyclerView.getLayoutManager();
    if (recyclerView$LayoutManager != null && this.mRecyclerView.getAdapter() != null) {
      int i = this.mRecyclerView.getMinFlingVelocity();
      if ((Math.abs(paramInt2) > i || Math.abs(paramInt1) > i) && snapFromFling(recyclerView$LayoutManager, paramInt1, paramInt2))
        return true; 
    } 
    return false;
  }
  
  void snapToTargetExistingView() {
    if (this.mRecyclerView != null) {
      RecyclerView$LayoutManager recyclerView$LayoutManager = this.mRecyclerView.getLayoutManager();
      if (recyclerView$LayoutManager != null) {
        View view = findSnapView(recyclerView$LayoutManager);
        if (view != null) {
          int[] arrayOfInt = calculateDistanceToFinalSnap(recyclerView$LayoutManager, view);
          if (arrayOfInt[0] != 0 || arrayOfInt[1] != 0) {
            this.mRecyclerView.smoothScrollBy(arrayOfInt[0], arrayOfInt[1]);
            return;
          } 
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SnapHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */