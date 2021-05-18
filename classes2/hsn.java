import android.support.annotation.NonNull;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;

public interface hsn {
  void a(@hxu int paramInt, Conta paramConta, @NonNull hso<CPConsultarLimiteResponse, ConsignadoSimulationResponse> paramhso);
  
  void a(@hxu int paramInt1, CPConsultarLimiteResponse paramCPConsultarLimiteResponse, Conta paramConta, float paramFloat, int paramInt2, int paramInt3, @NonNull hso<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> paramhso);
  
  void a(@hxu int paramInt, boolean paramBoolean, @NonNull hso<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> paramhso);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */