import java.lang.reflect.Type;

class elg implements eml<T> {
  private final emq d = emq.a();
  
  elg(ela paramela, Class paramClass, Type paramType) {}
  
  public T a() {
    try {
      return (T)this.d.a(this.a);
    } catch (Exception exception) {
      throw new RuntimeException("Unable to invoke no-args constructor for " + this.b + ". Register an InstanceCreator with Gson for this type may fix this problem.", exception);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */