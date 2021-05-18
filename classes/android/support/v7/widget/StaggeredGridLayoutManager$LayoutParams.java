package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class StaggeredGridLayoutManager$LayoutParams extends RecyclerView$LayoutParams {
  public static final int INVALID_SPAN_ID = -1;
  
  boolean mFullSpan;
  
  StaggeredGridLayoutManager$Span mSpan;
  
  public StaggeredGridLayoutManager$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public StaggeredGridLayoutManager$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public StaggeredGridLayoutManager$LayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    super(paramRecyclerView$LayoutParams);
  }
  
  public StaggeredGridLayoutManager$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public StaggeredGridLayoutManager$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  public final int getSpanIndex() {
    return (this.mSpan == null) ? -1 : this.mSpan.mIndex;
  }
  
  public boolean isFullSpan() {
    return this.mFullSpan;
  }
  
  public void setFullSpan(boolean paramBoolean) {
    this.mFullSpan = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */