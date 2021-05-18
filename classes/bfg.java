import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;

public class bfg {
  @NonNull
  private final RecyclerView a;
  
  private bfe b;
  
  private RecyclerView.OnScrollListener c;
  
  private RecyclerView.OnChildAttachStateChangeListener d;
  
  private bfg(@NonNull RecyclerView paramRecyclerView) {
    this.a = paramRecyclerView;
  }
  
  public static bfg a(@NonNull RecyclerView paramRecyclerView) {
    return new bfg(paramRecyclerView);
  }
  
  private void f() {
    if (!this.a.isComputingLayout())
      this.a.invalidateItemDecorations(); 
  }
  
  public final int a(boolean paramBoolean) {
    return paramBoolean ? this.a.computeVerticalScrollOffset() : this.a.computeHorizontalScrollOffset();
  }
  
  public final void a(int paramInt1, int paramInt2) {
    if (this.b != null) {
      this.b.b(paramInt1);
      this.b.a(paramInt2);
      this.a.post(new bfh(this));
    } 
  }
  
  public final void a(RecyclerView.OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener) {
    d();
    this.d = paramOnChildAttachStateChangeListener;
    this.a.addOnChildAttachStateChangeListener(this.d);
  }
  
  public final void a(RecyclerView.OnScrollListener paramOnScrollListener) {
    c();
    this.c = paramOnScrollListener;
    this.a.addOnScrollListener(this.c);
  }
  
  public final void a(bfe parambfe) {
    b();
    this.b = parambfe;
    this.a.addItemDecoration(this.b, 0);
  }
  
  public final boolean a() {
    return (this.a.getAdapter() != null && this.a.getAdapter().getItemCount() != 0);
  }
  
  public boolean a(MotionEvent paramMotionEvent) {
    return this.a.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public final int b(boolean paramBoolean) {
    return paramBoolean ? (this.a.computeVerticalScrollRange() - this.a.getHeight()) : (this.a.computeHorizontalScrollRange() - this.a.getWidth());
  }
  
  public final void b() {
    if (this.b != null) {
      this.a.removeItemDecoration(this.b);
      this.b = null;
    } 
  }
  
  public boolean b(MotionEvent paramMotionEvent) {
    return this.a.onTouchEvent(paramMotionEvent);
  }
  
  public final void c() {
    if (this.c != null) {
      this.a.removeOnScrollListener(this.c);
      this.c = null;
    } 
  }
  
  public final void d() {
    if (this.d != null) {
      this.a.removeOnChildAttachStateChangeListener(this.d);
      this.d = null;
    } 
  }
  
  public final void e() {
    b();
    c();
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */