package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public class PagerSnapHelper extends SnapHelper {
  private static final int MAX_SCROLL_ON_FLING_DURATION = 100;
  
  @Nullable
  private OrientationHelper mHorizontalHelper;
  
  @Nullable
  private OrientationHelper mVerticalHelper;
  
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
  
  @Nullable
  private View findStartView(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, OrientationHelper paramOrientationHelper) {
    View view1 = null;
    View view2 = null;
    int i = paramRecyclerView$LayoutManager.getChildCount();
    if (i != 0) {
      int j = Integer.MAX_VALUE;
      int k = 0;
      while (true) {
        view2 = view1;
        if (k < i) {
          view2 = paramRecyclerView$LayoutManager.getChildAt(k);
          int m = paramOrientationHelper.getDecoratedStart(view2);
          if (m < j) {
            view1 = view2;
            j = m;
          } 
          k++;
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
  
  @Nullable
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
  
  protected LinearSmoothScroller createSnapScroller(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return !(paramRecyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) ? null : new PagerSnapHelper$1(this, this.mRecyclerView.getContext());
  }
  
  @Nullable
  public View findSnapView(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return paramRecyclerView$LayoutManager.canScrollVertically() ? findCenterView(paramRecyclerView$LayoutManager, getVerticalHelper(paramRecyclerView$LayoutManager)) : (paramRecyclerView$LayoutManager.canScrollHorizontally() ? findCenterView(paramRecyclerView$LayoutManager, getHorizontalHelper(paramRecyclerView$LayoutManager)) : null);
  }
  
  public int findTargetSnapPosition(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_1
    //   4: invokevirtual getItemCount : ()I
    //   7: istore #6
    //   9: iload #6
    //   11: ifne -> 16
    //   14: iconst_m1
    //   15: ireturn
    //   16: aconst_null
    //   17: astore #7
    //   19: aload_1
    //   20: invokevirtual canScrollVertically : ()Z
    //   23: ifeq -> 137
    //   26: aload_0
    //   27: aload_1
    //   28: aload_0
    //   29: aload_1
    //   30: invokespecial getVerticalHelper : (Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    //   33: invokespecial findStartView : (Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    //   36: astore #7
    //   38: aload #7
    //   40: ifnull -> 14
    //   43: aload_1
    //   44: aload #7
    //   46: invokevirtual getPosition : (Landroid/view/View;)I
    //   49: istore #5
    //   51: iload #5
    //   53: iconst_m1
    //   54: if_icmpeq -> 14
    //   57: aload_1
    //   58: invokevirtual canScrollHorizontally : ()Z
    //   61: ifeq -> 164
    //   64: iload_2
    //   65: ifle -> 159
    //   68: iconst_1
    //   69: istore_2
    //   70: iload #4
    //   72: istore_3
    //   73: aload_1
    //   74: instanceof android/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider
    //   77: ifeq -> 124
    //   80: aload_1
    //   81: checkcast android/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider
    //   84: iload #6
    //   86: iconst_1
    //   87: isub
    //   88: invokeinterface computeScrollVectorForPosition : (I)Landroid/graphics/PointF;
    //   93: astore_1
    //   94: iload #4
    //   96: istore_3
    //   97: aload_1
    //   98: ifnull -> 124
    //   101: aload_1
    //   102: getfield x : F
    //   105: fconst_0
    //   106: fcmpg
    //   107: iflt -> 122
    //   110: iload #4
    //   112: istore_3
    //   113: aload_1
    //   114: getfield y : F
    //   117: fconst_0
    //   118: fcmpg
    //   119: ifge -> 124
    //   122: iconst_1
    //   123: istore_3
    //   124: iload_3
    //   125: ifeq -> 181
    //   128: iload_2
    //   129: ifeq -> 178
    //   132: iload #5
    //   134: iconst_1
    //   135: isub
    //   136: ireturn
    //   137: aload_1
    //   138: invokevirtual canScrollHorizontally : ()Z
    //   141: ifeq -> 38
    //   144: aload_0
    //   145: aload_1
    //   146: aload_0
    //   147: aload_1
    //   148: invokespecial getHorizontalHelper : (Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    //   151: invokespecial findStartView : (Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    //   154: astore #7
    //   156: goto -> 38
    //   159: iconst_0
    //   160: istore_2
    //   161: goto -> 70
    //   164: iload_3
    //   165: ifle -> 173
    //   168: iconst_1
    //   169: istore_2
    //   170: goto -> 70
    //   173: iconst_0
    //   174: istore_2
    //   175: goto -> 70
    //   178: iload #5
    //   180: ireturn
    //   181: iload_2
    //   182: ifeq -> 190
    //   185: iload #5
    //   187: iconst_1
    //   188: iadd
    //   189: ireturn
    //   190: iload #5
    //   192: ireturn
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PagerSnapHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */