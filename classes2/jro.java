import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class jro extends gne<Void, Void, jqm> {
  public jrn a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private jqk d;
  
  public jro(jrn paramjrn, Activity paramActivity, jqk paramjqk) {
    this.a = paramjrn;
    this.c = paramActivity;
    this.d = paramjqk;
  }
  
  protected jqm a(Void... paramVarArgs) {
    try {
      return e() ? null : (this.d.e().equals(jql.TROCAR_SENHA) ? hat.o().a(this.d) : hat.o().a());
    } catch (Exception exception) {
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
  
  protected void a(jqm paramjqm) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramjqm == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramjqm == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    this.a.a(paramjqm);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */