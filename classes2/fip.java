import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.InvestimentosFundoDetalleActivity;

public class fip extends AsyncTask<Void, Void, ftg> {
  private fip(InvestimentosFundoDetalleActivity paramInvestimentosFundoDetalleActivity) {}
  
  protected ftg a(Void... paramVarArgs) {
    try {
      return hat.j().b(InvestimentosFundoDetalleActivity.b(this.a), InvestimentosFundoDetalleActivity.c(this.a), InvestimentosFundoDetalleActivity.d(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(ftg paramftg) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramftg == null) {
      InvestimentosFundoDetalleActivity.a(this.a, null);
      hat.d().a(InvestimentosFundoDetalleActivity.a(this.a), paramftg, true, true);
      return;
    } 
    if (paramftg.hasError()) {
      InvestimentosFundoDetalleActivity.a(this.a, null);
      hat.d().a(InvestimentosFundoDetalleActivity.a(this.a), paramftg, true, true);
      return;
    } 
    InvestimentosFundoDetalleActivity.a(this.a, paramftg);
    InvestimentosFundoDetalleActivity.e(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(InvestimentosFundoDetalleActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */