import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

public class ioe extends AsyncTask<Void, Void, ioh> {
  public ioe(ValidarCartaoHabilitacaoInternacionalActivity paramValidarCartaoHabilitacaoInternacionalActivity) {}
  
  protected ioh a(Void... paramVarArgs) {
    ioh ioh = new ioh();
    try {
      return hat.t().c(ValidarCartaoHabilitacaoInternacionalActivity.j(this.a), ValidarCartaoHabilitacaoInternacionalActivity.c(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return ioh;
    } 
  }
  
  protected void a(ioh paramioh) {
    iof iof;
    Log.d("Santander:", "ExcluirTask response: " + paramioh.d());
    if (paramioh != null) {
      if (paramioh.b().equals("0")) {
        mzp mzp1 = mzp.RELOAD_CARTOES;
        mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
        ValidarCartaoHabilitacaoInternacionalActivity.d(this.a);
        mzn mzn = new mzn();
        iof = new iof(this, paramioh);
        mzn.a(new mzp[] { mzp1, mzp2 }, iof);
        return;
      } 
      ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
      hat.d().a(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a), (fvu)iof, true, false);
      return;
    } 
    ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
    hat.d().a(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a), (fvu)iof, true, false);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ioe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */