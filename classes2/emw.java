import java.lang.reflect.Type;

final class emw implements ekp {
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Type type = paramepn.getType();
    if (!(type instanceof java.lang.reflect.GenericArrayType) && (!(type instanceof Class) || !((Class)type).isArray()))
      return null; 
    type = ekw.g(type);
    return new emv(paramejm, paramejm.a(epn.get(type)), ekw.e(type));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */