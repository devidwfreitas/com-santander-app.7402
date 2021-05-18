import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public abstract class amr<T, VH extends amu> extends RecyclerView.Adapter<VH> {
  private final List<T> a;
  
  private final List<T> b;
  
  private List<T> c;
  
  private amh d;
  
  private RecyclerView.AdapterDataObserver e = new ams(this);
  
  public amr(@NonNull List<T> paramList) {
    this.b = paramList;
    this.a = new ArrayList<T>(this.b);
    registerAdapterDataObserver(this.e);
  }
  
  private VH a(ViewGroup paramViewGroup, int paramInt) {
    amu amu = (amu)createViewHolder(paramViewGroup, getItemViewType(paramInt));
    onBindViewHolder(amu, paramInt);
    amu.itemView.setClickable(false);
    return (VH)amu;
  }
  
  private void b() {
    this.a.clear();
    for (int i = 0; i < this.b.size(); i++) {
      T t = this.b.get(i);
      if (t != this.d.c())
        this.a.add(t); 
    } 
    c();
    notifyDataSetChanged();
  }
  
  private void c() {
    this.c = new ArrayList<T>(this.b);
  }
  
  private boolean d() {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Ljava/util/List;
    //   4: ifnull -> 28
    //   7: aload_0
    //   8: getfield b : Ljava/util/List;
    //   11: invokeinterface size : ()I
    //   16: aload_0
    //   17: getfield c : Ljava/util/List;
    //   20: invokeinterface size : ()I
    //   25: if_icmpeq -> 30
    //   28: iconst_0
    //   29: ireturn
    //   30: aload_0
    //   31: getfield b : Ljava/util/List;
    //   34: invokeinterface iterator : ()Ljava/util/Iterator;
    //   39: astore_1
    //   40: aload_1
    //   41: invokeinterface hasNext : ()Z
    //   46: ifeq -> 71
    //   49: aload_1
    //   50: invokeinterface next : ()Ljava/lang/Object;
    //   55: astore_2
    //   56: aload_0
    //   57: getfield c : Ljava/util/List;
    //   60: aload_2
    //   61: invokeinterface contains : (Ljava/lang/Object;)Z
    //   66: ifne -> 40
    //   69: iconst_0
    //   70: ireturn
    //   71: iconst_1
    //   72: ireturn
  }
  
  protected T a(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public final void a() {
    this.d.i();
  }
  
  public final int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */