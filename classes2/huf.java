import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class huf extends RecyclerView.ItemDecoration {
  private ColorDrawable a = new ColorDrawable(14211288);
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    int j = paramRecyclerView.getWidth();
    hue hue = (hue)paramRecyclerView.getAdapter();
    int k = paramRecyclerView.getChildCount();
    for (int i = 0; i < k; i++) {
      View view = paramRecyclerView.getChildAt(i);
      RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams)view.getLayoutParams();
      int m = view.getBottom();
      m = layoutParams.bottomMargin + m;
      int n = this.a.getIntrinsicHeight() + m;
      if (hue.a()) {
        this.a.setBounds(0, m, j, n);
        this.a.draw(paramCanvas);
      } else if (i == k - 1) {
        continue;
      } 
      this.a.setBounds(0, m, j, n);
      this.a.draw(paramCanvas);
      continue;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\huf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */