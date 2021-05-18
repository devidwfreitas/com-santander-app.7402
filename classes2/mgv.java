import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class mgv extends RecyclerView.ItemDecoration {
  private int a;
  
  private int b;
  
  private boolean c = false;
  
  public mgv(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    int i = (int)((paramRecyclerView.getWidth() - this.a * (this.b - 1)) / this.b);
    i = paramRecyclerView.getWidth() / this.b - i;
    int j = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewAdapterPosition();
    if (j < this.b) {
      paramRect.top = 0;
    } else {
      paramRect.top = this.a;
    } 
    if (j % this.b == 0) {
      paramRect.left = 0;
      paramRect.right = i;
      this.c = true;
    } else if ((j + 1) % this.b == 0) {
      this.c = false;
      paramRect.right = 0;
      paramRect.left = i;
    } else if (this.c) {
      this.c = false;
      paramRect.left = this.a - i;
      if ((j + 2) % this.b == 0) {
        paramRect.right = this.a - i;
      } else {
        paramRect.right = this.a / 2;
      } 
    } else if ((j + 2) % this.b == 0) {
      this.c = false;
      paramRect.left = this.a / 2;
      paramRect.right = this.a - i;
    } else {
      this.c = false;
      paramRect.left = this.a / 2;
      paramRect.right = this.a / 2;
    } 
    paramRect.bottom = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */