import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Resources;

class cmb extends ContextWrapper {
  private final cmc a;
  
  private final cmd b;
  
  public cmb(Context paramContext) {
    super(paramContext);
    this.a = new cmc(paramContext);
    this.b = new cmd(paramContext.getResources());
  }
  
  public PackageManager getPackageManager() {
    return this.a;
  }
  
  public Resources getResources() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */