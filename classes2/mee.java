import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.List;

public abstract class mee<Item extends mdt & mdn, VH extends RecyclerView.ViewHolder> implements mdn<Item>, mdt<Item, VH> {
  protected long b = -1L;
  
  protected Object c;
  
  protected boolean d = true;
  
  protected boolean e = false;
  
  protected boolean f = true;
  
  protected mdg<Item> g;
  
  protected mdg<Item> h;
  
  public VH a(ViewGroup paramViewGroup) {
    return b(b(paramViewGroup.getContext(), paramViewGroup));
  }
  
  public View a(Context paramContext) {
    paramContext = (Context)b(b(paramContext, null));
    a((VH)paramContext, Collections.EMPTY_LIST);
    return ((RecyclerView.ViewHolder)paramContext).itemView;
  }
  
  public View a(Context paramContext, ViewGroup paramViewGroup) {
    paramContext = (Context)b(b(paramContext, paramViewGroup));
    a((VH)paramContext, Collections.EMPTY_LIST);
    return ((RecyclerView.ViewHolder)paramContext).itemView;
  }
  
  public void a(VH paramVH) {}
  
  @CallSuper
  public void a(VH paramVH, List<Object> paramList) {
    ((RecyclerView.ViewHolder)paramVH).itemView.setSelected(m());
  }
  
  public boolean a(int paramInt) {
    return (paramInt == this.b);
  }
  
  public abstract VH b(View paramView);
  
  public View b(Context paramContext, @Nullable ViewGroup paramViewGroup) {
    return LayoutInflater.from(paramContext).inflate(c(), paramViewGroup, false);
  }
  
  public Item b(long paramLong) {
    this.b = paramLong;
    return (Item)this;
  }
  
  public Item b(mdg<Item> parammdg) {
    this.g = parammdg;
    return (Item)this;
  }
  
  public void b(VH paramVH) {}
  
  public Item c(Object paramObject) {
    this.c = paramObject;
    return (Item)this;
  }
  
  public Item c(mdg<Item> parammdg) {
    this.h = parammdg;
    return (Item)this;
  }
  
  public void c(VH paramVH) {}
  
  public mdg<Item> d() {
    return this.h;
  }
  
  public boolean d(VH paramVH) {
    return false;
  }
  
  public boolean e() {
    return this.f;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.b != ((mee)paramObject).b)
        return false; 
    } 
    return true;
  }
  
  public mdg<Item> h() {
    return this.g;
  }
  
  public int hashCode() {
    return Long.valueOf(this.b).hashCode();
  }
  
  public long j() {
    return this.b;
  }
  
  public Object k() {
    return this.c;
  }
  
  public Item k(boolean paramBoolean) {
    this.d = paramBoolean;
    return (Item)this;
  }
  
  public Item l(boolean paramBoolean) {
    this.e = paramBoolean;
    return (Item)this;
  }
  
  public boolean l() {
    return this.d;
  }
  
  public Item m(boolean paramBoolean) {
    this.f = paramBoolean;
    return (Item)this;
  }
  
  public boolean m() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */