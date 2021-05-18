import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class foi extends gne<Void, Void, fnz> {
  public foh a = null;
  
  private Dialog b;
  
  private Activity c;
  
  public foi(Activity paramActivity, foh paramfoh) {
    this.c = paramActivity;
    this.a = paramfoh;
  }
  
  protected fnz a(Void... paramVarArgs) {
    try {
      return hat.s().a();
    } catch (Exception exception) {
      Log.e("RegistrarOptinCanalTask", "Erro ao registrar OPTIN canal", exception);
      return null;
    } 
  }
  
  public void a() {
    try {
      this.b = mxn.b(this.c);
      return;
    } catch (Exception exception) {
      Log.e(this.c.getLocalClassName(), "RegistrarOptinCanalTask.onPreExecute", exception);
      return;
    } 
  }
  
  protected void a(fnz paramfnz) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
    } catch (Exception exception) {
      Log.e(this.c.getLocalClassName(), "RegistrarOptinCanalTask.onPostExecute", exception);
    } 
    this.a.a(paramfnz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\foi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */