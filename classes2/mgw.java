import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class mgw extends RecyclerView.ItemDecoration {
  private Drawable a;
  
  public mgw(Context paramContext, @NonNull mgx parammgx) {
    this.a = paramContext.getResources().getDrawable(parammgx.getDrawableRes());
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    if (this.a != null) {
      int j = paramRecyclerView.getPaddingLeft();
      int k = paramRecyclerView.getWidth();
      int m = paramRecyclerView.getPaddingRight();
      int n = paramRecyclerView.getChildCount();
      int i;
      for (i = 0; i < n; i++) {
        View view = paramRecyclerView.getChildAt(i);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams)view.getLayoutParams();
        int i1 = view.getBottom();
        i1 = layoutParams.bottomMargin + i1;
        int i2 = this.a.getIntrinsicHeight();
        this.a.setBounds(j, i1, k - m, i2 + i1);
        this.a.draw(paramCanvas);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */