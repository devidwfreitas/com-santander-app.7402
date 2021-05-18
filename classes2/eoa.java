import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

final class eoa extends ekn<AtomicIntegerArray> {
  public AtomicIntegerArray a(epo paramepo) {
    ArrayList<Integer> arrayList = new ArrayList();
    paramepo.a();
    while (paramepo.e()) {
      try {
        arrayList.add(Integer.valueOf(paramepo.m()));
      } catch (NumberFormatException numberFormatException) {
        throw new ekj(numberFormatException);
      } 
    } 
    numberFormatException.b();
    int j = arrayList.size();
    AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(j);
    for (int i = 0; i < j; i++)
      atomicIntegerArray.set(i, ((Integer)arrayList.get(i)).intValue()); 
    return atomicIntegerArray;
  }
  
  public void a(eps parameps, AtomicIntegerArray paramAtomicIntegerArray) {
    parameps.b();
    int i = 0;
    int j = paramAtomicIntegerArray.length();
    while (i < j) {
      parameps.a(paramAtomicIntegerArray.get(i));
      i++;
    } 
    parameps.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eoa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */