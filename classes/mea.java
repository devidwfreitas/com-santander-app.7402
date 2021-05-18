import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class mea<Model, Item extends mdq<? extends Model, ?, ?>> extends mec<Item> {
  private final mer<Model, Item> b;
  
  public mea(mer<Model, Item> parammer) {
    this.b = parammer;
  }
  
  @Nullable
  protected Item a(Model paramModel) {
    return (Item)this.b.a(paramModel);
  }
  
  public mea<Model, Item> a(int paramInt, Model paramModel) {
    paramModel = (Model)a(paramModel);
    if (paramModel != null)
      b(paramInt, (Item)paramModel); 
    return this;
  }
  
  @SafeVarargs
  public final mea<Model, Item> a(int paramInt, Model... paramVarArgs) {
    b(paramInt, Arrays.asList(paramVarArgs));
    return this;
  }
  
  @SafeVarargs
  public final mea<Model, Item> a(Model... paramVarArgs) {
    f(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public mea<Model, Item> b(int paramInt1, int paramInt2) {
    d(paramInt1, paramInt2);
    return this;
  }
  
  public mea<Model, Item> b(int paramInt, List<Model> paramList) {
    c(paramInt, g(paramList));
    return this;
  }
  
  public mea<Model, Item> c(int paramInt1, int paramInt2) {
    e(paramInt1, paramInt2);
    return this;
  }
  
  public mea<Model, Item> d(List<Model> paramList) {
    h(g(paramList));
    return this;
  }
  
  public mea<Model, Item> e(int paramInt) {
    f(paramInt);
    return this;
  }
  
  public mea<Model, Item> e(List<Model> paramList) {
    i(g(paramList));
    return this;
  }
  
  public List<Model> f() {
    int j = e().size();
    ArrayList<Object> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++)
      arrayList.add(((mdq)e().get(i)).a()); 
    return arrayList;
  }
  
  public mea<Model, Item> f(List<Model> paramList) {
    j(g(paramList));
    return this;
  }
  
  protected List<Item> g(List<Model> paramList) {
    if (paramList == null)
      return (List)Collections.emptyList(); 
    int j = paramList.size();
    ArrayList<ArrayList> arrayList = new ArrayList(j);
    int i = 0;
    while (true) {
      ArrayList<ArrayList> arrayList1 = arrayList;
      if (i < j) {
        arrayList1 = (ArrayList<ArrayList>)a(paramList.get(i));
        if (arrayList1 != null)
          arrayList.add(arrayList1); 
        i++;
        continue;
      } 
      return (List)arrayList1;
    } 
  }
  
  public mea<Model, Item> g() {
    l();
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */