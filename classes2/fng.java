import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;

public class fng extends AsyncTask<Void, Void, ftn> {
  private fng(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity) {}
  
  protected ftn a(Void... paramVarArgs) {
    try {
      if (Rendafixa_posicaoconsolidadaActivity.d(this.a) != null)
        return (Rendafixa_posicaoconsolidadaActivity.d(this.a).h() == null) ? hat.j().d() : Rendafixa_posicaoconsolidadaActivity.d(this.a).h(); 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    return null;
  }
  
  protected void a(ftn paramftn) {
    if (Rendafixa_posicaoconsolidadaActivity.e(this.a) != null && Rendafixa_posicaoconsolidadaActivity.e(this.a).isShowing()) {
      Rendafixa_posicaoconsolidadaActivity.e(this.a).cancel();
      Rendafixa_posicaoconsolidadaActivity.a(this.a, null);
    } 
    if (paramftn == null)
      return; 
    if (paramftn.hasError()) {
      hat.d().a(Rendafixa_posicaoconsolidadaActivity.c(this.a), paramftn, false);
      return;
    } 
    if (paramftn.a().size() > 0) {
      Rendafixa_posicaoconsolidadaActivity.d(this.a).a(paramftn);
      this.a.b();
      return;
    } 
    hav.d(Rendafixa_posicaoconsolidadaActivity.c(this.a), this.a.getResources().getString(2131297780));
  }
  
  public void onPreExecute() {
    Rendafixa_posicaoconsolidadaActivity.a(this.a, mxn.b(Rendafixa_posicaoconsolidadaActivity.c(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */