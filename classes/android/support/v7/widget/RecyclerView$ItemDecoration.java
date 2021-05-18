package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

public abstract class RecyclerView$ItemDecoration {
  @Deprecated
  public void getItemOffsets(Rect paramRect, int paramInt, RecyclerView paramRecyclerView) {
    paramRect.set(0, 0, 0, 0);
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State) {
    getItemOffsets(paramRect, ((RecyclerView$LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition(), paramRecyclerView);
  }
  
  @Deprecated
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State) {
    onDraw(paramCanvas, paramRecyclerView);
  }
  
  @Deprecated
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State) {
    onDrawOver(paramCanvas, paramRecyclerView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ItemDecoration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */