import android.content.Context;
import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public interface mdt<T, VH extends android.support.v7.widget.RecyclerView.ViewHolder> extends mds<T> {
  VH a(ViewGroup paramViewGroup);
  
  View a(Context paramContext);
  
  View a(Context paramContext, ViewGroup paramViewGroup);
  
  void a(VH paramVH);
  
  void a(VH paramVH, List<Object> paramList);
  
  boolean a(int paramInt);
  
  @IdRes
  int b();
  
  T b(Object paramObject);
  
  void b(VH paramVH);
  
  @LayoutRes
  int c();
  
  void c(VH paramVH);
  
  boolean d(VH paramVH);
  
  boolean e();
  
  T h(boolean paramBoolean);
  
  T i(boolean paramBoolean);
  
  T j(boolean paramBoolean);
  
  Object k();
  
  boolean l();
  
  boolean m();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */