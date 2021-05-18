import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

public class ioc extends AsyncTask<Void, Void, iog> {
  public ioc(ValidarCartaoHabilitacaoInternacionalActivity paramValidarCartaoHabilitacaoInternacionalActivity) {}
  
  protected iog a(Void... paramVarArgs) {
    iog iog = new iog();
    try {
      return hat.t().a(ValidarCartaoHabilitacaoInternacionalActivity.b(this.a), ValidarCartaoHabilitacaoInternacionalActivity.c(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return iog;
    } 
  }
  
  protected void a(iog paramiog) {
    iod iod;
    if (paramiog.d().equals("0")) {
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
      ValidarCartaoHabilitacaoInternacionalActivity.d(this.a);
      mzn mzn = new mzn();
      iod = new iod(this, paramiog);
      mzn.a(new mzp[] { mzp1, mzp2 }, iod);
      return;
    } 
    if (iod.d().equals("@ERMPE0357")) {
      ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
      ValidarCartaoHabilitacaoInternacionalActivity.a(this.a, 1);
      return;
    } 
    if (iod.d().equals("@ERMPE0356")) {
      ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
      ValidarCartaoHabilitacaoInternacionalActivity.a(this.a, 2);
      return;
    } 
    if (iod.d().equalsIgnoreCase("@ERMPE3072")) {
      ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
      ValidarCartaoHabilitacaoInternacionalActivity.a(this.a, 3);
      return;
    } 
    ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
    hat.d().a(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a), (fvu)iod, true, false);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ioc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */