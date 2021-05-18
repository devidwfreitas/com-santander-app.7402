import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

class elk implements eml<T> {
  elk(ela paramela, Type paramType) {}
  
  public T a() {
    if (this.a instanceof ParameterizedType) {
      Type type = ((ParameterizedType)this.a).getActualTypeArguments()[0];
      if (type instanceof Class)
        return (T)EnumSet.noneOf((Class<Enum>)type); 
      throw new eka("Invalid EnumSet type: " + this.a.toString());
    } 
    throw new eka("Invalid EnumSet type: " + this.a.toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */