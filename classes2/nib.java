import java.util.EventListener;

public abstract class nib<T extends EventListener> {
  private final Class<T> a;
  
  protected nib(Class<T> paramClass) {
    this.a = paramClass;
    if (paramClass == null)
      throw new IllegalArgumentException(); 
  }
  
  public abstract void a(T paramT);
  
  public final Class<T> f() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */