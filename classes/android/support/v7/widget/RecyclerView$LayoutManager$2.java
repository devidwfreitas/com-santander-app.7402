package android.support.v7.widget;

import android.view.View;

class RecyclerView$LayoutManager$2 implements ViewBoundsCheck$Callback {
  public View getChildAt(int paramInt) {
    return RecyclerView$LayoutManager.this.getChildAt(paramInt);
  }
  
  public int getChildCount() {
    return RecyclerView$LayoutManager.this.getChildCount();
  }
  
  public int getChildEnd(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView$LayoutManager.this.getDecoratedBottom(paramView);
    return recyclerView$LayoutParams.bottomMargin + i;
  }
  
  public int getChildStart(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return RecyclerView$LayoutManager.this.getDecoratedTop(paramView) - recyclerView$LayoutParams.topMargin;
  }
  
  public View getParent() {
    return (View)RecyclerView$LayoutManager.this.mRecyclerView;
  }
  
  public int getParentEnd() {
    return RecyclerView$LayoutManager.this.getHeight() - RecyclerView$LayoutManager.this.getPaddingBottom();
  }
  
  public int getParentStart() {
    return RecyclerView$LayoutManager.this.getPaddingTop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$LayoutManager$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */