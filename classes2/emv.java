import java.lang.reflect.Array;
import java.util.ArrayList;

public final class emv<E> extends ekn<Object> {
  public static final ekp a = new emw();
  
  private final Class<E> b;
  
  private final ekn<E> c;
  
  public emv(ejm paramejm, ekn<E> paramekn, Class<E> paramClass) {
    this.c = new enx<E>(paramejm, paramekn, paramClass);
    this.b = paramClass;
  }
  
  public void a(eps parameps, Object paramObject) {
    if (paramObject == null) {
      parameps.f();
      return;
    } 
    parameps.b();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j) {
      Object object = Array.get(paramObject, i);
      this.c.a(parameps, (E)object);
      i++;
    } 
    parameps.c();
  }
  
  public Object b(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    ArrayList arrayList = new ArrayList();
    paramepo.a();
    while (paramepo.e())
      arrayList.add(this.c.b(paramepo)); 
    paramepo.b();
    Object object = Array.newInstance(this.b, arrayList.size());
    for (int i = 0; i < arrayList.size(); i++)
      Array.set(object, i, arrayList.get(i)); 
    return object;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */