import android.app.Activity;
import android.app.Dialog;
import android.util.Log;

public class fzf extends gne<Void, Void, fyo> {
  public fzi a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private fym d;
  
  public fzf(fzi paramfzi, Activity paramActivity, fym paramfym) {
    this.a = paramfzi;
    this.c = paramActivity;
    this.d = paramfym;
  }
  
  protected fyo a(Void... paramVarArgs) {
    try {
      if (e())
        return null; 
      switch (fzg.a[this.d.e().ordinal()]) {
        case 1:
          return hat.q().c();
        case 8:
          return hat.q().a(this.d);
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
          return null;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
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
  
  protected void a(fyo paramfyo) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramfyo == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfyo == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    this.a.a(paramfyo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */