import android.app.Activity;
import android.app.Dialog;

public class jri extends gne<jqb, Void, jqa> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jri(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected jqa a(jqb... paramVarArgs) {
    return (new gog<jqb, jqa>()).a(paramVarArgs[0], jqa.class, has.H(), "marcarContaPreferencial", "return");
  }
  
  public void a() {
    this.c = mxn.b(this.b);
    if (!this.c.isShowing())
      this.c.show(); 
  }
  
  protected void a(jqa paramjqa) {
    if (this.c != null) {
      this.c.cancel();
      this.c = null;
    } 
    if (paramjqa != null)
      this.a.a(paramjqa); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */