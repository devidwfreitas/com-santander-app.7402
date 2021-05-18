import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import com.santander.app.investimentos.presentation.SemProdutoActivity;

public class flb extends AsyncTask<Void, Void, ftc> {
  private boolean b = true;
  
  private flb(Poupanca_posicaoconsolidadaActivity paramPoupanca_posicaoconsolidadaActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      return hat.e().e();
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(ftc paramftc) {
    this.b = false;
    if (paramftc == null) {
      hat.d().a((Activity)Poupanca_posicaoconsolidadaActivity.b(this.a), paramftc, true, false);
      return;
    } 
    if (paramftc.hasError()) {
      Poupanca_posicaoconsolidadaActivity.a(this.a, new ftc());
      hat.d().a((Activity)Poupanca_posicaoconsolidadaActivity.b(this.a), paramftc, false, false);
      return;
    } 
    Poupanca_posicaoconsolidadaActivity.a(this.a, paramftc);
    if (Poupanca_posicaoconsolidadaActivity.c(this.a) != null && Poupanca_posicaoconsolidadaActivity.c(this.a).a().size() > 0) {
      if (Poupanca_posicaoconsolidadaActivity.c(this.a).c().size() > 0) {
        Poupanca_posicaoconsolidadaActivity.d(this.a);
        CaMDOProgressBar.setVisibility(Poupanca_posicaoconsolidadaActivity.a(this.a), 8);
        if (this.a.v.f().w() != null && this.a.v.f().w().c().booleanValue() && !mzr.a()) {
          this.a.v.f().w().b(Boolean.valueOf(false));
          this.a.goAplicacaoPoupanca(null);
          return;
        } 
        return;
      } 
      Intent intent = new Intent((Context)GeolocalizacaoService.a, SemProdutoActivity.class);
      intent.putExtra("tipo_produto", jda.POUPANCA);
      this.a.startActivity(intent);
      this.a.finish();
      return;
    } 
  }
  
  public void onPreExecute() {
    if (this.b)
      CaMDOProgressBar.setVisibility(Poupanca_posicaoconsolidadaActivity.a(this.a), 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\flb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */