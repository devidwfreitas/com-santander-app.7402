import java.util.ArrayList;
import java.util.Iterator;

public final class crg {
  public static <T, E extends crf<T>> ArrayList<T> a(Iterable<E> paramIterable) {
    ArrayList<T> arrayList = new ArrayList();
    Iterator<E> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      arrayList.add(((crf)iterator.next()).a()); 
    return arrayList;
  }
  
  public static <T, E extends crf<T>> ArrayList<T> a(ArrayList<E> paramArrayList) {
    ArrayList<T> arrayList = new ArrayList(paramArrayList.size());
    int j = paramArrayList.size();
    for (int i = 0; i < j; i++)
      arrayList.add(((crf)paramArrayList.get(i)).a()); 
    return arrayList;
  }
  
  public static <T, E extends crf<T>> ArrayList<T> a(E[] paramArrayOfE) {
    ArrayList<T> arrayList = new ArrayList(paramArrayOfE.length);
    for (int i = 0; i < paramArrayOfE.length; i++)
      arrayList.add(paramArrayOfE[i].a()); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */