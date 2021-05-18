import java.lang.reflect.Method;

final class emt extends emq {
  emt(Method paramMethod) {}
  
  public <T> T a(Class<T> paramClass) {
    emq.b(paramClass);
    return (T)this.a.invoke(null, new Object[] { paramClass, Object.class });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */