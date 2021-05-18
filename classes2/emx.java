import java.lang.reflect.Type;
import java.util.Collection;

public final class emx implements ekp {
  private final ela a;
  
  public emx(ela paramela) {
    this.a = paramela;
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Type type = paramepn.getType();
    Class<?> clazz = paramepn.getRawType();
    if (!Collection.class.isAssignableFrom(clazz))
      return null; 
    type = ekw.a(type, clazz);
    return new emy(paramejm, type, paramejm.a(epn.get(type)), this.a.a((epn)paramepn));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */