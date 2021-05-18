import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;

public class flc extends AsyncTask<Void, Void, ftc> {
  private flc(Poupanca_posicaoconsolidadaActivity paramPoupanca_posicaoconsolidadaActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      ftc ftc = Poupanca_posicaoconsolidadaActivity.c(this.a);
      if (ftc != null) {
        ftc ftc1 = ftc;
        if (ftc.a().size() > 0)
          ftc1 = hat.j().c(); 
        return ftc1;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
    return null;
  }
  
  protected void a(ftc paramftc) {
    if (Poupanca_posicaoconsolidadaActivity.e(this.a) != null && Poupanca_posicaoconsolidadaActivity.e(this.a).isShowing()) {
      Poupanca_posicaoconsolidadaActivity.e(this.a).cancel();
      Poupanca_posicaoconsolidadaActivity.a(this.a, null);
    } 
    if (paramftc == null) {
      hat.d().a((Activity)Poupanca_posicaoconsolidadaActivity.b(this.a), paramftc, true);
      return;
    } 
    if (paramftc.hasError()) {
      hat.d().a((Activity)Poupanca_posicaoconsolidadaActivity.b(this.a), paramftc, true);
      return;
    } 
    Poupanca_posicaoconsolidadaActivity.a(this.a, paramftc);
    if (this.a.a == 0) {
      this.a.a(paramftc);
      return;
    } 
    if (this.a.a == 1) {
      this.a.b(paramftc);
      return;
    } 
  }
  
  public void onPreExecute() {
    Poupanca_posicaoconsolidadaActivity.a(this.a, mxn.b((Activity)Poupanca_posicaoconsolidadaActivity.b(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\flc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */