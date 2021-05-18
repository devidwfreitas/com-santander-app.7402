package android.support.v7.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Interpolator;

class SnapHelper$2 extends LinearSmoothScroller {
  SnapHelper$2(Context paramContext) {
    super(paramContext);
  }
  
  protected float calculateSpeedPerPixel(DisplayMetrics paramDisplayMetrics) {
    return 100.0F / paramDisplayMetrics.densityDpi;
  }
  
  protected void onTargetFound(View paramView, RecyclerView$State paramRecyclerView$State, RecyclerView$SmoothScroller$Action paramRecyclerView$SmoothScroller$Action) {
    int[] arrayOfInt = SnapHelper.this.calculateDistanceToFinalSnap(SnapHelper.this.mRecyclerView.getLayoutManager(), paramView);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(j)));
    if (k > 0)
      paramRecyclerView$SmoothScroller$Action.update(i, j, k, (Interpolator)this.mDecelerateInterpolator); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SnapHelper$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */