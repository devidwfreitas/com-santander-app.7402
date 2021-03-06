package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class GridLayoutManager$LayoutParams extends RecyclerView$LayoutParams {
  public static final int INVALID_SPAN_ID = -1;
  
  int mSpanIndex = -1;
  
  int mSpanSize = 0;
  
  public GridLayoutManager$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public GridLayoutManager$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public GridLayoutManager$LayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    super(paramRecyclerView$LayoutParams);
  }
  
  public GridLayoutManager$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public GridLayoutManager$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  public int getSpanIndex() {
    return this.mSpanIndex;
  }
  
  public int getSpanSize() {
    return this.mSpanSize;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayoutManager$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */