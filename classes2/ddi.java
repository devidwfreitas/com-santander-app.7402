import android.app.Activity;
import android.support.v4.app.FragmentActivity;

public class ddi {
  private final Object a;
  
  public ddi(Activity paramActivity) {
    csp.a(paramActivity, "Activity must not be null");
    this.a = paramActivity;
  }
  
  public boolean a() {
    return this.a instanceof FragmentActivity;
  }
  
  public Activity b() {
    return (Activity)this.a;
  }
  
  public FragmentActivity c() {
    return (FragmentActivity)this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */