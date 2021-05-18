import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.bartoszlipinski.recyclerviewheader2.RecyclerViewHeader;

public class bfe extends RecyclerView.ItemDecoration {
  private int b;
  
  private int c;
  
  private int d;
  
  public bfe(RecyclerViewHeader paramRecyclerViewHeader) {
    this.d = RecyclerViewHeader.c(paramRecyclerViewHeader).a();
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
  }
  
  public void b(int paramInt) {
    this.b = paramInt;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    boolean bool1;
    boolean bool2;
    byte b = 0;
    super.getItemOffsets(paramRect, paramView, paramRecyclerView, paramState);
    if (paramRecyclerView.getChildLayoutPosition(paramView) < this.d) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool1 && RecyclerViewHeader.d(this.a)) {
      bool2 = this.b;
    } else {
      bool2 = false;
    } 
    int i = b;
    if (bool1) {
      i = b;
      if (!RecyclerViewHeader.d(this.a))
        i = this.c; 
    } 
    if (RecyclerViewHeader.c(this.a).c()) {
      paramRect.bottom = bool2;
      paramRect.right = i;
      return;
    } 
    paramRect.top = bool2;
    paramRect.left = i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */