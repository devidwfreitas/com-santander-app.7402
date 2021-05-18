import android.app.Activity;
import android.app.Dialog;

public class jbu extends gne<jqi, Void, jqj> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jbu(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected jqj a(jqi... paramVarArgs) {
    try {
      return e() ? null : hat.a().a(paramVarArgs[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a() {
    this.c = mxn.b(this.b);
  }
  
  protected void a(jqj paramjqj) {
    if (this.c != null && this.c.isShowing())
      this.c.dismiss(); 
    if (paramjqj != null)
      this.a.a(paramjqj); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */