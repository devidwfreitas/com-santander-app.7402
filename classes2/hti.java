import android.support.annotation.NonNull;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;

public interface hti {
  void a(CPConsultarLimiteRequest paramCPConsultarLimiteRequest, @NonNull htk<CPConsultarLimiteResponse> paramhtk);
  
  void a(CPSimularEmprestimoRequest paramCPSimularEmprestimoRequest, @NonNull htk<CPSimularEmprestimoResponse> paramhtk);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */