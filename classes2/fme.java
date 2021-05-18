import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaAplicacaoActivity;

public class fme extends AsyncTask<Void, Void, ftm> {
  private String b;
  
  private String c;
  
  private fwb d = new fwb();
  
  public fme(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity, String paramString1, String paramString2) {
    this.b = paramString1;
    this.c = paramString2;
  }
  
  protected ftm a(Void... paramVarArgs) {
    try {
      return hat.j().a();
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftm paramftm) {
    if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
      RendaFixaAplicacaoActivity.g(this.a).cancel();
      RendaFixaAplicacaoActivity.a(this.a, null);
    } 
    if (paramftm == null) {
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramftm, false);
      return;
    } 
    if (paramftm.hasError()) {
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramftm, false);
      return;
    } 
    this.d.a(paramftm);
    if (paramftm.a() != null && paramftm.a().size() > 0) {
      String str;
      RendaFixaAplicacaoActivity.a(this.a, this.d.g().a());
      RendaFixaAplicacaoActivity.a(this.a, new ftq());
      RendaFixaAplicacaoActivity.e(this.a).a(this.c);
      ftq ftq = RendaFixaAplicacaoActivity.e(this.a);
      if (this.b.contains("_")) {
        str = this.b.replace("_", " ");
      } else {
        str = this.b;
      } 
      ftq.b(str);
      RendaFixaAplicacaoActivity.q(this.a);
      return;
    } 
    hav.d((Activity)RendaFixaAplicacaoActivity.c(this.a), this.a.getResources().getString(2131297717));
  }
  
  public void onPreExecute() {
    RendaFixaAplicacaoActivity.a(this.a, mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */