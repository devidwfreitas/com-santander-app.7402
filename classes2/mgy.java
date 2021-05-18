import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.TypedValue;
import android.view.View;

public class mgy extends RecyclerView.ItemDecoration {
  private int a;
  
  private int b;
  
  private boolean c;
  
  private boolean d;
  
  public mgy(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2) {
    this.a = Math.round(TypedValue.applyDimension(1, paramInt1, paramContext.getResources().getDisplayMetrics()));
    this.b = Math.round(TypedValue.applyDimension(1, paramInt2, paramContext.getResources().getDisplayMetrics()));
    this.c = paramBoolean1;
    this.d = paramBoolean2;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    if (paramRecyclerView.getChildAdapterPosition(paramView) == 0 && this.c)
      paramRect.top = this.a; 
    if (paramRecyclerView.getChildAdapterPosition(paramView) != paramRecyclerView.getAdapter().getItemCount() - 1 || this.d)
      paramRect.bottom = this.a; 
    paramRect.left = this.b;
    paramRect.right = this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */