import android.support.annotation.NonNull;
import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContractRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContratacaoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import org.json.JSONObject;

public class htq implements htp {
  public void a(ConsignadoCalculateRequest paramConsignadoCalculateRequest, @NonNull htm<ConsignadoCalculateResponse> paramhtm) {
    try {
      JSONObject jSONObject = new JSONObject(mys.a().b(paramConsignadoCalculateRequest));
      (new htt(this, gnp.a().a("payroll-loans/v1/calculate", im.POST, jSONObject, true), paramhtm)).a();
      return;
    } catch (Exception exception) {
      paramhtm.a(null);
      return;
    } 
  }
  
  public void a(ConsignadoContractRequest paramConsignadoContractRequest, @NonNull htm<ConsignadoContratacaoResponse> paramhtm) {
    try {
      JSONObject jSONObject2 = miq.C().f().y().m();
      JSONObject jSONObject1 = new JSONObject(mys.a().b(paramConsignadoContractRequest));
      (new htu(this, gnp.a().a("payroll-loans/v1/", im.POST, jSONObject2, jSONObject1, true), paramhtm)).a();
      return;
    } catch (Exception exception) {
      paramhtm.a(null);
      return;
    } 
  }
  
  public void a(@NonNull gkw paramgkw) {
    ir ir = gnp.a().a("payroll-loans/v1/limit", im.GET, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(@NonNull htm<ConsignadoSimulationResponse> paramhtm) {
    (new htr(this, gnp.a().a("payroll-loans/v1/limit", im.GET, true), paramhtm)).a();
  }
  
  public void a(JSONObject paramJSONObject, @NonNull htm<ConsignadoSimulationResponse> paramhtm) {
    (new hts(this, gnp.a().a("payroll-loans/v1/limit/required-data", im.POST, paramJSONObject, true), paramhtm)).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */