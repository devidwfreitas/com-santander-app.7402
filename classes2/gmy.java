import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class gmy {
  public static List<anb> a() {
    ArrayList<Conta> arrayList = new ArrayList();
    if (miq.C().f().q().a() != null)
      arrayList.addAll(miq.C().f().q().a()); 
    return a(arrayList);
  }
  
  public static List<anb> a(List<Conta> paramList) {
    ArrayList<gmx> arrayList = new ArrayList();
    if (paramList != null) {
      Iterator<Conta> iterator = paramList.iterator();
      while (iterator.hasNext())
        arrayList.add(new gmx(iterator.next())); 
    } 
    return (List)arrayList;
  }
  
  public static List<anb> a(List<Conta> paramList, List<ghu> paramList1) {
    paramList = (List)a(paramList);
    paramList.addAll(b(paramList1));
    return (List)paramList;
  }
  
  public static List<anb> b() {
    ArrayList<ghu> arrayList = new ArrayList();
    if (miq.C().f().s().a() != null)
      arrayList.addAll(miq.C().f().s().a()); 
    return b(arrayList);
  }
  
  public static List<anb> b(List<ghu> paramList) {
    ArrayList<gmw> arrayList = new ArrayList();
    if (paramList != null) {
      Iterator<ghu> iterator = paramList.iterator();
      while (iterator.hasNext())
        arrayList.add(new gmw(iterator.next())); 
    } 
    return (List)arrayList;
  }
  
  public static amy c(List<Conta> paramList) {
    return new amy(a(paramList));
  }
  
  public static List<anb> c() {
    ArrayList<ghu> arrayList = new ArrayList();
    if (miq.C().f().s().d() != null)
      arrayList.addAll(miq.C().f().s().d()); 
    return b(arrayList);
  }
  
  public static amy d(List<ghu> paramList) {
    return new amy(b(paramList));
  }
  
  public static List<anb> d() {
    List<anb> list = a();
    list.addAll(b());
    return list;
  }
  
  public static amy e() {
    return new amy(a());
  }
  
  public static amy f() {
    return new amy(b());
  }
  
  public static amy g() {
    return new amy(c());
  }
  
  public static amy h() {
    ArrayList<anb> arrayList = new ArrayList();
    arrayList.addAll(a());
    arrayList.addAll(b());
    return new amy(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */