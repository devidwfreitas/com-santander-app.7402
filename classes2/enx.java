import java.lang.reflect.Type;

final class enx<T> extends ekn<T> {
  private final ejm a;
  
  private final ekn<T> b;
  
  private final Type c;
  
  enx(ejm paramejm, ekn<T> paramekn, Type paramType) {
    this.a = paramejm;
    this.b = paramekn;
    this.c = paramType;
  }
  
  private Type a(Type<?> paramType, Object paramObject) {
    null = paramType;
    if (paramObject != null) {
      if (paramType != Object.class && !(paramType instanceof java.lang.reflect.TypeVariable)) {
        null = paramType;
        return (paramType instanceof Class) ? paramObject.getClass() : null;
      } 
    } else {
      return null;
    } 
    return paramObject.getClass();
  }
  
  public void a(eps parameps, T paramT) {
    ekn<T> ekn1 = this.b;
    Type type = a(this.c, paramT);
    if (type != this.c) {
      ekn1 = this.a.a(epn.get(type));
      if (ekn1 instanceof enn && !(this.b instanceof enn))
        ekn1 = this.b; 
    } 
    ekn1.a(parameps, paramT);
  }
  
  public T b(epo paramepo) {
    return this.b.b(paramepo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */