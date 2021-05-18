import android.app.Activity;
import android.content.Context;

public class fnu<T extends fnt> implements fnv {
  private T a;
  
  public fnu(Class<T> paramClass) {
    this.a = paramClass.newInstance();
  }
  
  private boolean c() {
    return this.a.a();
  }
  
  public T a() {
    return this.a;
  }
  
  public void a(Context paramContext, Activity paramActivity, fnx paramfnx, foh paramfoh) {
    if (c())
      this.a.a(paramContext, paramActivity, paramfnx, paramfoh); 
  }
  
  public boolean b() {
    return this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */