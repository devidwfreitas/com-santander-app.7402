import java.lang.reflect.Method;

final class emr extends emq {
  emr(Method paramMethod, Object paramObject) {}
  
  public <T> T a(Class<T> paramClass) {
    emq.b(paramClass);
    return (T)this.a.invoke(this.b, new Object[] { paramClass });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */