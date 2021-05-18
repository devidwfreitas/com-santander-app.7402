import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class fzh extends gne<Void, Void, fyj> {
  public fzi a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private String d;
  
  private String g;
  
  public fzh(fzi paramfzi, Activity paramActivity, String paramString) {
    this.a = paramfzi;
    this.c = paramActivity;
    this.g = paramString;
  }
  
  protected fyj a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.q().a(this.g);
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
  
  protected void a(fyj paramfyj) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramfyj == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfyj == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    this.a.a(paramfyj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */