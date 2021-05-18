import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gea extends AsyncTask<gao, Void, gbc> {
  private gkw a;
  
  private Dialog b;
  
  private Activity c;
  
  public gea(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.c = paramActivity;
  }
  
  protected gbc a(gao... paramVarArgs) {
    return (new gog<gao, gbc>()).a(paramVarArgs[0], gbc.class, has.ah(), "calcularCambio", "return");
  }
  
  protected void a(gbc paramgbc) {
    super.onPostExecute(paramgbc);
    if (this.a != null)
      this.a.a(paramgbc); 
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */