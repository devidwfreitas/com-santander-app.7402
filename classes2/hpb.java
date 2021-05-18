import android.app.Dialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContratacaoResponse;

class hpb implements htm<ConsignadoContratacaoResponse> {
  hpb(hoz paramhoz, Dialog paramDialog) {}
  
  public void a(int paramInt, ConsignadoContratacaoResponse paramConsignadoContratacaoResponse) {
    paramConsignadoContratacaoResponse.setCalculateResponse(hoz.a(this.b));
    String str = paramConsignadoContratacaoResponse.getSeguroPercentageFormatted();
    if (str == null) {
      str = "NaoElegivel";
    } else if (str.equals("0,00%")) {
      str = "Nao";
    } else {
      str = "Sim";
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SeguroContratado", str);
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Valor", naj.P(paramConsignadoContratacaoResponse.getValorEmprestimoFormatted()));
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ValorParcela", naj.P(paramConsignadoContratacaoResponse.getValorParcelaFormatted()));
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Consignado_MesPrimeiroVencimento", nak.y(paramConsignadoContratacaoResponse.getVencimentoFormatted()));
    hoz.b(this.b).a(hoz.d(this.b).a((CPContratacao)paramConsignadoContratacaoResponse));
    this.a.dismiss();
  }
  
  public void a(CPError paramCPError) {
    if (paramCPError != null && paramCPError.canShowMessage()) {
      ConsignadoContratacaoResponse consignadoContratacaoResponse = new ConsignadoContratacaoResponse();
      consignadoContratacaoResponse.setMessageErrorRetorno(paramCPError.getMessage());
      consignadoContratacaoResponse.setCalculateResponse(hoz.a(this.b));
      hoz.b(this.b).a(hoz.d(this.b).b((CPContratacao)consignadoContratacaoResponse));
    } else {
      hoz.b(this.b).a(hoz.c(this.b).getString(2131297343));
    } 
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */