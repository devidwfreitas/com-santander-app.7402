import android.app.Activity;
import android.app.Dialog;

public class jcc extends gne<ivk, Void, ivj> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jcc(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected ivj a(ivk... paramVarArgs) {
    try {
      return e() ? null : (new gog<ivk, ivj>()).a(paramVarArgs[0], ivj.class, has.ag(), "verificarSMSTokenLigado", "return");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a() {
    this.c = mxn.b(this.b);
  }
  
  protected void a(ivj paramivj) {
    if (this.c != null && this.c.isShowing())
      this.c.dismiss(); 
    if (paramivj != null)
      this.a.a(paramivj); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */