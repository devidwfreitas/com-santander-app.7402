import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateRequest;

class hst extends hsz {
  hst(hsp paramhsp, hso paramhso1, Conta paramConta, float paramFloat, int paramInt1, int paramInt2, CPConsultarLimiteResponse paramCPConsultarLimiteResponse, hso paramhso2) {
    super(paramhso1);
  }
  
  public void a() {
    try {
      hsp.a(this.g, new CPSimularEmprestimoRequest(this.a, this.b, this.c, this.d, this.e));
      hsp.a(this.g).a(hsp.c(this.g), new hsu(this));
      return;
    } catch (Exception exception) {
      Log.e("CPConsigRepositoryImpl", "requestSimularEmprestimo", exception);
      d();
      return;
    } 
  }
  
  public void b() {
    hsp.a(this.g, new ConsignadoCalculateRequest(this.b, this.c));
    hsp.b(this.g).a(hsp.d(this.g), new hsv(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hst.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */