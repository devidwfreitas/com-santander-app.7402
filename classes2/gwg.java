import android.util.Log;
import com.santander.app.contacorrente.domain.SaldoDetalhado;
import com.santander.app.contacorrente.domain.SaldoDetalhadoResponse;

class gwg implements ih {
  gwg(gwe paramgwe, gwc paramgwc) {}
  
  public void onFailure(is paramis) {
    Log.d("SaldoRepository", "consultarSaldoDetalhado\n" + paramis.b());
    this.a.b(new jxa(paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    Log.d("SaldoRepository", "consultarSaldoDetalhado\n" + paramis.c().toString());
    String str = paramis.c().toString();
    SaldoDetalhado saldoDetalhado = (SaldoDetalhado)mys.a().a(str, SaldoDetalhadoResponse.class);
    this.a.a(saldoDetalhado);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */