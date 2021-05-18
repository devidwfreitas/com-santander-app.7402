import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class jrp extends gne<Void, Void, jqj> {
  public jrn a = null;
  
  private Dialog b;
  
  private Activity c;
  
  public jrp(jrn paramjrn, Activity paramActivity) {
    this.a = paramjrn;
    this.c = paramActivity;
  }
  
  protected jqj a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.a().a();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public void a() {
    try {
      this.b = mxn.b(this.c);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  protected void a(jqj paramjqj) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    if (paramjqj == null)
      hat.d().a(this.c, new fvu(), false, false); 
    this.a.a(paramjqj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */