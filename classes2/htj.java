import android.os.AsyncTask;
import android.support.annotation.NonNull;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;

public class htj implements hti {
  public void a(CPConsultarLimiteRequest paramCPConsultarLimiteRequest, @NonNull htk<CPConsultarLimiteResponse> paramhtk) {
    (new htv(paramhtk)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new CPConsultarLimiteRequest[] { paramCPConsultarLimiteRequest });
  }
  
  public void a(CPSimularEmprestimoRequest paramCPSimularEmprestimoRequest, @NonNull htk<CPSimularEmprestimoResponse> paramhtk) {
    (new htx(paramhtk)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new CPSimularEmprestimoRequest[] { paramCPSimularEmprestimoRequest });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */