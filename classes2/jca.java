import android.app.Activity;
import android.app.Dialog;

public class jca extends gne<ivg, Void, ivf> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jca(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected ivf a(ivg... paramVarArgs) {
    try {
      return e() ? null : (new gog<ivg, ivf>()).a(paramVarArgs[0], ivf.class, has.ag(), "listarCelular", "return");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a() {
    this.c = mxn.b(this.b);
  }
  
  protected void a(ivf paramivf) {
    if (this.c != null && this.c.isShowing())
      this.c.dismiss(); 
    if (paramivf != null)
      this.a.a(paramivf); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */