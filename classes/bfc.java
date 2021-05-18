import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.bartoszlipinski.recyclerviewheader2.RecyclerViewHeader;

public class bfc implements RecyclerView.OnChildAttachStateChangeListener {
  public bfc(RecyclerViewHeader paramRecyclerViewHeader, RecyclerView paramRecyclerView) {}
  
  public void onChildViewAttachedToWindow(View paramView) {}
  
  public void onChildViewDetachedFromWindow(View paramView) {
    this.a.post(new bfd(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */