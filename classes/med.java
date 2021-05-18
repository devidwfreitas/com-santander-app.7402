import android.widget.Filter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class med<Item extends mdt> extends Filter {
  protected mej<Item> a;
  
  private List<Item> b;
  
  private CharSequence c;
  
  private mec<Item> d;
  
  private mdv<Item> e;
  
  public med(mec<Item> parammec) {
    this.d = parammec;
  }
  
  public int a(long paramLong) {
    int i = 0;
    int j = this.b.size();
    while (i < j) {
      if (((mdt)this.b.get(i)).j() == paramLong)
        return i; 
      i++;
    } 
    return -1;
  }
  
  public int a(Item paramItem) {
    return a(paramItem.j());
  }
  
  public CharSequence a() {
    return this.c;
  }
  
  public mec<Item> a(int paramInt) {
    if (this.b != null) {
      this.b.remove(a((Item)this.d.e().get(paramInt)) - this.d.a().f(paramInt));
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.f(paramInt);
  }
  
  public mec<Item> a(int paramInt1, int paramInt2) {
    if (this.b != null) {
      int i = this.d.a().f(paramInt1);
      paramInt1 = a((Item)this.d.e().get(paramInt1));
      paramInt2 = a((Item)this.d.e().get(paramInt2));
      mdt mdt = (mdt)this.b.get(paramInt1 - i);
      this.b.remove(paramInt1 - i);
      this.b.add(paramInt2 - i, (Item)mdt);
      performFiltering(this.c);
      return this.d;
    } 
    return this.d.d(paramInt1, paramInt2);
  }
  
  public mec<Item> a(int paramInt, List<Item> paramList) {
    if (this.b != null && paramList.size() > 0) {
      if (this.d.h())
        mes.a(paramList); 
      this.b.addAll(a((Item)this.d.e().get(paramInt)) - this.d.a().f(paramInt), paramList);
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.c(paramInt, paramList);
  }
  
  public mec<Item> a(int paramInt, Item paramItem) {
    if (this.b != null) {
      if (this.d.h())
        mes.a((mds)paramItem); 
      this.b.set(a((Item)this.d.e().get(paramInt)) - this.d.a().f(paramInt), paramItem);
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.b(paramInt, paramItem);
  }
  
  @SafeVarargs
  public final mec<Item> a(int paramInt, Item... paramVarArgs) {
    return a(paramInt, Arrays.asList(paramVarArgs));
  }
  
  public mec<Item> a(List<Item> paramList) {
    if (this.b != null && paramList.size() > 0) {
      if (this.d.h())
        mes.a(paramList); 
      this.b.addAll(paramList);
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.j(paramList);
  }
  
  @SafeVarargs
  public final mec<Item> a(Item... paramVarArgs) {
    return a(Arrays.asList(paramVarArgs));
  }
  
  public med<Item> a(mdv<Item> parammdv) {
    this.e = parammdv;
    return this;
  }
  
  public med<Item> a(mej<Item> parammej) {
    this.a = parammej;
    return this;
  }
  
  public Set<Integer> b() {
    if (this.b != null) {
      HashSet<Integer> hashSet = new HashSet();
      int j = this.d.a().e(this.d.c());
      int k = this.b.size();
      for (int i = 0; i < k; i++) {
        if (((mdt)this.b.get(i)).m())
          hashSet.add(Integer.valueOf(i + j)); 
      } 
      return hashSet;
    } 
    return this.d.a().f();
  }
  
  public mec<Item> b(int paramInt1, int paramInt2) {
    if (this.b != null) {
      int j = this.b.size();
      int i = this.d.a().f(paramInt1);
      j = Math.min(paramInt2, j - paramInt1 + i);
      for (paramInt2 = 0; paramInt2 < j; paramInt2++)
        this.b.remove(paramInt1 - i); 
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.e(paramInt1, paramInt2);
  }
  
  public Set<Item> c() {
    if (this.b != null) {
      HashSet<mdt> hashSet = new HashSet();
      int j = this.b.size();
      for (int i = 0; i < j; i++) {
        mdt mdt = (mdt)this.b.get(i);
        if (mdt.m())
          hashSet.add(mdt); 
      } 
      return (Set)hashSet;
    } 
    return this.d.a().g();
  }
  
  public mec<Item> d() {
    if (this.b != null) {
      this.b.clear();
      publishResults(this.c, performFiltering(this.c));
      return this.d;
    } 
    return this.d.l();
  }
  
  public Filter.FilterResults performFiltering(CharSequence paramCharSequence) {
    List<Item> list;
    Filter.FilterResults filterResults = new Filter.FilterResults();
    if (this.b == null && (paramCharSequence == null || paramCharSequence.length() == 0))
      return filterResults; 
    if (this.d.a().c())
      this.d.a().h(); 
    this.d.a().j(false);
    this.c = paramCharSequence;
    if (this.b == null)
      this.b = new ArrayList<Item>(this.d.e()); 
    if (paramCharSequence == null || paramCharSequence.length() == 0) {
      filterResults.values = this.b;
      filterResults.count = this.b.size();
      this.b = null;
      if (this.a != null)
        this.a.a(); 
      return filterResults;
    } 
    ArrayList<mdt> arrayList = new ArrayList();
    if (this.e != null) {
      for (mdt mdt : this.b) {
        if (!this.e.a(mdt, paramCharSequence))
          arrayList.add(mdt); 
      } 
      ArrayList<mdt> arrayList1 = arrayList;
    } else {
      list = this.d.e();
    } 
    filterResults.values = list;
    filterResults.count = list.size();
    return filterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults) {
    if (paramFilterResults.values != null)
      this.d.a((List<Item>)paramFilterResults.values, false); 
    if (this.a != null)
      this.a.a(paramCharSequence, (List)paramFilterResults.values); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\med.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */