import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.santander.app.lojaonline.presentation.LojaOnlineActivity;

public class jnq extends RecyclerView.OnScrollListener {
  private int b = -1;
  
  public jnq(LojaOnlineActivity paramLojaOnlineActivity) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    int i = ((LinearLayoutManager)paramRecyclerView.getLayoutManager()).findFirstCompletelyVisibleItemPosition();
    if (i != -1 && i != this.b && paramInt == 0) {
      this.b = i;
      LojaOnlineActivity.a(this.a, i);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */