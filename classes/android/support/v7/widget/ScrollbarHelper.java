package android.support.v7.widget;

import android.view.View;

class ScrollbarHelper {
  static int computeScrollExtent(RecyclerView$State paramRecyclerView$State, OrientationHelper paramOrientationHelper, View paramView1, View paramView2, RecyclerView$LayoutManager paramRecyclerView$LayoutManager, boolean paramBoolean) {
    if (paramRecyclerView$LayoutManager.getChildCount() == 0 || paramRecyclerView$State.getItemCount() == 0 || paramView1 == null || paramView2 == null)
      return 0; 
    if (!paramBoolean)
      return Math.abs(paramRecyclerView$LayoutManager.getPosition(paramView1) - paramRecyclerView$LayoutManager.getPosition(paramView2)) + 1; 
    int i = paramOrientationHelper.getDecoratedEnd(paramView2);
    int j = paramOrientationHelper.getDecoratedStart(paramView1);
    return Math.min(paramOrientationHelper.getTotalSpace(), i - j);
  }
  
  static int computeScrollOffset(RecyclerView$State paramRecyclerView$State, OrientationHelper paramOrientationHelper, View paramView1, View paramView2, RecyclerView$LayoutManager paramRecyclerView$LayoutManager, boolean paramBoolean1, boolean paramBoolean2) {
    int i = 0;
    int j = i;
    if (paramRecyclerView$LayoutManager.getChildCount() != 0) {
      j = i;
      if (paramRecyclerView$State.getItemCount() != 0) {
        j = i;
        if (paramView1 != null) {
          if (paramView2 == null)
            return i; 
        } else {
          return j;
        } 
      } else {
        return j;
      } 
    } else {
      return j;
    } 
    i = Math.min(paramRecyclerView$LayoutManager.getPosition(paramView1), paramRecyclerView$LayoutManager.getPosition(paramView2));
    j = Math.max(paramRecyclerView$LayoutManager.getPosition(paramView1), paramRecyclerView$LayoutManager.getPosition(paramView2));
    if (paramBoolean2) {
      i = Math.max(0, paramRecyclerView$State.getItemCount() - j - 1);
    } else {
      i = Math.max(0, i);
    } 
    j = i;
    if (paramBoolean1) {
      j = Math.abs(paramOrientationHelper.getDecoratedEnd(paramView2) - paramOrientationHelper.getDecoratedStart(paramView1));
      int k = Math.abs(paramRecyclerView$LayoutManager.getPosition(paramView1) - paramRecyclerView$LayoutManager.getPosition(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (paramOrientationHelper.getStartAfterPadding() - paramOrientationHelper.getDecoratedStart(paramView1)));
    } 
    return j;
  }
  
  static int computeScrollRange(RecyclerView$State paramRecyclerView$State, OrientationHelper paramOrientationHelper, View paramView1, View paramView2, RecyclerView$LayoutManager paramRecyclerView$LayoutManager, boolean paramBoolean) {
    if (paramRecyclerView$LayoutManager.getChildCount() == 0 || paramRecyclerView$State.getItemCount() == 0 || paramView1 == null || paramView2 == null)
      return 0; 
    if (!paramBoolean)
      return paramRecyclerView$State.getItemCount(); 
    int i = paramOrientationHelper.getDecoratedEnd(paramView2);
    int j = paramOrientationHelper.getDecoratedStart(paramView1);
    int k = Math.abs(paramRecyclerView$LayoutManager.getPosition(paramView1) - paramRecyclerView$LayoutManager.getPosition(paramView2));
    return (int)((i - j) / (k + 1) * paramRecyclerView$State.getItemCount());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollbarHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */