import java.util.ArrayList;

public final class eni extends ekn<Object> {
  public static final ekp a = new enj();
  
  private final ejm b;
  
  eni(ejm paramejm) {
    this.b = paramejm;
  }
  
  public void a(eps parameps, Object paramObject) {
    if (paramObject == null) {
      parameps.f();
      return;
    } 
    ekn<?> ekn1 = this.b.a(paramObject.getClass());
    if (ekn1 instanceof eni) {
      parameps.d();
      parameps.e();
      return;
    } 
    ekn1.a(parameps, paramObject);
  }
  
  public Object b(epo paramepo) {
    ArrayList<Object> arrayList;
    emd<Object, Object> emd;
    epr epr = paramepo.f();
    switch (enk.a[epr.ordinal()]) {
      default:
        throw new IllegalStateException();
      case 1:
        arrayList = new ArrayList();
        paramepo.a();
        while (paramepo.e())
          arrayList.add(b(paramepo)); 
        paramepo.b();
        return arrayList;
      case 2:
        emd = new emd<Object, Object>();
        paramepo.c();
        while (paramepo.e())
          emd.put(paramepo.g(), b(paramepo)); 
        paramepo.d();
        return emd;
      case 3:
        return paramepo.h();
      case 4:
        return Double.valueOf(paramepo.k());
      case 5:
        return Boolean.valueOf(paramepo.i());
      case 6:
        break;
    } 
    paramepo.j();
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */