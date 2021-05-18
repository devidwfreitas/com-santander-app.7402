import android.app.Activity;
import android.app.Dialog;
import com.santander.app.MinhaConta;

public class nen extends gne<String, Void, ftz> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public nen(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected ftz a(String... paramVarArgs) {
    try {
      return hat.i().a(paramVarArgs[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public void a() {
    if (MinhaConta.h())
      return; 
    this.c = mxn.b(this.b);
  }
  
  protected void a(ftz paramftz) {
    if (this.c != null && this.c.isShowing()) {
      this.c.cancel();
      this.c = null;
    } 
    this.a.a(paramftz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nen.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */