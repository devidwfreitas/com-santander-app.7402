import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FuturosActivity;
import com.santander.app.contacorrente.domain.Conta;

public class fia extends AsyncTask<Void, Void, fva> {
  private fia(FuturosActivity paramFuturosActivity) {}
  
  protected fva a(Void... paramVarArgs) {
    int i = 0;
    paramVarArgs = null;
    while (true) {
      try {
        fva fva;
        if (i < this.a.v.f().q().a().size()) {
          if (((Conta)this.a.v.f().q().a().get(i)).equals(FuturosActivity.b(this.a)))
            fva = ((Conta)this.a.v.f().q().a().get(i)).getLanzamientoFuturo(); 
        } else {
          fva fva1 = fva;
          if (fva == null)
            fva1 = hat.h().a(FuturosActivity.b(this.a).getAgencia(), FuturosActivity.b(this.a).getCuenta()); 
          return fva1;
        } 
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        return null;
      } 
      i++;
    } 
  }
  
  protected void a(fva paramfva) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfva == null) {
      hat.d().a(FuturosActivity.a(this.a), paramfva, true, false);
      return;
    } 
    if (paramfva.hasError()) {
      hat.d().a(FuturosActivity.a(this.a), paramfva, true, false);
      return;
    } 
    FuturosActivity.c(this.a).removeAllViews();
    FuturosActivity.a(this.a, paramfva);
    for (int i = 0; i < this.a.v.f().q().a().size(); i++) {
      if (this.a.v.f().q().a().equals(FuturosActivity.b(this.a)))
        ((Conta)this.a.v.f().q().a().get(i)).setLanzamientoFuturo(FuturosActivity.d(this.a)); 
    } 
    FuturosActivity.e(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(FuturosActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */