import java.util.Iterator;
import java.util.Map;

final class eov extends ekn<ejz> {
  public ejz a(epo paramepo) {
    ejw ejw;
    switch (epe.a[paramepo.f().ordinal()]) {
      default:
        throw new IllegalArgumentException();
      case 3:
        return new ekf(paramepo.h());
      case 1:
        return new ekf(new els(paramepo.h()));
      case 2:
        return new ekf(Boolean.valueOf(paramepo.i()));
      case 4:
        paramepo.j();
        return (ejz)ekb.a;
      case 5:
        ejw = new ejw();
        paramepo.a();
        while (paramepo.e())
          ejw.a(a(paramepo)); 
        paramepo.b();
        return ejw;
      case 6:
        break;
    } 
    ekc ekc = new ekc();
    paramepo.c();
    while (paramepo.e())
      ekc.a(paramepo.g(), a(paramepo)); 
    paramepo.d();
    return ekc;
  }
  
  public void a(eps parameps, ejz paramejz) {
    Iterator<ejz> iterator;
    if (paramejz == null || paramejz.s()) {
      parameps.f();
      return;
    } 
    if (paramejz.r()) {
      paramejz = paramejz.v();
      if (paramejz.y()) {
        parameps.a(paramejz.c());
        return;
      } 
      if (paramejz.b()) {
        parameps.a(paramejz.n());
        return;
      } 
      parameps.b(paramejz.d());
      return;
    } 
    if (paramejz.p()) {
      parameps.b();
      iterator = paramejz.u().iterator();
      while (iterator.hasNext())
        a(parameps, iterator.next()); 
      parameps.c();
      return;
    } 
    if (iterator.q()) {
      parameps.d();
      for (Map.Entry<String, ejz> entry : iterator.t().b()) {
        parameps.a((String)entry.getKey());
        a(parameps, (ejz)entry.getValue());
      } 
      parameps.e();
      return;
    } 
    throw new IllegalArgumentException("Couldn't write " + iterator.getClass());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */