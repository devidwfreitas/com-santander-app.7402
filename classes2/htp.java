import android.support.annotation.NonNull;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContractRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContratacaoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import org.json.JSONObject;

public interface htp {
  void a(ConsignadoCalculateRequest paramConsignadoCalculateRequest, @NonNull htm<ConsignadoCalculateResponse> paramhtm);
  
  void a(ConsignadoContractRequest paramConsignadoContractRequest, @NonNull htm<ConsignadoContratacaoResponse> paramhtm);
  
  void a(@NonNull gkw paramgkw);
  
  void a(@NonNull htm<ConsignadoSimulationResponse> paramhtm);
  
  void a(JSONObject paramJSONObject, @NonNull htm<ConsignadoSimulationResponse> paramhtm);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */