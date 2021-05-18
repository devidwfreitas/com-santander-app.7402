import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class nfl {
  private final Object a;
  
  private final Method b;
  
  private final int c;
  
  private boolean d = true;
  
  nfl(Object paramObject, Method paramMethod) {
    if (paramObject == null)
      throw new NullPointerException("EventHandler target cannot be null."); 
    if (paramMethod == null)
      throw new NullPointerException("EventHandler method cannot be null."); 
    this.a = paramObject;
    this.b = paramMethod;
    paramMethod.setAccessible(true);
    this.c = (paramMethod.hashCode() + 31) * 31 + paramObject.hashCode();
  }
  
  public void a(Object paramObject) {
    if (!this.d)
      throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events."); 
    try {
      this.b.invoke(this.a, new Object[] { paramObject });
      return;
    } catch (IllegalAccessException illegalAccessException) {
      throw new AssertionError(illegalAccessException);
    } catch (InvocationTargetException invocationTargetException) {
      if (invocationTargetException.getCause() instanceof Error)
        throw (Error)invocationTargetException.getCause(); 
      throw invocationTargetException;
    } 
  }
  
  public boolean a() {
    return this.d;
  }
  
  public void b() {
    this.d = false;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!this.b.equals(((nfl)paramObject).b) || this.a != ((nfl)paramObject).a)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.c;
  }
  
  public String toString() {
    return "[EventHandler " + this.b + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */