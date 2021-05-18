import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.InvestimentosConsolidadaActivity;

public class fin extends AsyncTask<Void, Void, fwa> {
  private fin(InvestimentosConsolidadaActivity paramInvestimentosConsolidadaActivity) {}
  
  protected fwa a(Void... paramVarArgs) {
    try {
      return hat.j().b(InvestimentosConsolidadaActivity.b(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fwa paramfwa) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfwa == null) {
      InvestimentosConsolidadaActivity.a(this.a, null);
      InvestimentosConsolidadaActivity.e(this.a);
      return;
    } 
    if (paramfwa.hasError()) {
      InvestimentosConsolidadaActivity.a(this.a, null);
      InvestimentosConsolidadaActivity.e(this.a);
      hat.d().a(InvestimentosConsolidadaActivity.d(this.a), paramfwa, false);
      return;
    } 
    hau.a().b(Boolean.valueOf(true));
    InvestimentosConsolidadaActivity.a(this.a, paramfwa);
    InvestimentosConsolidadaActivity.e(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(InvestimentosConsolidadaActivity.d(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */