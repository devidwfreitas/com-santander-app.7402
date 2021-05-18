import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjz extends AsyncTask<Void, Void, fud> {
  private fjz(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  protected fud a(Void... paramVarArgs) {
    fud fud;
    try {
      ghu ghu = this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a());
      fud = ghu.p();
      if (fud == null)
        return hat.i().e(ghu); 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
    return fud;
  }
  
  protected void a(fud paramfud) {
    if (paramfud != null && !paramfud.hasError()) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      if (paramfud.k() != null && paramfud.k().trim().length() > 0) {
        mxn.a(ParcelamentoFacturaActivity.b(this.a), paramfud.k());
        return;
      } 
      ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).b(paramfud);
      ParcelamentoFacturaActivity.a(this.a, paramfud);
      ParcelamentoFacturaActivity.i(this.a);
      return;
    } 
    if (paramfud == null) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      hat.d().a(ParcelamentoFacturaActivity.b(this.a), paramfud, true);
      return;
    } 
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfud.getFaultstring() != null && paramfud.getFaultstring().length() > 0)
      hat.d().a(ParcelamentoFacturaActivity.b(this.a), paramfud.getFaultstring()); 
    paramfud = new fud();
    ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).b(paramfud);
    ParcelamentoFacturaActivity.a(this.a, paramfud);
    ParcelamentoFacturaActivity.i(this.a);
    hat.d().a(ParcelamentoFacturaActivity.b(this.a), paramfud, false);
  }
  
  public void onPreExecute() {
    if (this.a.a != null) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    this.a.a = mxn.b(ParcelamentoFacturaActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */