import android.util.Log;
import com.santander.app.meuperfil.activity.MeuPerfilAtivarCartaoActivity;

public class jpm extends gne<Void, Void, jqj> {
  public jpm(MeuPerfilAtivarCartaoActivity paramMeuPerfilAtivarCartaoActivity) {}
  
  protected jqj a(Void... paramVarArgs) {
    try {
      if (e())
        return null; 
      jqi jqi = new jqi();
      jqi.j(MeuPerfilAtivarCartaoActivity.a(this.a).getText() + "" + MeuPerfilAtivarCartaoActivity.b(this.a).getText() + MeuPerfilAtivarCartaoActivity.f(this.a).getText());
      return hat.a().a(jqi);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public void a() {
    try {
      MeuPerfilAtivarCartaoActivity.a(this.a, mxn.b(this.a.i));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  protected void a(jqj paramjqj) {
    try {
      if (MeuPerfilAtivarCartaoActivity.g(this.a) != null && MeuPerfilAtivarCartaoActivity.g(this.a).isShowing()) {
        MeuPerfilAtivarCartaoActivity.g(this.a).cancel();
        MeuPerfilAtivarCartaoActivity.a(this.a, null);
      } 
      if (paramjqj == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramjqj == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } 
    MeuPerfilAtivarCartaoActivity.a(this.a, paramjqj);
    MeuPerfilAtivarCartaoActivity.b(this.a, paramjqj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */