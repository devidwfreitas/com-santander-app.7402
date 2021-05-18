import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class ekx implements Serializable, GenericArrayType {
  private static final long b = 0L;
  
  private final Type a;
  
  public ekx(Type paramType) {
    this.a = ekw.d(paramType);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof GenericArrayType && ekw.a(this, (GenericArrayType)paramObject));
  }
  
  public Type getGenericComponentType() {
    return this.a;
  }
  
  public int hashCode() {
    return this.a.hashCode();
  }
  
  public String toString() {
    return ekw.f(this.a) + "[]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */