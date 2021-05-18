import java.lang.reflect.Type;
import java.util.Map;

public final class eng implements ekp {
  final boolean a;
  
  private final ela b;
  
  public eng(ela paramela, boolean paramBoolean) {
    this.b = paramela;
    this.a = paramBoolean;
  }
  
  private ekn<?> a(ejm paramejm, Type paramType) {
    return (paramType == boolean.class || paramType == Boolean.class) ? eny.f : paramejm.a(epn.get(paramType));
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Type type = paramepn.getType();
    if (!Map.class.isAssignableFrom(paramepn.getRawType()))
      return null; 
    Type[] arrayOfType = ekw.b(type, ekw.e(type));
    ekn<?> ekn1 = a(paramejm, arrayOfType[0]);
    ekn<?> ekn2 = paramejm.a(epn.get(arrayOfType[1]));
    eml<T> eml = this.b.a(paramepn);
    return (ekn)new enh<Object, Object>(this, paramejm, arrayOfType[0], ekn1, arrayOfType[1], ekn2, (eml)eml);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */