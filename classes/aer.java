import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

public abstract class aer extends RecyclerView.OnScrollListener {
  RecyclerView.LayoutManager a;
  
  private int b = 7;
  
  private int c = 0;
  
  private boolean d = true;
  
  private boolean e;
  
  public aer(LinearLayoutManager paramLinearLayoutManager) {
    this.a = (RecyclerView.LayoutManager)paramLinearLayoutManager;
  }
  
  public void a() {
    this.c = 0;
    this.d = true;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public abstract void b();
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    if (paramInt2 > 0) {
      paramInt1 = ((LinearLayoutManager)this.a).findFirstVisibleItemPosition();
      paramInt2 = this.a.getItemCount();
      if (this.d && paramInt2 > this.c) {
        this.d = false;
        this.c = paramInt2;
      } 
      if (!this.d && this.e && paramInt1 + this.b >= paramInt2) {
        b();
        this.d = true;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */