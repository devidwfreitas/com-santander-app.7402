package android.support.v7.widget;

import android.graphics.Rect;
import android.view.View;

public abstract class OrientationHelper {
  public static final int HORIZONTAL = 0;
  
  private static final int INVALID_SIZE = -2147483648;
  
  public static final int VERTICAL = 1;
  
  private int mLastTotalSpace = Integer.MIN_VALUE;
  
  protected final RecyclerView$LayoutManager mLayoutManager;
  
  final Rect mTmpRect = new Rect();
  
  private OrientationHelper(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    this.mLayoutManager = paramRecyclerView$LayoutManager;
  }
  
  public static OrientationHelper createHorizontalHelper(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return new OrientationHelper$1(paramRecyclerView$LayoutManager);
  }
  
  public static OrientationHelper createOrientationHelper(RecyclerView$LayoutManager paramRecyclerView$LayoutManager, int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("invalid orientation");
      case 0:
        return createHorizontalHelper(paramRecyclerView$LayoutManager);
      case 1:
        break;
    } 
    return createVerticalHelper(paramRecyclerView$LayoutManager);
  }
  
  public static OrientationHelper createVerticalHelper(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    return new OrientationHelper$2(paramRecyclerView$LayoutManager);
  }
  
  public abstract int getDecoratedEnd(View paramView);
  
  public abstract int getDecoratedMeasurement(View paramView);
  
  public abstract int getDecoratedMeasurementInOther(View paramView);
  
  public abstract int getDecoratedStart(View paramView);
  
  public abstract int getEnd();
  
  public abstract int getEndAfterPadding();
  
  public abstract int getEndPadding();
  
  public abstract int getMode();
  
  public abstract int getModeInOther();
  
  public abstract int getStartAfterPadding();
  
  public abstract int getTotalSpace();
  
  public int getTotalSpaceChange() {
    return (Integer.MIN_VALUE == this.mLastTotalSpace) ? 0 : (getTotalSpace() - this.mLastTotalSpace);
  }
  
  public abstract int getTransformedEndWithDecoration(View paramView);
  
  public abstract int getTransformedStartWithDecoration(View paramView);
  
  public abstract void offsetChild(View paramView, int paramInt);
  
  public abstract void offsetChildren(int paramInt);
  
  public void onLayoutComplete() {
    this.mLastTotalSpace = getTotalSpace();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\OrientationHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */