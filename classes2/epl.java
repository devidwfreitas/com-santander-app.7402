import java.util.HashMap;
import java.util.Map;

final class epl<T extends Enum<T>> extends ekn<T> {
  private final Map<String, T> a = new HashMap<String, T>();
  
  private final Map<T, String> b = new HashMap<T, String>();
  
  public epl(Class<T> paramClass) {
    try {
      for (Enum enum_ : (Enum[])paramClass.getEnumConstants()) {
        String str = enum_.name();
        eks eks = paramClass.getField(str).<eks>getAnnotation(eks.class);
        if (eks != null) {
          String str1 = eks.a();
          String[] arrayOfString = eks.b();
          int j = arrayOfString.length;
          int i = 0;
          while (true) {
            str = str1;
            if (i < j) {
              str = arrayOfString[i];
              this.a.put(str, (T)enum_);
              i++;
              continue;
            } 
            break;
          } 
        } 
        this.a.put(str, (T)enum_);
        this.b.put((T)enum_, str);
      } 
    } catch (NoSuchFieldException noSuchFieldException) {
      throw new AssertionError(noSuchFieldException);
    } 
  }
  
  public T a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return this.a.get(paramepo.h());
  }
  
  public void a(eps parameps, T paramT) {
    String str;
    if (paramT == null) {
      paramT = null;
    } else {
      str = this.b.get(paramT);
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */