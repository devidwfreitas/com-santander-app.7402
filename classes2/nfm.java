import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class nfm {
  final Object a;
  
  private final Method b;
  
  private final int c;
  
  private boolean d = true;
  
  nfm(Object paramObject, Method paramMethod) {
    if (paramObject == null)
      throw new NullPointerException("EventProducer target cannot be null."); 
    if (paramMethod == null)
      throw new NullPointerException("EventProducer method cannot be null."); 
    this.a = paramObject;
    this.b = paramMethod;
    paramMethod.setAccessible(true);
    this.c = (paramMethod.hashCode() + 31) * 31 + paramObject.hashCode();
  }
  
  public boolean a() {
    return this.d;
  }
  
  public void b() {
    this.d = false;
  }
  
  public Object c() {
    if (!this.d)
      throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events."); 
    try {
      return this.b.invoke(this.a, new Object[0]);
    } catch (IllegalAccessException illegalAccessException) {
      throw new AssertionError(illegalAccessException);
    } catch (InvocationTargetException invocationTargetException) {
      if (invocationTargetException.getCause() instanceof Error)
        throw (Error)invocationTargetException.getCause(); 
      throw invocationTargetException;
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!this.b.equals(((nfm)paramObject).b) || this.a != ((nfm)paramObject).a)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.c;
  }
  
  public String toString() {
    return "[EventProducer " + this.b + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */