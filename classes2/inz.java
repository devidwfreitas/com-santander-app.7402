import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

public class inz extends AsyncTask<Void, Void, ioh> {
  public inz(ValidarCartaoHabilitacaoInternacionalActivity paramValidarCartaoHabilitacaoInternacionalActivity) {}
  
  protected ioh a(Void... paramVarArgs) {
    ioh ioh = new ioh();
    try {
      return hat.t().b(ValidarCartaoHabilitacaoInternacionalActivity.j(this.a), ValidarCartaoHabilitacaoInternacionalActivity.c(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return ioh;
    } 
  }
  
  protected void a(ioh paramioh) {
    ioa ioa;
    Log.d("Santander:", "AlterarTask response: " + paramioh.d());
    if (paramioh != null) {
      if (paramioh.b().equals("0")) {
        mzp mzp1 = mzp.RELOAD_CARTOES;
        mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
        mzn mzn = new mzn();
        ioa = new ioa(this, paramioh);
        mzn.a(new mzp[] { mzp1, mzp2 }, ioa);
        return;
      } 
      ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
      hat.d().a(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a), (fvu)ioa, true, false);
      return;
    } 
    ValidarCartaoHabilitacaoInternacionalActivity.e(this.a);
    hat.d().a(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a), (fvu)ioa, true, false);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ValidarCartaoHabilitacaoInternacionalActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */