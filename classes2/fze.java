import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class fze extends gne<Void, Void, fyi> {
  public fzi a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private jqk d;
  
  private String g;
  
  public fze(fzi paramfzi, Activity paramActivity, jqk paramjqk, String paramString) {
    this.a = paramfzi;
    this.c = paramActivity;
    this.d = paramjqk;
    this.g = paramString;
  }
  
  protected fyi a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.q().a(this.g, this.d.a());
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a() {
    try {
      this.b = mxn.b(this.c);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  protected void a(fyi paramfyi) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramfyi == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfyi == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    this.a.a(paramfyi);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */