import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import java.util.List;

public class fzm extends gne<Void, Void, fyh> {
  public fzi a = null;
  
  private Dialog b;
  
  private Activity c;
  
  private List<fyg> d;
  
  private String g;
  
  private fyh h = null;
  
  private List<fyl> i;
  
  public fzm(fzi paramfzi, Activity paramActivity, List<fyg> paramList, String paramString) {
    this.a = paramfzi;
    this.c = paramActivity;
    this.d = paramList;
    this.g = paramString;
  }
  
  protected fyh a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.q().b(this.d, this.g);
    } catch (Exception exception) {
      Log.e("CadastroCanalPasso2Task", "Erro ao enviar cadastro.", exception);
      return null;
    } 
  }
  
  protected void a() {
    try {
      this.b = mxn.b(this.c);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  protected void a(fyh paramfyh) {
    try {
      if (this.b != null && this.b.isShowing()) {
        this.b.cancel();
        this.b = null;
      } 
      if (paramfyh == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("CadastroCanalPasso2Task", "Erro ao enviar cadastro.", exception);
      if (paramfyh == null) {
        hat.d().a(this.c, new fvu(), false, false);
        return;
      } 
    } 
    this.a.a(paramfyh);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */