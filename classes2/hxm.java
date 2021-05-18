import com.santander.app.contacorrente.domain.Conta;

public interface hxm extends hxr {
  Conta getConta();
  
  String getDiaPagamentoSelecionado();
  
  String getIof();
  
  int getParcela();
  
  String getParcelaFormatted();
  
  String getTaxaCETAno();
  
  String getTaxaCETMes();
  
  String getTaxaJurosAno();
  
  String getTaxaJurosMes();
  
  String getTipoTaxa();
  
  String getValorEmprestimo();
  
  float getValorParcela();
  
  String getValorParcelaFormatted();
  
  String getValorParcelaSemSeguro();
  
  String getValorPremioSeguro();
  
  String getVencimento();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */