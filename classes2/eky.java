import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class eky implements Serializable, ParameterizedType {
  private static final long d = 0L;
  
  private final Type a;
  
  private final Type b;
  
  private final Type[] c;
  
  public eky(Type paramType1, Type paramType2, Type... paramVarArgs) {
    if (paramType2 instanceof Class) {
      boolean bool1;
      boolean bool2;
      Class clazz = (Class)paramType2;
      if (Modifier.isStatic(clazz.getModifiers()) || clazz.getEnclosingClass() == null) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (paramType1 != null || bool1) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      ekv.a(bool2);
    } 
    if (paramType1 == null) {
      paramType1 = null;
    } else {
      paramType1 = ekw.d(paramType1);
    } 
    this.a = paramType1;
    this.b = ekw.d(paramType2);
    this.c = (Type[])paramVarArgs.clone();
    int i;
    for (i = b; i < this.c.length; i++) {
      ekv.a(this.c[i]);
      ekw.h(this.c[i]);
      this.c[i] = ekw.d(this.c[i]);
    } 
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof ParameterizedType && ekw.a(this, (ParameterizedType)paramObject));
  }
  
  public Type[] getActualTypeArguments() {
    return (Type[])this.c.clone();
  }
  
  public Type getOwnerType() {
    return this.a;
  }
  
  public Type getRawType() {
    return this.b;
  }
  
  public int hashCode() {
    return Arrays.hashCode((Object[])this.c) ^ this.b.hashCode() ^ ekw.a(this.a);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder((this.c.length + 1) * 30);
    stringBuilder.append(ekw.f(this.b));
    if (this.c.length == 0)
      return stringBuilder.toString(); 
    stringBuilder.append("<").append(ekw.f(this.c[0]));
    for (int i = 1; i < this.c.length; i++)
      stringBuilder.append(", ").append(ekw.f(this.c[i])); 
    return stringBuilder.append(">").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */