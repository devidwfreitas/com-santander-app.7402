import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaResgateConfirmacaoActivity;

public class fmw extends AsyncTask<Void, Void, ftv> {
  private fmw(RendaFixaResgateConfirmacaoActivity paramRendaFixaResgateConfirmacaoActivity) {}
  
  protected ftv a(Void... paramVarArgs) {
    try {
      return hat.j().a(RendaFixaResgateConfirmacaoActivity.b(this.a), RendaFixaResgateConfirmacaoActivity.c(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(ftv paramftv) {
    if (paramftv == null) {
      hat.d().a((Activity)RendaFixaResgateConfirmacaoActivity.a(this.a), paramftv, true);
      return;
    } 
    if (paramftv.hasError()) {
      hat.d().a((Activity)RendaFixaResgateConfirmacaoActivity.a(this.a), paramftv, true);
      return;
    } 
    if (paramftv.a().equals("0"))
      RendaFixaResgateConfirmacaoActivity.a(this.a, Boolean.valueOf(false)); 
    RendaFixaResgateConfirmacaoActivity.a(this.a, paramftv);
    mzp mzp1 = mzp.RELOAD_CONTA;
    mzp mzp2 = mzp.RELOAD_INVESTIMENTO;
    mzn mzn = new mzn();
    fmx fmx = new fmx(this);
    mzn.a(new mzp[] { mzp1, mzp2 }, fmx);
  }
  
  public void onPreExecute() {
    RendaFixaResgateConfirmacaoActivity.a(this.a, mxn.b((Activity)RendaFixaResgateConfirmacaoActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */