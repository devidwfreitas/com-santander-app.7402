import android.util.ArraySet;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class mem {
  public static SparseIntArray a(SparseIntArray paramSparseIntArray, int paramInt1, int paramInt2, int paramInt3) {
    SparseIntArray sparseIntArray = new SparseIntArray();
    int i = 0;
    int j = paramSparseIntArray.size();
    while (i < j) {
      int k = paramSparseIntArray.keyAt(i);
      if (k < paramInt1 || k > paramInt2) {
        sparseIntArray.put(k, paramSparseIntArray.valueAt(i));
      } else if (paramInt3 > 0) {
        sparseIntArray.put(k + paramInt3, paramSparseIntArray.valueAt(i));
      } else if (paramInt3 < 0 && (k <= paramInt1 + paramInt3 || k > paramInt1)) {
        sparseIntArray.put(k + paramInt3, paramSparseIntArray.valueAt(i));
      } 
      i++;
    } 
    return sparseIntArray;
  }
  
  public static <Item extends mdt> List<Item> a(mda<Item> parammda) {
    int j = parammda.getItemCount();
    ArrayList<mdt> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++) {
      mdt mdt = parammda.b(i);
      arrayList.add(mdt);
      c(mdt, arrayList);
    } 
    return (List)arrayList;
  }
  
  public static Set<Integer> a(Set<Integer> paramSet, int paramInt1, int paramInt2, int paramInt3) {
    ArraySet<Integer> arraySet = new ArraySet();
    Iterator<Integer> iterator = paramSet.iterator();
    while (iterator.hasNext()) {
      int i = ((Integer)iterator.next()).intValue();
      if (i < paramInt1 || i > paramInt2) {
        arraySet.add(Integer.valueOf(i));
        continue;
      } 
      if (paramInt3 > 0) {
        arraySet.add(Integer.valueOf(i + paramInt3));
        continue;
      } 
      if (paramInt3 < 0 && (i <= paramInt1 + paramInt3 || i > paramInt1))
        arraySet.add(Integer.valueOf(i + paramInt3)); 
    } 
    return (Set<Integer>)arraySet;
  }
  
  public static <Item extends mdt> void a(mda<Item> parammda, int paramInt1, int paramInt2) {
    while (paramInt2 >= paramInt1) {
      mdt mdt = parammda.b(paramInt2);
      if (mdt != null) {
        if (mdt.m()) {
          parammda.f().add(Integer.valueOf(paramInt2));
        } else if (parammda.f().contains(Integer.valueOf(paramInt2))) {
          parammda.f().remove(Integer.valueOf(paramInt2));
        } 
        if (mdt instanceof mdp && ((mdp)mdt).f() && parammda.k().indexOfKey(paramInt2) < 0)
          parammda.l(paramInt2); 
      } 
      paramInt2--;
    } 
  }
  
  public static <Item extends mdt> void a(Item paramItem, List<String> paramList) {
    if (paramItem instanceof mdp && !((mdp)paramItem).f() && ((mdp)paramItem).j_() != null) {
      List<mdt> list = ((mdp)paramItem).j_();
      int j = list.size();
      for (int i = 0; i < j; i++) {
        mdt mdt = list.get(i);
        long l = mdt.j();
        if (paramList != null && paramList.contains(String.valueOf(l)))
          mdt.i(true); 
        a(mdt, paramList);
      } 
    } 
  }
  
  public static <Item extends mdt> void b(Item paramItem, List<String> paramList) {
    if (paramItem instanceof mdp && !((mdp)paramItem).f() && ((mdp)paramItem).j_() != null) {
      List<mdt> list = ((mdp)paramItem).j_();
      int j = list.size();
      for (int i = 0; i < j; i++) {
        mdt mdt = list.get(i);
        long l = mdt.j();
        if (mdt.m())
          paramList.add(String.valueOf(l)); 
        b(mdt, paramList);
      } 
    } 
  }
  
  public static <Item extends mdt> void c(Item paramItem, List<Item> paramList) {
    if (paramItem instanceof mdp && !((mdp)paramItem).f() && ((mdp)paramItem).j_() != null) {
      List<mdt> list = ((mdp)paramItem).j_();
      int j = list.size();
      for (int i = 0; i < j; i++) {
        mdt mdt = list.get(i);
        paramList.add((Item)mdt);
        c(mdt, paramList);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */