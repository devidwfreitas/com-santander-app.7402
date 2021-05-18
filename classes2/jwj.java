import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import org.json.JSONObject;

public class jwj implements jwi {
  private Activity a;
  
  private gkw b;
  
  private Dialog c;
  
  public jwj(Activity paramActivity) {
    this.a = paramActivity;
    this.c = ano.a(paramActivity);
  }
  
  public void a(gkw paramgkw, iq paramiq) {
    this.c.show();
    this.b = paramgkw;
    try {
      gnz.a().b().a(paramiq, new jwn(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void a(gkw paramgkw, jsq paramjsq) {
    try {
      ir ir = gnp.a().a("/recurring-scheduling/v1/add-scheduling", im.POST, new JSONObject((new ejm()).b(paramjsq)), true);
      gnp.a().b().a(ir, new jwm(this, paramgkw));
      return;
    } catch (Exception exception) {
      Log.e(jwj.class.getSimpleName(), Log.getStackTraceString(exception));
      paramgkw.a(null);
      return;
    } 
  }
  
  public void a(gkw paramgkw, jss paramjss) {
    this.b = paramgkw;
    (new jwq(this.a, new jwk(this, paramgkw))).execute((Object[])new jss[] { paramjss });
  }
  
  public void a(gkw paramgkw, jsv paramjsv) {
    this.b = paramgkw;
    (new jwr(this.a, new jwl(this, paramgkw))).execute((Object[])new jsv[] { paramjsv });
  }
  
  public void b(gkw paramgkw, iq paramiq) {
    this.c.show();
    this.b = paramgkw;
    try {
      gnz.a().b().a(paramiq, new jwo(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void c(gkw paramgkw, iq paramiq) {
    this.c.show();
    this.b = paramgkw;
    try {
      gnz.a().b().a(paramiq, new jwp(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */