import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.faturas.activity.DetalheFaturaActivity;

public class iea extends AsyncTask<Void, Void, fug> {
  private iea(DetalheFaturaActivity paramDetalheFaturaActivity) {}
  
  protected fug a(Void... paramVarArgs) {
    try {
      String str = nak.l(DetalheFaturaActivity.e(this.a).a());
      return hat.i().c(DetalheFaturaActivity.f(this.a), DetalheFaturaActivity.g(this.a), str);
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fug paramfug) {
    DetalheFaturaActivity.a(this.a).cancel();
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfug == null) {
      mxn.a(DetalheFaturaActivity.c(this.a), this.a.getResources().getString(2131297338), this.a.getResources().getString(2131297432), false);
      return;
    } 
    if (paramfug.hasError()) {
      mxn.a(DetalheFaturaActivity.c(this.a), this.a.getResources().getString(2131297338), this.a.getResources().getString(2131297432), false);
      return;
    } 
    if (paramfug.b().compareTo("SUCCESS") == 0) {
      mxn.a(DetalheFaturaActivity.c(this.a), this.a.getResources().getString(2131297338), this.a.getResources().getString(2131297435), false);
      return;
    } 
    mxn.a(DetalheFaturaActivity.c(this.a), this.a.getResources().getString(2131297338), this.a.getResources().getString(2131297432), false);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(DetalheFaturaActivity.c(this.a));
    DetalheFaturaActivity.a(this.a, this.a.v.f().s().d().get(DetalheFaturaActivity.d(this.a).a()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */