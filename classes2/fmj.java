import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaAplicacaoConfirmacaoActivity;

public class fmj extends AsyncTask<Void, Void, fsz> {
  private String b = null;
  
  private fuu c = null;
  
  private String d = "";
  
  private boolean e;
  
  private ftq f;
  
  private String g;
  
  private String h;
  
  private fmj(RendaFixaAplicacaoConfirmacaoActivity paramRendaFixaAplicacaoConfirmacaoActivity) {}
  
  protected fsz a(Void... paramVarArgs) {
    try {
      return hat.j().a(this.c, RendaFixaAplicacaoConfirmacaoActivity.c(this.a), this.e, RendaFixaAplicacaoConfirmacaoActivity.d(this.a), this.f, this.d, this.b, this.g, this.h, RendaFixaAplicacaoConfirmacaoActivity.e(this.a));
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fsz paramfsz) {
    if (paramfsz != null) {
      RendaFixaAplicacaoConfirmacaoActivity.a(this.a, Boolean.valueOf(false));
      RendaFixaAplicacaoConfirmacaoActivity.a(this.a).a(paramfsz);
      mzp mzp1 = mzp.RELOAD_CONTA;
      mzp mzp2 = mzp.RELOAD_INVESTIMENTO;
      mzn mzn = new mzn();
      fmk fmk = new fmk(this);
      mzn.a(new mzp[] { mzp1, mzp2 }, fmk);
    } 
  }
  
  public void onPreExecute() {
    this.b = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).c();
    this.c = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).d();
    this.d = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).e();
    this.e = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).f();
    this.f = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).a();
    this.g = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).b().e();
    this.h = RendaFixaAplicacaoConfirmacaoActivity.a(this.a).b().f();
    if (RendaFixaAplicacaoConfirmacaoActivity.b(this.a) != null && RendaFixaAplicacaoConfirmacaoActivity.b(this.a).isShowing())
      RendaFixaAplicacaoConfirmacaoActivity.b(this.a).cancel(); 
    RendaFixaAplicacaoConfirmacaoActivity.a(this.a, mxn.b((Activity)RendaFixaAplicacaoConfirmacaoActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */