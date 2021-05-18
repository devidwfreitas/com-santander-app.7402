import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class ekz implements Serializable, WildcardType {
  private static final long c = 0L;
  
  private final Type a;
  
  private final Type b;
  
  public ekz(Type[] paramArrayOfType1, Type[] paramArrayOfType2) {
    boolean bool1;
    if (paramArrayOfType2.length <= 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    ekv.a(bool1);
    if (paramArrayOfType1.length == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    ekv.a(bool1);
    if (paramArrayOfType2.length == 1) {
      ekv.a(paramArrayOfType2[0]);
      ekw.h(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] == Object.class) {
        bool1 = bool2;
      } else {
        bool1 = false;
      } 
      ekv.a(bool1);
      this.b = ekw.d(paramArrayOfType2[0]);
      this.a = Object.class;
      return;
    } 
    ekv.a(paramArrayOfType1[0]);
    ekw.h(paramArrayOfType1[0]);
    this.b = null;
    this.a = ekw.d(paramArrayOfType1[0]);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof WildcardType && ekw.a(this, (WildcardType)paramObject));
  }
  
  public Type[] getLowerBounds() {
    return (this.b != null) ? new Type[] { this.b } : ekw.a;
  }
  
  public Type[] getUpperBounds() {
    return new Type[] { this.a };
  }
  
  public int hashCode() {
    if (this.b != null) {
      int i = this.b.hashCode() + 31;
      return i ^ this.a.hashCode() + 31;
    } 
    boolean bool = true;
    return bool ^ this.a.hashCode() + 31;
  }
  
  public String toString() {
    return (this.b != null) ? ("? super " + ekw.f(this.b)) : ((this.a == Object.class) ? "?" : ("? extends " + ekw.f(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */