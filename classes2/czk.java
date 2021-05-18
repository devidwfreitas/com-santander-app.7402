import android.os.Bundle;
import android.support.annotation.CallSuper;
import com.google.android.gms.gcm.Task;

public abstract class czk {
  public int a;
  
  public String b;
  
  public String c;
  
  public boolean d;
  
  public boolean e;
  
  public boolean f;
  
  public czq g = czq.a;
  
  public Bundle h;
  
  @CallSuper
  protected void a() {
    boolean bool;
    if (this.b != null) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Must provide an endpoint for this task by calling setService(ComponentName).");
    cyy.a(this.c);
    Task.a(this.g);
    if (this.e)
      Task.b(this.h); 
  }
  
  public abstract czk b(int paramInt);
  
  public abstract czk b(Bundle paramBundle);
  
  public abstract czk b(Class<? extends cza> paramClass);
  
  public abstract czk b(String paramString);
  
  public abstract Task c();
  
  public abstract czk d(boolean paramBoolean);
  
  public abstract czk e(boolean paramBoolean);
  
  public abstract czk f(boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */