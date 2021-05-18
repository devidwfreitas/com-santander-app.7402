import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jcu extends AsyncTask<jci, Void, jch> {
  public Dialog a;
  
  private gkv b;
  
  private Activity c;
  
  public jcu(gkv paramgkv, Activity paramActivity) {
    this.b = paramgkv;
    this.c = paramActivity;
  }
  
  protected jch a(jci... paramVarArgs) {
    try {
      return isCancelled() ? null : (new gog<jci, jch>()).a(paramVarArgs[0], jch.class, has.G(), "obterTicketRedirecionamentoWay", "return");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a(jch paramjch) {
    if (this.a != null && this.a.isShowing())
      this.a.dismiss(); 
    if (paramjch != null)
      this.b.a(paramjch); 
  }
  
  protected void onPreExecute() {
    this.a = mxn.b(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */