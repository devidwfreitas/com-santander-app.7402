import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;

public class bff {
  @Nullable
  private final LinearLayoutManager a;
  
  @Nullable
  private final GridLayoutManager b;
  
  @Nullable
  private final StaggeredGridLayoutManager c;
  
  private bff(@NonNull RecyclerView.LayoutManager paramLayoutManager) {
    Class<?> clazz = paramLayoutManager.getClass();
    if (clazz == LinearLayoutManager.class) {
      this.a = (LinearLayoutManager)paramLayoutManager;
      this.b = null;
      this.c = null;
      return;
    } 
    if (clazz == GridLayoutManager.class) {
      this.a = null;
      this.b = (GridLayoutManager)paramLayoutManager;
      this.c = null;
      return;
    } 
    throw new IllegalArgumentException("Currently RecyclerViewHeader supports only LinearLayoutManager and GridLayoutManager.");
  }
  
  public static bff a(@NonNull RecyclerView.LayoutManager paramLayoutManager) {
    return new bff(paramLayoutManager);
  }
  
  public final int a() {
    return (this.a != null) ? 1 : ((this.b != null) ? this.b.getSpanCount() : 0);
  }
  
  public final boolean b() {
    return (this.a != null) ? (!(this.a.findFirstVisibleItemPosition() != 0)) : ((this.b != null) ? (!(this.b.findFirstVisibleItemPosition() != 0)) : false);
  }
  
  public final boolean c() {
    return (this.a != null) ? this.a.getReverseLayout() : ((this.b != null) ? this.b.getReverseLayout() : false);
  }
  
  public final boolean d() {
    return (this.a != null) ? (!(this.a.getOrientation() != 1)) : ((this.b != null) ? (!(this.b.getOrientation() != 1)) : false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */