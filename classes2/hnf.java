import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.ConsultaTermosContratoCSG;

class hnf implements ih {
  hnf(hnc paramhnc, hnb paramhnb) {}
  
  public void onFailure(is paramis) {
    Log.e("CancelamentoRepository", "consultarContratoResumo", new Exception("StatusCode: " + paramis.a() + "\nResponse: " + paramis.b()));
    this.a.b(paramis.b());
  }
  
  public void onSuccess(is paramis) {
    ConsultaTermosContratoCSG consultaTermosContratoCSG = mys.a().<ConsultaTermosContratoCSG>a(paramis.c().toString(), ConsultaTermosContratoCSG.class);
    this.a.a(consultaTermosContratoCSG.getContractTerms());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */