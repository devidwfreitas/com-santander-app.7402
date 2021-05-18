import android.support.v7.widget.RecyclerView;
import android.util.Log;
import com.santander.app.components.view.dropuplist.ListDropUp;

public class gtr extends RecyclerView.OnScrollListener {
  private int b;
  
  public gtr(ListDropUp paramListDropUp) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    paramInt1 = ListDropUp.g(this.a).findFirstVisibleItemPosition();
    if (paramInt1 != 0) {
      ListDropUp.b(this.a).setVisibility(8);
    } else {
      ListDropUp.b(this.a).setVisibility(0);
    } 
    if (this.b < paramInt1)
      Log.i("SCROLLING DOWN", "TRUE"); 
    this.b = paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */