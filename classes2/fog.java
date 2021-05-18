import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class fog extends gne<fnx, Void, fny> {
  public foh a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private fnx d;
  
  public fog(foh paramfoh, Activity paramActivity, fnx paramfnx) {
    this.a = paramfoh;
    this.c = paramActivity;
    this.d = paramfnx;
  }
  
  protected fny a(fnx... paramVarArgs) {
    try {
      return e() ? null : hat.p().a(this.d);
    } catch (Exception exception) {
      Log.e("BuscarUsuarioPorCpfTask", "Erro ao acesso do canal", exception);
      return null;
    } 
  }
  
  public void a() {
    try {
      this.b = mxn.b(this.c);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  protected void a(fny paramfny) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
    } catch (Exception exception) {
      Log.e("BuscarUsuarioPorCpfTask", "Erro ao acesso do canal", exception);
    } 
    if (paramfny == null)
      hat.d().a(this.c, new fvu(), false, false); 
    this.a.a(paramfny);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */