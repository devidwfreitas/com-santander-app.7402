package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Gingerbread implements ItemTouchUIUtil {
  private void draw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2) {
    paramCanvas.save();
    paramCanvas.translate(paramFloat1, paramFloat2);
    paramRecyclerView.drawChild(paramCanvas, paramView, 0L);
    paramCanvas.restore();
  }
  
  public void clearView(View paramView) {
    paramView.setVisibility(0);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    if (paramInt != 2)
      draw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2); 
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    if (paramInt == 2)
      draw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2); 
  }
  
  public void onSelected(View paramView) {
    paramView.setVisibility(4);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchUIUtilImpl$Gingerbread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */