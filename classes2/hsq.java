import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteRequest;

class hsq extends hsz {
  hsq(hsp paramhsp, hso paramhso1, Conta paramConta, hso paramhso2) {
    super(paramhso1);
  }
  
  public void a() {
    try {
      CPConsultarLimiteRequest cPConsultarLimiteRequest = new CPConsultarLimiteRequest(this.a);
      hsp.a(this.c).a(cPConsultarLimiteRequest, new hsr(this));
      return;
    } catch (Exception exception) {
      Log.e("CPConsigRepositoryImpl", "consultarLimite", exception);
      d();
      return;
    } 
  }
  
  public void b() {
    hsp.b(this.c).a(new hss(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */