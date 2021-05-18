import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

class eli implements eml<T> {
  eli(ela paramela, Constructor paramConstructor) {}
  
  public T a() {
    try {
      return (T)this.a.newInstance(null);
    } catch (InstantiationException instantiationException) {
      throw new RuntimeException("Failed to invoke " + this.a + " with no args", instantiationException);
    } catch (InvocationTargetException invocationTargetException) {
      throw new RuntimeException("Failed to invoke " + this.a + " with no args", invocationTargetException.getTargetException());
    } catch (IllegalAccessException illegalAccessException) {
      throw new AssertionError(illegalAccessException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eli.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */