import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class mec<Item extends mdt> extends mcz<Item> implements mdu<Item> {
  protected Comparator<Item> a;
  
  private List<Item> b = new ArrayList<Item>();
  
  private boolean c = true;
  
  private med<Item> d = new med<Item>(this);
  
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
  
  public <T extends mdt & mdp<T, S>, S extends mdt & mdx<Item, T>> T a(T paramT, List<S> paramList) {
    if (this.c)
      mes.a(paramList); 
    return (T)((mdp)paramT).a(paramList);
  }
  
  public mec<Item> a(Comparator<Item> paramComparator) {
    return a(paramComparator, true);
  }
  
  public mec<Item> a(Comparator<Item> paramComparator, boolean paramBoolean) {
    this.a = paramComparator;
    if (this.b != null && this.a != null && paramBoolean) {
      Collections.sort(this.b, this.a);
      a().o();
    } 
    return this;
  }
  
  protected mec<Item> a(List<Item> paramList, boolean paramBoolean) {
    if (this.c)
      mes.a(paramList); 
    if (paramBoolean && i() != null && i().a() != null)
      i().performFiltering((CharSequence)null); 
    a().j(false);
    int i = paramList.size();
    int j = this.b.size();
    int k = a().e(c());
    if (paramList != this.b) {
      if (!this.b.isEmpty())
        this.b.clear(); 
      this.b.addAll(paramList);
    } 
    a(paramList);
    if (this.a != null)
      Collections.sort(this.b, this.a); 
    if (i > j) {
      if (j > 0)
        a().e(k, j); 
      a().b(k + j, i - j);
      return this;
    } 
    if (i > 0) {
      a().e(k, i);
      if (i < j) {
        a().c(k + i, j - i);
        return this;
      } 
      return this;
    } 
    if (i == 0) {
      a().c(k, j);
      return this;
    } 
    a().o();
    return this;
  }
  
  public mec<Item> a(@NonNull med<Item> parammed) {
    this.d = parammed;
    return this;
  }
  
  public mec a(boolean paramBoolean) {
    this.c = paramBoolean;
    return this;
  }
  
  public void a(@Nullable CharSequence paramCharSequence) {
    this.d.filter(paramCharSequence);
  }
  
  public int b(Item paramItem) {
    return a(paramItem.j());
  }
  
  public Item b(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public mec<Item> b(int paramInt, Item paramItem) {
    if (this.c)
      mes.a((mds)paramItem); 
    this.b.set(paramInt - a().f(paramInt), paramItem);
    a((mdt)paramItem);
    a().o(paramInt);
    return this;
  }
  
  @SafeVarargs
  public final mec<Item> b(int paramInt, Item... paramVarArgs) {
    return c(paramInt, Arrays.asList(paramVarArgs));
  }
  
  public mec<Item> b(List<Item> paramList, boolean paramBoolean) {
    CharSequence charSequence;
    if (this.c)
      mes.a(paramList); 
    if (i() != null && i().a() != null) {
      charSequence = i().a();
      i().performFiltering((CharSequence)null);
    } else {
      charSequence = null;
    } 
    this.b = new ArrayList<Item>(paramList);
    a(this.b);
    if (this.a != null)
      Collections.sort(this.b, this.a); 
    if (charSequence != null && paramBoolean) {
      i().filter(charSequence);
      return this;
    } 
    a().o();
    return this;
  }
  
  @SafeVarargs
  public final mec<Item> b(Item... paramVarArgs) {
    return j(Arrays.asList(paramVarArgs));
  }
  
  public int c() {
    return 500;
  }
  
  public int c(int paramInt) {
    return a().e(c()) + paramInt;
  }
  
  public mec<Item> c(int paramInt, List<Item> paramList) {
    if (this.c)
      mes.a(paramList); 
    if (paramList != null && paramList.size() > 0) {
      this.b.addAll(paramInt - a().e(c()), paramList);
      a(paramList);
      a().b(paramInt, paramList.size());
    } 
    return this;
  }
  
  public int d() {
    return this.b.size();
  }
  
  public mec<Item> d(int paramInt1, int paramInt2) {
    int i = a().f(paramInt1);
    mdt mdt = (mdt)this.b.get(paramInt1 - i);
    this.b.remove(paramInt1 - i);
    this.b.add(paramInt2 - i, (Item)mdt);
    a().d(paramInt1, paramInt2);
    return this;
  }
  
  public List<Item> e() {
    return this.b;
  }
  
  public mec<Item> e(int paramInt1, int paramInt2) {
    int j = this.b.size();
    int i = a().f(paramInt1);
    j = Math.min(paramInt2, j - paramInt1 + i);
    for (paramInt2 = 0; paramInt2 < j; paramInt2++)
      this.b.remove(paramInt1 - i); 
    a().c(paramInt1, j);
    return this;
  }
  
  public mec<Item> f(int paramInt) {
    this.b.remove(paramInt - a().f(paramInt));
    a().n(paramInt);
    return this;
  }
  
  public mec<Item> h(List<Item> paramList) {
    return a(paramList, true);
  }
  
  public boolean h() {
    return this.c;
  }
  
  public mec<Item> i(List<Item> paramList) {
    return b(paramList, false);
  }
  
  @NonNull
  public med<Item> i() {
    return this.d;
  }
  
  public Comparator<Item> j() {
    return this.a;
  }
  
  public mec<Item> j(List<Item> paramList) {
    if (this.c)
      mes.a(paramList); 
    int i = this.b.size();
    this.b.addAll(paramList);
    a(paramList);
    if (this.a == null) {
      a().b(i + a().e(c()), paramList.size());
      return this;
    } 
    Collections.sort(this.b, this.a);
    a().o();
    return this;
  }
  
  public void k() {
    l_();
    a(this.b);
  }
  
  public mec<Item> l() {
    int i = this.b.size();
    this.b.clear();
    a().c(a().e(c()), i);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */