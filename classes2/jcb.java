import android.app.Activity;
import android.app.Dialog;

public class jcb extends gne<ivi, Void, ivh> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jcb(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected ivh a(ivi... paramVarArgs) {
    try {
      return e() ? null : (new gog<ivi, ivh>()).a(paramVarArgs[0], ivh.class, has.ag(), "recuperarTokenSMS", "return");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a() {
    this.c = mxn.b(this.b);
  }
  
  protected void a(ivh paramivh) {
    if (this.c != null && this.c.isShowing())
      this.c.dismiss(); 
    if (paramivh != null)
      this.a.a(paramivh); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */