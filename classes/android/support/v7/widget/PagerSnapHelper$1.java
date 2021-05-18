package android.support.v7.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Interpolator;

class PagerSnapHelper$1 extends LinearSmoothScroller {
  PagerSnapHelper$1(Context paramContext) {
    super(paramContext);
  }
  
  protected float calculateSpeedPerPixel(DisplayMetrics paramDisplayMetrics) {
    return 100.0F / paramDisplayMetrics.densityDpi;
  }
  
  protected int calculateTimeForScrolling(int paramInt) {
    return Math.min(100, super.calculateTimeForScrolling(paramInt));
  }
  
  protected void onTargetFound(View paramView, RecyclerView$State paramRecyclerView$State, RecyclerView$SmoothScroller$Action paramRecyclerView$SmoothScroller$Action) {
    int[] arrayOfInt = PagerSnapHelper.this.calculateDistanceToFinalSnap(PagerSnapHelper.this.mRecyclerView.getLayoutManager(), paramView);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(j)));
    if (k > 0)
      paramRecyclerView$SmoothScroller$Action.update(i, j, k, (Interpolator)this.mDecelerateInterpolator); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PagerSnapHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */