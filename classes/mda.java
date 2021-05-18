import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class mda<Item extends mdt> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  protected static final String a = "bundle_selections";
  
  protected static final String b = "bundle_expanded";
  
  private static final String c = "FastAdapter";
  
  private mde A = (mde)new mdf(this);
  
  private meg<Item> B = (meg<Item>)new mdb(this);
  
  private mek<Item> C = (mek<Item>)new mdc(this);
  
  private mel<Item> D = (mel<Item>)new mdd(this);
  
  private final SparseArray<mdm<Item>> d = new SparseArray();
  
  private final SparseArray<Item> e = new SparseArray();
  
  private final SparseArray<mdm<Item>> f = new SparseArray();
  
  private int g = 0;
  
  private boolean h = false;
  
  private boolean i = false;
  
  private boolean j = false;
  
  private boolean k = true;
  
  private boolean l = false;
  
  private boolean m = false;
  
  private boolean n = true;
  
  private boolean o = false;
  
  private Set<Integer> p = (Set<Integer>)new ArraySet();
  
  private SparseIntArray q = new SparseIntArray();
  
  private boolean r = false;
  
  private List<mei<Item>> s;
  
  private mdg<Item> t;
  
  private mdg<Item> u;
  
  private mdj<Item> v;
  
  private mdj<Item> w;
  
  private mdk<Item> x;
  
  private mdw<Item> y;
  
  private mdh z = (mdh)new mdi(this);
  
  public mda() {
    setHasStableIds(true);
  }
  
  private static int a(SparseArray<?> paramSparseArray, int paramInt) {
    int i = paramSparseArray.indexOfKey(paramInt);
    paramInt = i;
    if (i < 0)
      paramInt = (i ^ 0xFFFFFFFF) - 1; 
    return paramInt;
  }
  
  private void a(int paramInt, Iterator<Integer> paramIterator) {
    Item item = b(paramInt);
    if (item != null)
      item.i(false); 
    if (paramIterator == null) {
      if (this.n)
        this.p.remove(Integer.valueOf(paramInt)); 
    } else {
      paramIterator.remove();
    } 
    notifyItemChanged(paramInt);
    if (this.y != null)
      this.y.a((mdt)item, false); 
  }
  
  private void a(View paramView, Item paramItem, int paramInt) {
    boolean bool = true;
    if (paramItem.e() && (!paramItem.m() || this.k)) {
      boolean bool1;
      boolean bool2;
      if (this.n) {
        bool1 = this.p.contains(Integer.valueOf(paramInt));
      } else {
        bool1 = paramItem.m();
      } 
      if (this.h || paramView == null) {
        if (!this.i)
          h(); 
        if (bool1) {
          i(paramInt);
          return;
        } 
        h(paramInt);
        return;
      } 
      if (!this.i)
        if (this.n) {
          Iterator<Integer> iterator = this.p.iterator();
          while (iterator.hasNext()) {
            Integer integer = iterator.next();
            if (integer.intValue() != paramInt)
              a(integer.intValue(), iterator); 
          } 
        } else {
          Iterator<Integer> iterator = f().iterator();
          while (iterator.hasNext()) {
            int i = ((Integer)iterator.next()).intValue();
            if (i != paramInt)
              i(i); 
          } 
        }  
      if (!bool1) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      paramItem.i(bool2);
      if (!bool1) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      paramView.setSelected(bool2);
      if (this.n)
        if (bool1) {
          if (this.p.contains(Integer.valueOf(paramInt)))
            this.p.remove(Integer.valueOf(paramInt)); 
        } else {
          this.p.add(Integer.valueOf(paramInt));
        }  
      if (this.y != null) {
        mdw<Item> mdw1 = this.y;
        if (!bool1) {
          bool1 = bool;
        } else {
          bool1 = false;
        } 
        mdw1.a((mdt)paramItem, bool1);
        return;
      } 
    } 
  }
  
  private void a(mdp parammdp, int paramInt, boolean paramBoolean) {
    mdm<Item> mdm = d(paramInt);
    if (mdm != null && mdm instanceof mdu)
      ((mdu)mdm).a(paramInt + 1, parammdp.j_().size()); 
    parammdp.g(false);
    if (this.n) {
      int i = this.q.indexOfKey(paramInt);
      if (i >= 0)
        this.q.removeAt(i); 
    } 
    if (paramBoolean)
      notifyItemChanged(paramInt); 
  }
  
  private void d(int paramInt, boolean paramBoolean) {
    Item item = b(paramInt);
    if (item != null && item instanceof mdp) {
      mdp mdp = (mdp)item;
      if (mdp.f() && mdp.j_() != null && mdp.j_().size() > 0)
        a(mdp, paramInt, paramBoolean); 
    } 
  }
  
  private void p() {
    this.f.clear();
    int k = this.d.size();
    int j = 0;
    int i = 0;
    while (j < k) {
      mdm mdm = (mdm)this.d.valueAt(j);
      if (mdm.d() > 0) {
        this.f.append(i, mdm);
        i = mdm.d() + i;
      } 
      j++;
    } 
    if (i == 0 && this.d.size() > 0)
      this.f.append(0, this.d.valueAt(0)); 
    this.g = i;
  }
  
  public int a(int paramInt1, int paramInt2) {
    int i = 0;
    int k = 0;
    int j = paramInt1;
    if (this.n) {
      int m = this.q.size();
      j = 0;
      i = k;
      while (i < m) {
        if (this.q.keyAt(i) >= paramInt1 && this.q.keyAt(i) < paramInt2) {
          k = j + this.q.get(this.q.keyAt(i));
        } else {
          k = j;
          if (this.q.keyAt(i) >= paramInt2)
            break; 
        } 
        i++;
        j = k;
      } 
      return j;
    } 
    while (j < paramInt2) {
      Item item = b(j);
      if (item instanceof mdp) {
        mdp mdp = (mdp)item;
        if (mdp.j_() != null && mdp.f()) {
          paramInt1 = mdp.j_().size() + i;
          continue;
        } 
      } 
      paramInt1 = i;
      continue;
      j++;
      i = paramInt1;
    } 
    return i;
  }
  
  public int a(long paramLong) {
    int k = this.d.size();
    int j = 0;
    int i = 0;
    while (j < k) {
      mdm mdm = (mdm)this.d.valueAt(j);
      if (mdm.c() >= 0) {
        int m = mdm.a(paramLong);
        if (m != -1)
          return i + m; 
        i = mdm.d();
      } 
      j++;
    } 
    return -1;
  }
  
  public int a(RecyclerView.ViewHolder paramViewHolder) {
    return paramViewHolder.getAdapterPosition();
  }
  
  public mda<Item> a() {
    this.r = true;
    return this;
  }
  
  public mda<Item> a(Bundle paramBundle) {
    return a(paramBundle, "");
  }
  
  public mda<Item> a(Bundle paramBundle, String paramString) {
    int i = 0;
    int j = 0;
    if (paramBundle != null) {
      int[] arrayOfInt;
      h();
      if (this.n) {
        int[] arrayOfInt1 = paramBundle.getIntArray("bundle_expanded" + paramString);
        if (arrayOfInt1 != null) {
          int k = arrayOfInt1.length;
          for (i = 0; i < k; i++)
            l(Integer.valueOf(arrayOfInt1[i]).intValue()); 
        } 
        arrayOfInt = paramBundle.getIntArray("bundle_selections" + paramString);
        if (arrayOfInt != null) {
          int k = arrayOfInt.length;
          for (i = j; i < k; i++)
            h(Integer.valueOf(arrayOfInt[i]).intValue()); 
        } 
      } else {
        ArrayList arrayList2 = arrayOfInt.getStringArrayList("bundle_expanded" + paramString);
        ArrayList arrayList1 = arrayOfInt.getStringArrayList("bundle_selections" + paramString);
        for (j = getItemCount(); i < j; j = k) {
          paramString = (String)b(i);
          String str = String.valueOf(paramString.j());
          int k = j;
          if (arrayList2 != null) {
            k = j;
            if (arrayList2.contains(str)) {
              l(i);
              k = getItemCount();
            } 
          } 
          if (arrayList1 != null && arrayList1.contains(str))
            h(i); 
          mem.a((mdt)paramString, arrayList1);
          i++;
        } 
      } 
    } 
    return this;
  }
  
  public mda<Item> a(@Nullable Collection<? extends mei<Item>> paramCollection) {
    if (paramCollection == null)
      return this; 
    if (this.s == null)
      this.s = new LinkedList<mei<Item>>(); 
    this.s.addAll(paramCollection);
    return this;
  }
  
  public mda<Item> a(mde parammde) {
    this.A = parammde;
    return this;
  }
  
  public mda<Item> a(mdg<Item> parammdg) {
    this.u = parammdg;
    return this;
  }
  
  public mda<Item> a(mdh parammdh) {
    this.z = parammdh;
    return this;
  }
  
  public mda<Item> a(mdj<Item> parammdj) {
    this.w = parammdj;
    return this;
  }
  
  public mda<Item> a(mdk<Item> parammdk) {
    this.x = parammdk;
    return this;
  }
  
  public mda<Item> a(mdw<Item> parammdw) {
    this.y = parammdw;
    return this;
  }
  
  @Deprecated
  public mda<Item> a(mei<Item> parammei) {
    return b(parammei);
  }
  
  public mda<Item> a(boolean paramBoolean) {
    this.h = paramBoolean;
    return this;
  }
  
  public Item a(int paramInt) {
    return (Item)this.e.get(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, Object paramObject) {
    for (int i = paramInt1; i < paramInt1 + paramInt2; i++) {
      if (this.n) {
        if (this.q.indexOfKey(i) >= 0)
          k(i); 
      } else {
        Item item = b(paramInt1);
        if (item instanceof mdp && ((mdp)item).f())
          k(paramInt1); 
      } 
    } 
    if (paramObject == null) {
      notifyItemRangeChanged(paramInt1, paramInt2);
    } else {
      notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
    } 
    if (this.n)
      mem.a(this, paramInt1, paramInt1 + paramInt2 - 1); 
  }
  
  public void a(int paramInt, Object paramObject) {
    a(paramInt, 1, paramObject);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    a(paramInt, paramBoolean, false);
  }
  
  public void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2) {
    Item item = b(paramInt);
    if (item != null && (!paramBoolean2 || item.e())) {
      item.i(true);
      if (this.n)
        this.p.add(Integer.valueOf(paramInt)); 
      notifyItemChanged(paramInt);
      if (this.y != null)
        this.y.a((mdt)item, true); 
      if (this.u != null && paramBoolean1) {
        this.u.a(null, d(paramInt), (mdt)item, paramInt);
        return;
      } 
    } 
  }
  
  public void a(Iterable<Integer> paramIterable) {
    Iterator<Integer> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      h(((Integer)iterator.next()).intValue()); 
  }
  
  public <A extends mcz<Item>> void a(A paramA) {
    if (this.d.indexOfKey(paramA.c()) < 0) {
      this.d.put(paramA.c(), paramA);
      p();
    } 
  }
  
  public void a(Item paramItem) {
    if (this.e.indexOfKey(paramItem.b()) < 0) {
      this.e.put(paramItem.b(), paramItem);
      if (paramItem instanceof mdr)
        a(((mdr)paramItem).a()); 
    } 
  }
  
  public int b(Item paramItem) {
    if (paramItem.j() == -1L) {
      Log.e("FastAdapter", "You have to define an identifier for your item to retrieve the position via this method");
      return -1;
    } 
    return a(paramItem.j());
  }
  
  public Bundle b(Bundle paramBundle) {
    return b(paramBundle, "");
  }
  
  public Bundle b(Bundle paramBundle, String paramString) {
    if (paramBundle != null) {
      if (this.n) {
        int[] arrayOfInt = new int[this.p.size()];
        Iterator<Integer> iterator = this.p.iterator();
        for (int k = 0; iterator.hasNext(); k++)
          arrayOfInt[k] = ((Integer)iterator.next()).intValue(); 
        paramBundle.putIntArray("bundle_selections" + paramString, arrayOfInt);
        paramBundle.putIntArray("bundle_expanded" + paramString, l());
        return paramBundle;
      } 
    } else {
      return paramBundle;
    } 
    ArrayList<String> arrayList1 = new ArrayList();
    ArrayList<String> arrayList2 = new ArrayList();
    int j = getItemCount();
    for (int i = 0; i < j; i++) {
      Item item = b(i);
      if (item instanceof mdp && ((mdp)item).f())
        arrayList2.add(String.valueOf(item.j())); 
      if (item.m())
        arrayList1.add(String.valueOf(item.j())); 
      mem.b((mdt)item, arrayList1);
    } 
    paramBundle.putStringArrayList("bundle_selections" + paramString, arrayList1);
    paramBundle.putStringArrayList("bundle_expanded" + paramString, arrayList2);
    return paramBundle;
  }
  
  public mda<Item> b(mdg<Item> parammdg) {
    this.t = parammdg;
    return this;
  }
  
  public mda<Item> b(mdj<Item> parammdj) {
    this.v = parammdj;
    return this;
  }
  
  public mda<Item> b(mei<Item> parammei) {
    if (this.s == null)
      this.s = new LinkedList<mei<Item>>(); 
    this.s.add(parammei);
    return this;
  }
  
  public mda<Item> b(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public Item b(int paramInt) {
    if (paramInt < 0 || paramInt >= this.g)
      return null; 
    int i = a(this.f, paramInt);
    return (Item)((mdm)this.f.valueAt(i)).b(paramInt - this.f.keyAt(i));
  }
  
  public void b(int paramInt1, int paramInt2) {
    if (this.n) {
      this.p = mem.a(this.p, paramInt1, 2147483647, paramInt2);
      this.q = mem.a(this.q, paramInt1, 2147483647, paramInt2);
    } 
    p();
    notifyItemRangeInserted(paramInt1, paramInt2);
    if (this.n)
      mem.a(this, paramInt1, paramInt1 + paramInt2 - 1); 
  }
  
  public void b(int paramInt, boolean paramBoolean) {
    mdp mdp;
    Item item = b(paramInt);
    if (item != null && item instanceof mdp) {
      mdp = (mdp)item;
      if (mdp.f() && mdp.j_() != null && mdp.j_().size() > 0) {
        if (this.n) {
          int k = mdp.j_().size();
          int n = this.q.size();
          int m;
          for (m = 0; m < n; m++) {
            if (this.q.keyAt(m) > paramInt && this.q.keyAt(m) <= paramInt + k)
              k = this.q.get(this.q.keyAt(m)) + k; 
          } 
          Iterator<Integer> iterator = this.p.iterator();
          while (iterator.hasNext()) {
            Integer integer = iterator.next();
            if (integer.intValue() > paramInt && integer.intValue() <= paramInt + k)
              a(integer.intValue(), iterator); 
          } 
          m = k;
          k = n - 1;
          while (k >= 0) {
            n = m;
            if (this.q.keyAt(k) > paramInt) {
              n = m;
              if (this.q.keyAt(k) <= paramInt + m) {
                n = m - this.q.get(this.q.keyAt(k));
                d(this.q.keyAt(k), paramBoolean);
              } 
            } 
            k--;
            m = n;
          } 
          a(mdp, paramInt, paramBoolean);
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    int i = mdp.j_().size();
    int j;
    for (j = paramInt + 1; j < paramInt + i + 1; j++) {
      Item item1 = b(j);
      if (item1 instanceof mdp) {
        mdp mdp1 = (mdp)item1;
        if (mdp1.j_() != null && mdp1.f())
          i = mdp1.j_().size() + i; 
      } 
    } 
    for (i = paramInt + i - 1; i > paramInt; i--) {
      Item item1 = b(i);
      if (item1 instanceof mdp) {
        mdp mdp1 = (mdp)item1;
        if (mdp1.f()) {
          k(i);
          if (mdp1.j_() != null)
            i -= mdp1.j_().size(); 
        } 
      } 
    } 
    a(mdp, paramInt, paramBoolean);
  }
  
  public void b(Iterable<Integer> paramIterable) {
    Iterator<Integer> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      a(((Integer)iterator.next()).intValue(), iterator); 
  }
  
  public boolean b() {
    return this.l;
  }
  
  public mda<Item> c(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public mdl<Item> c(int paramInt) {
    if (paramInt < 0)
      return new mdl(); 
    mdl<Item> mdl = new mdl();
    int i = a(this.f, paramInt);
    if (i != -1) {
      mdl.b = ((mdm)this.f.valueAt(i)).b(paramInt - this.f.keyAt(i));
      mdl.a = (mdm)this.f.valueAt(i);
      mdl.c = paramInt;
    } 
    return mdl;
  }
  
  public void c(int paramInt1, int paramInt2) {
    if (this.n) {
      this.p = mem.a(this.p, paramInt1, 2147483647, paramInt2 * -1);
      this.q = mem.a(this.q, paramInt1, 2147483647, paramInt2 * -1);
    } 
    p();
    notifyItemRangeRemoved(paramInt1, paramInt2);
  }
  
  public void c(int paramInt, boolean paramBoolean) {
    mdp mdp;
    Item item = b(paramInt);
    if (item != null && item instanceof mdp) {
      mdp = (mdp)item;
      if (this.n) {
        if (this.q.indexOfKey(paramInt) < 0 && mdp.j_() != null && mdp.j_().size() > 0) {
          boolean bool;
          mdm<Item> mdm = d(paramInt);
          if (mdm != null && mdm instanceof mdu)
            ((mdu)mdm).a(paramInt + 1, mdp.j_()); 
          mdp.g(true);
          if (paramBoolean)
            notifyItemChanged(paramInt); 
          SparseIntArray sparseIntArray = this.q;
          if (mdp.j_() != null) {
            bool = mdp.j_().size();
          } else {
            bool = false;
          } 
          sparseIntArray.put(paramInt, bool);
        } 
        return;
      } 
    } else {
      return;
    } 
    if (!mdp.f() && mdp.j_() != null && mdp.j_().size() > 0) {
      mdm<Item> mdm = d(paramInt);
      if (mdm != null && mdm instanceof mdu)
        ((mdu)mdm).a(paramInt + 1, mdp.j_()); 
      mdp.g(true);
      if (paramBoolean) {
        notifyItemChanged(paramInt);
        return;
      } 
    } 
  }
  
  public boolean c() {
    return this.n;
  }
  
  public mda<Item> d(boolean paramBoolean) {
    this.k = paramBoolean;
    return this;
  }
  
  @Nullable
  public mdm<Item> d(int paramInt) {
    if (paramInt < 0 || paramInt >= this.g)
      return null; 
    if (this.r)
      Log.v("FastAdapter", "getAdapter"); 
    return (mdm<Item>)this.f.valueAt(a(this.f, paramInt));
  }
  
  public void d(int paramInt1, int paramInt2) {
    k(paramInt1);
    k(paramInt2);
    if (this.n)
      if (!this.p.contains(Integer.valueOf(paramInt1)) && this.p.contains(Integer.valueOf(paramInt2))) {
        this.p.remove(Integer.valueOf(paramInt2));
        this.p.add(Integer.valueOf(paramInt1));
      } else if (this.p.contains(Integer.valueOf(paramInt1)) && !this.p.contains(Integer.valueOf(paramInt2))) {
        this.p.remove(Integer.valueOf(paramInt1));
        this.p.add(Integer.valueOf(paramInt2));
      }  
    notifyItemMoved(paramInt1, paramInt2);
  }
  
  public boolean d() {
    return this.m;
  }
  
  public int e(int paramInt) {
    if (this.g == 0)
      return 0; 
    int k = this.d.size();
    int i = 0;
    int j = 0;
    while (i < k) {
      mdm mdm = (mdm)this.d.valueAt(i);
      if (mdm.c() == paramInt)
        return j; 
      j += mdm.d();
      i++;
    } 
    return j;
  }
  
  public mda<Item> e(boolean paramBoolean) {
    this.l = paramBoolean;
    return this;
  }
  
  public void e() {
    this.e.clear();
  }
  
  public void e(int paramInt1, int paramInt2) {
    a(paramInt1, paramInt2, (Object)null);
  }
  
  public int f(int paramInt) {
    return (this.g == 0) ? 0 : this.f.keyAt(a(this.f, paramInt));
  }
  
  public int f(int paramInt1, int paramInt2) {
    Item item = b(paramInt1);
    if (item != null && item instanceof mdp) {
      mdp mdp = (mdp)item;
      mdm<Item> mdm = d(paramInt1);
      if (mdm != null && mdm instanceof mdu) {
        ((mdu)mdm).a(paramInt1 + 1, paramInt2);
        ((mdu)mdm).a(paramInt1 + 1, mdp.j_());
      } 
      return mdp.j_().size();
    } 
    return 0;
  }
  
  public Set<Integer> f() {
    if (this.n)
      return this.p; 
    ArraySet<Integer> arraySet = new ArraySet();
    int i = 0;
    int j = getItemCount();
    while (true) {
      ArraySet<Integer> arraySet1 = arraySet;
      if (i < j) {
        if (b(i).m())
          arraySet.add(Integer.valueOf(i)); 
        i++;
        continue;
      } 
      return (Set<Integer>)arraySet1;
    } 
  }
  
  public mda<Item> f(boolean paramBoolean) {
    this.n = paramBoolean;
    return this;
  }
  
  public Set<Item> g() {
    Set<Integer> set = f();
    ArraySet<Item> arraySet = new ArraySet(set.size());
    Iterator<Integer> iterator = set.iterator();
    while (iterator.hasNext())
      arraySet.add(b(((Integer)iterator.next()).intValue())); 
    return (Set<Item>)arraySet;
  }
  
  public mda<Item> g(boolean paramBoolean) {
    this.o = paramBoolean;
    return this;
  }
  
  public void g(int paramInt) {
    if (this.n) {
      if (this.p.contains(Integer.valueOf(paramInt))) {
        i(paramInt);
        return;
      } 
      h(paramInt);
      return;
    } 
    if (b(paramInt).m()) {
      i(paramInt);
      return;
    } 
    h(paramInt);
  }
  
  public int getItemCount() {
    return this.g;
  }
  
  public long getItemId(int paramInt) {
    return b(paramInt).j();
  }
  
  public int getItemViewType(int paramInt) {
    return b(paramInt).b();
  }
  
  public mda<Item> h(boolean paramBoolean) {
    this.m = paramBoolean;
    return this;
  }
  
  public void h() {
    if (this.n) {
      b(this.p);
      return;
    } 
    for (mdt mdt : mem.a(this)) {
      if (mdt.m()) {
        mdt.i(false);
        if (this.y != null)
          this.y.a(mdt, false); 
      } 
    } 
    notifyDataSetChanged();
  }
  
  public void h(int paramInt) {
    a(paramInt, false);
  }
  
  public void i() {
    i(false);
  }
  
  public void i(int paramInt) {
    a(paramInt, (Iterator<Integer>)null);
  }
  
  public void i(boolean paramBoolean) {
    if (this.n) {
      int j = getItemCount();
      for (int i = 0; i < j; i++)
        a(i, false, paramBoolean); 
    } else {
      for (mdt mdt : mem.a(this)) {
        if (!paramBoolean || mdt.e()) {
          mdt.i(true);
          if (this.y != null)
            this.y.a(mdt, true); 
        } 
      } 
      notifyDataSetChanged();
    } 
  }
  
  public List<Item> j() {
    ArrayList<Item> arrayList = new ArrayList();
    if (this.n) {
      Set<Integer> set = f();
      while (set.size() > 0) {
        Iterator<Integer> iterator = set.iterator();
        int i = ((Integer)iterator.next()).intValue();
        mdm<Item> mdm = d(i);
        if (mdm != null && mdm instanceof mdu) {
          arrayList.add(b(i));
          ((mdu)mdm).d(i);
        } else {
          iterator.remove();
        } 
        Set<Integer> set1 = f();
      } 
    } else {
      for (int i = getItemCount() - 1; i >= 0; i--) {
        mdl<Item> mdl = c(i);
        if (mdl.b.m() && mdl.a != null && mdl.a instanceof mdu)
          ((mdu)mdl.a).d(i); 
      } 
    } 
    return arrayList;
  }
  
  public void j(int paramInt) {
    if (this.n) {
      if (this.q.indexOfKey(paramInt) >= 0) {
        k(paramInt);
        return;
      } 
      l(paramInt);
      return;
    } 
    Item item = b(paramInt);
    if (item instanceof mdp && ((mdp)item).f()) {
      k(paramInt);
      return;
    } 
    l(paramInt);
  }
  
  public void j(boolean paramBoolean) {
    int[] arrayOfInt = l();
    for (int i = arrayOfInt.length - 1; i >= 0; i--)
      b(arrayOfInt[i], paramBoolean); 
  }
  
  public SparseIntArray k() {
    if (this.n)
      return this.q; 
    SparseIntArray sparseIntArray = new SparseIntArray();
    int j = getItemCount();
    for (int i = 0; i < j; i++) {
      Item item = b(i);
      if (item instanceof mdp && ((mdp)item).f())
        sparseIntArray.put(i, ((mdp)item).j_().size()); 
    } 
    return sparseIntArray;
  }
  
  public void k(int paramInt) {
    b(paramInt, false);
  }
  
  public void k(boolean paramBoolean) {
    for (int i = getItemCount() - 1; i >= 0; i--)
      l(i); 
  }
  
  public void l(int paramInt) {
    c(paramInt, false);
  }
  
  public int[] l() {
    int[] arrayOfInt;
    int j = 0;
    int i = 0;
    if (this.n) {
      j = this.q.size();
      int[] arrayOfInt1 = new int[j];
      while (true) {
        arrayOfInt = arrayOfInt1;
        if (i < j) {
          arrayOfInt1[i] = this.q.keyAt(i);
          i++;
          continue;
        } 
        break;
      } 
    } else {
      ArrayList<Integer> arrayList = new ArrayList();
      int k = getItemCount();
      for (i = 0; i < k; i++) {
        Item item = b(i);
        if (item instanceof mdp && ((mdp)item).f())
          arrayList.add(Integer.valueOf(i)); 
      } 
      k = arrayList.size();
      arrayOfInt = new int[k];
      for (i = j; i < k; i++)
        arrayOfInt[i] = ((Integer)arrayList.get(i)).intValue(); 
    } 
    return arrayOfInt;
  }
  
  public void m() {
    j(true);
  }
  
  public void m(int paramInt) {
    b(paramInt, 1);
  }
  
  public void n() {
    k(false);
  }
  
  public void n(int paramInt) {
    c(paramInt, 1);
  }
  
  public void o() {
    if (this.n) {
      this.p.clear();
      this.q.clear();
    } 
    p();
    notifyDataSetChanged();
    if (this.n)
      mem.a(this, 0, getItemCount() - 1); 
  }
  
  public void o(int paramInt) {
    a(paramInt, (Object)null);
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {
    if (this.r)
      Log.v("FastAdapter", "onAttachedToRecyclerView"); 
    super.onAttachedToRecyclerView(paramRecyclerView);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (this.o) {
      if (this.r)
        Log.v("FastAdapter", "onBindViewHolderLegacy: " + paramInt + "/" + paramViewHolder.getItemViewType()); 
      paramViewHolder.itemView.setTag(2131755017, this);
      this.A.a(paramViewHolder, paramInt, Collections.EMPTY_LIST);
    } 
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt, List<Object> paramList) {
    if (this.r)
      Log.v("FastAdapter", "onBindViewHolder: " + paramInt + "/" + paramViewHolder.getItemViewType()); 
    super.onBindViewHolder(paramViewHolder, paramInt, paramList);
    paramViewHolder.itemView.setTag(2131755017, this);
    this.A.a(paramViewHolder, paramInt, paramList);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    if (this.r)
      Log.v("FastAdapter", "onCreateViewHolder: " + paramInt); 
    RecyclerView.ViewHolder viewHolder = this.z.a(paramViewGroup, paramInt);
    viewHolder.itemView.setTag(2131755017, this);
    men.a((mei)this.B, viewHolder, viewHolder.itemView);
    men.a((mei)this.C, viewHolder, viewHolder.itemView);
    men.a((mei)this.D, viewHolder, viewHolder.itemView);
    return this.z.a(viewHolder);
  }
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {
    if (this.r)
      Log.v("FastAdapter", "onDetachedFromRecyclerView"); 
    super.onDetachedFromRecyclerView(paramRecyclerView);
  }
  
  public boolean onFailedToRecycleView(RecyclerView.ViewHolder paramViewHolder) {
    if (this.r)
      Log.v("FastAdapter", "onFailedToRecycleView: " + paramViewHolder.getItemViewType()); 
    return (this.A.d(paramViewHolder, paramViewHolder.getAdapterPosition()) || super.onFailedToRecycleView(paramViewHolder));
  }
  
  public void onViewAttachedToWindow(RecyclerView.ViewHolder paramViewHolder) {
    if (this.r)
      Log.v("FastAdapter", "onViewAttachedToWindow: " + paramViewHolder.getItemViewType()); 
    super.onViewAttachedToWindow(paramViewHolder);
    this.A.b(paramViewHolder, paramViewHolder.getAdapterPosition());
  }
  
  public void onViewDetachedFromWindow(RecyclerView.ViewHolder paramViewHolder) {
    if (this.r)
      Log.v("FastAdapter", "onViewDetachedFromWindow: " + paramViewHolder.getItemViewType()); 
    super.onViewDetachedFromWindow(paramViewHolder);
    this.A.c(paramViewHolder, paramViewHolder.getAdapterPosition());
  }
  
  public void onViewRecycled(RecyclerView.ViewHolder paramViewHolder) {
    if (this.r)
      Log.v("FastAdapter", "onViewRecycled: " + paramViewHolder.getItemViewType()); 
    super.onViewRecycled(paramViewHolder);
    this.A.a(paramViewHolder, paramViewHolder.getAdapterPosition());
  }
  
  public void p(int paramInt) {
    if (this.n) {
      int i;
      if (this.q.indexOfKey(paramInt) > -1) {
        i = f(paramInt, this.q.get(paramInt));
        if (i == 0) {
          this.q.delete(paramInt);
          return;
        } 
      } else {
        return;
      } 
      this.q.put(paramInt, i);
      return;
    } 
    Log.e("FastAdapter", "please use the notifyAdapterSubItemsChanged(int position, int previousCount) method instead in the PositionBasedStateManagement mode, as we are not able to calculate the previous count ");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mda.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */