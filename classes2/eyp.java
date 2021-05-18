import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

final class eyp {
  private final Map<Integer, Integer> a = new HashMap<Integer, Integer>();
  
  void a(int paramInt) {
    Integer integer2 = this.a.get(Integer.valueOf(paramInt));
    Integer integer1 = integer2;
    if (integer2 == null)
      integer1 = Integer.valueOf(0); 
    int i = integer1.intValue();
    this.a.put(Integer.valueOf(paramInt), Integer.valueOf(i + 1));
  }
  
  int[] a() {
    ArrayList<Integer> arrayList = new ArrayList();
    Iterator<Map.Entry> iterator = this.a.entrySet().iterator();
    int i = -1;
    while (iterator.hasNext()) {
      Map.Entry entry = iterator.next();
      if (((Integer)entry.getValue()).intValue() > i) {
        i = ((Integer)entry.getValue()).intValue();
        arrayList.clear();
        arrayList.add(entry.getKey());
        continue;
      } 
      if (((Integer)entry.getValue()).intValue() == i)
        arrayList.add(entry.getKey()); 
    } 
    return eyk.a(arrayList);
  }
  
  public Integer b(int paramInt) {
    return this.a.get(Integer.valueOf(paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */