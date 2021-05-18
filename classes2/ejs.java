import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

final class ejs extends ekn<AtomicLongArray> {
  ejs(ekn paramekn) {}
  
  public AtomicLongArray a(epo paramepo) {
    ArrayList<Long> arrayList = new ArrayList();
    paramepo.a();
    while (paramepo.e())
      arrayList.add(Long.valueOf(((Number)this.a.b(paramepo)).longValue())); 
    paramepo.b();
    int j = arrayList.size();
    AtomicLongArray atomicLongArray = new AtomicLongArray(j);
    for (int i = 0; i < j; i++)
      atomicLongArray.set(i, ((Long)arrayList.get(i)).longValue()); 
    return atomicLongArray;
  }
  
  public void a(eps parameps, AtomicLongArray paramAtomicLongArray) {
    parameps.b();
    int i = 0;
    int j = paramAtomicLongArray.length();
    while (i < j) {
      this.a.a(parameps, Long.valueOf(paramAtomicLongArray.get(i)));
      i++;
    } 
    parameps.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */