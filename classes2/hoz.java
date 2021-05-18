import android.app.Activity;
import android.app.Dialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContractRequest;

public class hoz implements hox, hoy {
  private hrl a;
  
  private htc b;
  
  private htp c;
  
  private hpl d;
  
  private CPContratacao e;
  
  private hqh f;
  
  private hqg g;
  
  private Activity h;
  
  public hoz(Activity paramActivity, hrl paramhrl) {
    this.a = paramhrl;
    this.h = paramActivity;
    this.b = new htd(paramActivity, this);
    this.d = hpp.n();
    this.c = new htq();
    this.f = new hqh();
    this.g = new hqg();
    this.e = this.d.i();
  }
  
  private void a(boolean paramBoolean) {
    Dialog dialog = mxn.b(this.h);
    try {
      this.d.a(paramBoolean, new hpa(this, dialog));
      return;
    } catch (hou hou) {
      this.a.a(this.h.getString(2131297343));
      dialog.dismiss();
      return;
    } 
  }
  
  private void j() {
    Dialog dialog = mxn.b(this.h);
    ConsignadoContractRequest consignadoContractRequest = new ConsignadoContractRequest(this.e);
    this.c.a(consignadoContractRequest, new hpb(this, dialog));
  }
  
  public CPContratacao a() {
    return this.e;
  }
  
  public void a(CPContratarEmprestimoResponse paramCPContratarEmprestimoResponse) {
    String str;
    if (paramCPContratarEmprestimoResponse.getTipoSeguro().contains("0")) {
      str = "Nao";
    } else if (paramCPContratarEmprestimoResponse.getTipoSeguro().contains("1")) {
      str = "Sim";
    } else {
      str = "NaoElegivel";
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SeguroContratado", str);
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Valor", naj.P(paramCPContratarEmprestimoResponse.getValorEmprestimo()));
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ValorParcela", naj.P(paramCPContratarEmprestimoResponse.getValorParcela()));
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_CP_DiaVencimento", paramCPContratarEmprestimoResponse.getDiaPagamentoFormatted());
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ReferOper", paramCPContratarEmprestimoResponse.getReferOper());
    this.a.a(this.g.a((CPContratacao)paramCPContratarEmprestimoResponse));
  }
  
  public void a(String paramString) {
    this.a.a(true, this.f.a(paramString));
  }
  
  public void a(String... paramVarArgs) {
    if (this.e.getType() == 10) {
      this.b.a(paramVarArgs[0]);
      return;
    } 
    switch (this.e.getTypeSecure()) {
      default:
        return;
      case 0:
      case 2:
        this.b.b(paramVarArgs[1]);
        return;
      case 1:
        break;
    } 
    this.b.b(paramVarArgs[2]);
  }
  
  public void b() {
    a(false);
  }
  
  public void b(CPContratarEmprestimoResponse paramCPContratarEmprestimoResponse) {
    this.a.a(this.g.b((CPContratacao)paramCPContratarEmprestimoResponse));
  }
  
  public void b(String paramString) {
    if (paramString.isEmpty()) {
      this.a.a(paramString);
      return;
    } 
    this.a.a(this.h.getString(2131297343));
  }
  
  public void c() {
    a(true);
  }
  
  public void d() {
    if (this.e.getType() == 10) {
      CPContratarEmprestimoRequest cPContratarEmprestimoRequest = new CPContratarEmprestimoRequest(this.d.i());
      this.b.a(cPContratarEmprestimoRequest);
      return;
    } 
    j();
  }
  
  public void e() {
    this.a.a(false, this.f.a(this.d.i()));
  }
  
  public int f() {
    return this.e.getTypeSecure();
  }
  
  public int g() {
    return this.e.getType();
  }
  
  public boolean h() {
    return this.e.isRefinanciamento();
  }
  
  public boolean i() {
    return this.d.e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hoz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */