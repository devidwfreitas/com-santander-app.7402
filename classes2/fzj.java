import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import java.util.Collections;

public class fzj extends gne<Void, Void, fyf> {
  public fzi a = null;
  
  private Dialog b;
  
  private Activity c;
  
  public fzj(fzi paramfzi, Activity paramActivity) {
    this.a = paramfzi;
    this.c = paramActivity;
  }
  
  protected fyf a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.q().b();
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
  
  protected void a(fyf paramfyf) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramfyf == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfyf == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    Collections.sort(paramfyf.a(), new fzl(this, null));
    this.a.a(paramfyf);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */