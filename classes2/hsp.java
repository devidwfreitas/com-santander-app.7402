import android.support.annotation.NonNull;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;

public class hsp implements hsn {
  private static final String a = "CPConsigRepositoryImpl";
  
  private static final int g = 200;
  
  private hqi b;
  
  private hti c;
  
  private htp d;
  
  private CPSimularEmprestimoRequest e;
  
  private ConsignadoCalculateRequest f;
  
  public hsp(hqi paramhqi) {
    this.b = paramhqi;
    this.c = new htj();
    this.d = new htq();
  }
  
  public void a(@hxu int paramInt, Conta paramConta, @NonNull hso<CPConsultarLimiteResponse, ConsignadoSimulationResponse> paramhso) {
    this.b.a(paramInt, new hsq(this, paramhso, paramConta, paramhso));
  }
  
  public void a(@hxu int paramInt1, CPConsultarLimiteResponse paramCPConsultarLimiteResponse, Conta paramConta, float paramFloat, int paramInt2, int paramInt3, @NonNull hso<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> paramhso) {
    this.b.a(paramInt1, new hst(this, paramhso, paramConta, paramFloat, paramInt2, paramInt3, paramCPConsultarLimiteResponse, paramhso));
  }
  
  public void a(@hxu int paramInt, boolean paramBoolean, @NonNull hso<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> paramhso) {
    this.b.a(paramInt, new hsw(this, paramhso, paramBoolean, paramhso));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */