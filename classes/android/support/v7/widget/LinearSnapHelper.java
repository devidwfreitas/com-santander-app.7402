package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public class LinearSnapHelper extends SnapHelper {
  private static final float INVALID_DISTANCE = 1.0F;
  
  @Nullable
  private OrientationHelper mHorizontalHelper;
  
  @Nullable
  private OrientationHelper mVerticalHelper;
  
  private float computeDistancePerChild(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, OrientationHelper paramOrientationHelper) {
    View view1 = null;
    int i = Integer.MAX_VALUE;
    int m = paramRecyclerView$LayoutManager.getChildCount();
    if (m == 0)
      return 1.0F; 
    int j = 0;
    View view2 = null;
    int k = Integer.MIN_VALUE;
    while (true) {
      if (j < m) {
        View view = paramRecyclerView$LayoutManager.getChildAt(j);
        int i1 = paramRecyclerView$LayoutManager.getPosition(view);
        if (i1 != -1) {
          int i2 = i;
          if (i1 < i) {
            i2 = i1;
            view2 = view;
          } 
          if (i1 > k) {
            k = i1;
            i = i2;
            view1 = view;
          } else {
            i = i2;
          } 
        } 
        j++;
        continue;
      } 
      if (view2 == null || view1 == null)
        return 1.0F; 
      int n = Math.min(paramOrientationHelper.getDecoratedStart(view2), paramOrientationHelper.getDecoratedStart(view1));
      n = Math.max(paramOrientationHelper.getDecoratedEnd(view2), paramOrientationHelper.getDecoratedEnd(view1)) - n;
      return (n == 0) ? 1.0F : (n * 1.0F / (k - i + 1));
    } 
  }
  
  private int distanceToCenter(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager, @NonNull View paramView, OrientationHelper paramOrientationHelper) {
    int j = paramOrientationHelper.getDecoratedStart(paramView);
    int k = paramOrientationHelper.getDecoratedMeasurement(paramView) / 2;
    if (paramRecyclerView$LayoutManager.getClipToPadding()) {
      int m = paramOrientationHelper.getStartAfterPadding() + paramOrientationHelper.getTotalSpace() / 2;
      return k + j - m;
    } 
    int i = paramOrientationHelper.getEnd() / 2;
    return k + j - i;
  }
  
  private int estimateNextPositionDiffForFling(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, OrientationHelper paramOrientationHelper, int paramInt1, int paramInt2) {
    int[] arrayOfInt = calculateScrollDistance(paramInt1, paramInt2);
    float f = computeDistancePerChild(paramRecyclerView$LayoutManager, paramOrientationHelper);
    if (f <= 0.0F)
      return 0; 
    if (Math.abs(arrayOfInt[0]) > Math.abs(arrayOfInt[1])) {
      paramInt1 = arrayOfInt[0];
    } else {
      paramInt1 = arrayOfInt[1];
    } 
    return (paramInt1 > 0) ? (int)Math.floor((paramInt1 / f)) : (int)Math.ceil((paramInt1 / f));
  }
  
  @Nullable
  private View findCenterView(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, OrientationHelper paramOrientationHelper) {
    View view1 = null;
    View view2 = null;
    int i = paramRecyclerView$LayoutManager.getChildCount();
    if (i != 0) {
      int k;
      if (paramRecyclerView$LayoutManager.getClipToPadding()) {
        k = paramOrientationHelper.getStartAfterPadding() + paramOrientationHelper.getTotalSpace() / 2;
      } else {
        k = paramOrientationHelper.getEnd() / 2;
      } 
      int j = Integer.MAX_VALUE;
      int m = 0;
      while (true) {
        view2 = view1;
        if (m < i) {
          view2 = paramRecyclerView$LayoutManager.getChildAt(m);
          int n = Math.abs(paramOrientationHelper.getDecoratedStart(view2) + paramOrientationHelper.getDecoratedMeasurement(view2) / 2 - k);
          if (n < j) {
            view1 = view2;
            j = n;
          } 
          m++;
          continue;
        } 
        return view2;
      } 
    } 
    return view2;
  }
  
  @NonNull
  private OrientationHelper getHorizontalHelper(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != paramRecyclerView$LayoutManager)
      this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(paramRecyclerView$LayoutManager); 
    return this.mHorizontalHelper;
  }
  
  @NonNull
  private OrientationHelper getVerticalHelper(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != paramRecyclerView$LayoutManager)
      this.mVerticalHelper = OrientationHelper.createVerticalHelper(paramRecyclerView$LayoutManager); 
    return this.mVerticalHelper;
  }
  
  public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView$LayoutManager paramRecyclerView$LayoutManager, @NonNull View paramView) {
    int[] arrayOfInt = new int[2];
    if (paramRecyclerView$LayoutManager.canScrollHorizontally()) {
      arrayOfInt[0] = distanceToCenter(paramRecyclerView$LayoutManager, paramView, getHorizontalHelper(paramRecyclerView$LayoutManager));
    } else {
      arrayOfInt[0] = 0;
    } 
    if (paramRecyclerView$LayoutManager.canScrollVertically()) {
      arrayOfInt[1] = distanceToCenter(paramRecyclerView$LayoutManager, paramView, getVerticalHelper(paramRecyclerView$LayoutManager));
      return arrayOfInt;
    } 
    arrayOfInt[1] = 0;
    return arrayOfInt;
  }
  
  public View findSnapView(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return paramRecyclerView$LayoutManager.canScrollVertically() ? findCenterView(paramRecyclerView$LayoutManager, getVerticalHelper(paramRecyclerView$LayoutManager)) : (paramRecyclerView$LayoutManager.canScrollHorizontally() ? findCenterView(paramRecyclerView$LayoutManager, getHorizontalHelper(paramRecyclerView$LayoutManager)) : null);
  }
  
  public int findTargetSnapPosition(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, int paramInt1, int paramInt2) {
    if (!(paramRecyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider))
      return -1; 
    int i = paramRecyclerView$LayoutManager.getItemCount();
    if (i == 0)
      return -1; 
    View view = findSnapView(paramRecyclerView$LayoutManager);
    if (view == null)
      return -1; 
    int j = paramRecyclerView$LayoutManager.getPosition(view);
    if (j == -1)
      return -1; 
    PointF pointF = ((RecyclerView$SmoothScroller$ScrollVectorProvider)paramRecyclerView$LayoutManager).computeScrollVectorForPosition(i - 1);
    if (pointF == null)
      return -1; 
    if (paramRecyclerView$LayoutManager.canScrollHorizontally()) {
      int k = estimateNextPositionDiffForFling(paramRecyclerView$LayoutManager, getHorizontalHelper(paramRecyclerView$LayoutManager), paramInt1, 0);
      paramInt1 = k;
      if (pointF.x < 0.0F)
        paramInt1 = -k; 
    } else {
      paramInt1 = 0;
    } 
    if (paramRecyclerView$LayoutManager.canScrollVertically()) {
      int k = estimateNextPositionDiffForFling(paramRecyclerView$LayoutManager, getVerticalHelper(paramRecyclerView$LayoutManager), 0, paramInt2);
      paramInt2 = k;
      if (pointF.y < 0.0F)
        paramInt2 = -k; 
    } else {
      paramInt2 = 0;
    } 
    if (!paramRecyclerView$LayoutManager.canScrollVertically())
      paramInt2 = paramInt1; 
    if (paramInt2 == 0)
      return -1; 
    paramInt2 = j + paramInt2;
    paramInt1 = paramInt2;
    if (paramInt2 < 0)
      paramInt1 = 0; 
    paramInt2 = paramInt1;
    return (paramInt1 >= i) ? (i - 1) : paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearSnapHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */