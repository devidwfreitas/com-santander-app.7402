package com.santander.app.emprestimo.creditopessoal.domain;

import android.content.res.Resources;
import com.santander.app.MinhaConta;
import com.santander.app.contacorrente.domain.Conta;
import eks;
import hok;
import hol;
import hxq;
import hyx;
import java.util.Calendar;
import java.util.List;

public class ConsignadoCalculateResponse extends hok implements CPContratacao, ConsignadoSetter, hxq {
  protected ConsignadoSimulationResponse consignadoSimulationResponse;
  
  protected Conta conta;
  
  @eks(a = "contracts")
  protected List<ConsignadoCalculateContract> contracts = null;
  
  @eks(a = "contractsTotalValue")
  protected String contractsTotalValue;
  
  @eks(a = "dateOccurrence")
  protected String dateOccurrence;
  
  @eks(a = "dateSystem")
  protected String dateSystem;
  
  @eks(a = "liberationDays")
  protected String liberationDays;
  
  @eks(a = "maxInstallmentsQuantity")
  protected String maxInstallmentsQuantity;
  
  @eks(a = "minInstallmentsQuantity")
  protected String minInstallmentsQuantity;
  
  @eks(a = "nameAgreement")
  protected String nameAgreement;
  
  @eks(a = "promoterName")
  protected String promoterName;
  
  @eks(a = "secureCode")
  protected String secureCode;
  
  @eks(a = "simulation")
  protected List<hol> simulation;
  
  public String getAutenticacaoBancaria() {
    return "";
  }
  
  public ConsignadoSimulationResponse getConsignadoSimulationResponse() {
    return this.consignadoSimulationResponse;
  }
  
  public Conta getConta() {
    return this.conta;
  }
  
  public List<ConsignadoContract> getContratos() {
    return this.consignadoSimulationResponse.getContratos();
  }
  
  public List<ConsignadoCalculateContract> getContratosCalculate() {
    return this.contracts;
  }
  
  public String getDataHoraSolicitacao() {
    try {
      Calendar calendar = hyx.d(this.dateSystem);
      return hyx.c("dd/MM/yyyy - HH:mm").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getDiaPagamentoFormatted() {
    try {
      int i = ((hol)this.simulation.get(0)).g.a().get(5);
      return String.valueOf(i);
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public int getDiasUteis() {
    try {
      return Integer.parseInt(this.liberationDays);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public String getDiasUteisFormatted() {
    int i = getDiasUteis();
    if (i != -1) {
      Resources resources = MinhaConta.b().getResources();
      return (i == 0) ? resources.getString(2131296960) : resources.getQuantityString(2131820544, i, new Object[] { Integer.valueOf(i) });
    } 
    return "";
  }
  
  public String getFontePagadora() {
    try {
      return this.nameAgreement;
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getFontePagadoraFormatted() {
    return getFontePagadora().toUpperCase();
  }
  
  public float getInsurancePercentage() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).h.insurance);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public float getIof() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.d);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getIofFormatted() {
    try {
      return hyx.b().format(getIof());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getIofPercentage() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).h.iof);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getIofPercentageFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getIofPercentage()) }) + "%";
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public String getJurosMoratorioFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getJurosMoratorios()) }) + "%";
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getJurosMoratorios() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.h);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getLiberadoPercentageFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getRequestedPercentage()) }) + "%";
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public List<ConsignadoMatricula> getMatriculaList() {
    return this.consignadoSimulationResponse.getMatriculaList();
  }
  
  public String getMesPagamento() {
    try {
      Calendar calendar = ((hol)this.simulation.get(0)).g.a();
      null = hyx.c("MMMM").format(calendar.getTime());
      return null.substring(0, 1).toUpperCase() + null.substring(1);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getMessageError() {
    return "";
  }
  
  public String getMultaMoratorioFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getMultaMoratorios()) }) + "%";
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getMultaMoratorios() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.i);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getNomeConvenio() {
    return this.consignadoSimulationResponse.getNomeConvenio();
  }
  
  public String getNumeroContratoFormatted() {
    return "";
  }
  
  public float getOperationPercentage() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).h.operation);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public int getParcela() {
    try {
      return Integer.parseInt(((hol)this.simulation.get(0)).b);
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public String getParcelaFormatted() {
    try {
      return String.format("%sx", new Object[] { String.valueOf(getParcela()) });
    } catch (Exception exception) {
      return "0x";
    } 
  }
  
  public int getParcelaMax() {
    try {
      return Integer.parseInt(this.maxInstallmentsQuantity);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public int getParcelaMin() {
    try {
      return Integer.parseInt(this.minInstallmentsQuantity);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public String getParcelamentoAdicionalFormatted() {
    try {
      return hyx.b().format(getValorParcelamentoAdicional());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getRequestedPercentage() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).h.requested);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public ConsignadoRequiredData getRequiredData() {
    return this.consignadoSimulationResponse.getRequiredData();
  }
  
  public String getSeguroPercentageFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getInsurancePercentage()) }) + "%";
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public float getTaxaCETAno() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.b);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getTaxaCETBreakLineFormatted() {
    return getTaxaCETFormatted(true);
  }
  
  public String getTaxaCETFormatted() {
    return getTaxaCETFormatted(false);
  }
  
  protected String getTaxaCETFormatted(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaCETMes()) }));
    stringBuilder.append("% a.m. ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaCETAno()) }));
    stringBuilder.append("% a.a.");
    return stringBuilder.toString();
  }
  
  public float getTaxaCETMes() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.e);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public float getTaxaJurosAno() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.c);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getTaxaJurosBreakLineFormatted() {
    return getTaxaJurosFormatted(true);
  }
  
  public String getTaxaJurosFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaJurosMes()) }) + "%";
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getTaxaJurosFormatted(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaJurosMes()) }));
    stringBuilder.append("% a.m. ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaJurosAno()) }));
    stringBuilder.append("% a.a.");
    return stringBuilder.toString();
  }
  
  public float getTaxaJurosMes() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.f);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public float getTaxaJurosMesCustomer() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).f.d);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getTaxaJurosMesCustomerFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getTaxaJurosMesCustomer()) }) + "%";
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getTotalPagar() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.i);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getTotalPagarFormatted() {
    try {
      return hyx.b().format(getTotalPagar());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getTotalPercentageFormatted() {
    try {
      return hyx.a("%.2f", new Object[] { Float.valueOf(getOperationPercentage()) }) + "%";
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public int getType() {
    return 11;
  }
  
  public int getTypeSecure() {
    int i;
    try {
      i = Integer.parseInt(this.secureCode);
      if (i == 1)
        return 1; 
    } catch (Exception exception) {
      return 0;
    } 
    return (i == 2) ? 2 : 0;
  }
  
  public String getUltimoVencimentoFormatted() {
    try {
      Calendar calendar = ((hol)this.simulation.get(0)).g.b();
      return hyx.c("dd/MM/yyyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public float getValorAlteradoRefin() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.n);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public float getValorEmprestimo() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.b);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorEmprestimoFormatted() {
    try {
      return hyx.b().format(getValorEmprestimo());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorEntregue() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.n);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorEntregueFormatted() {
    try {
      return hyx.b().format(getValorEntregue());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorLimiteMax() {
    return this.consignadoSimulationResponse.getValorLimiteMax();
  }
  
  public float getValorLimiteMin() {
    return this.consignadoSimulationResponse.getValorLimiteMin();
  }
  
  public float getValorParcela() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.a);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorParcelaFormatted() {
    try {
      return hyx.b().format(getValorParcela());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorParcelaOutros() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.m);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public float getValorParcelamentoAdicional() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.l);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorParcelasOutrosFormatted() {
    try {
      return hyx.b().format(getValorParcelaOutros());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorPremioSeguroCP() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.f);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorPremioSeguroFormatted() {
    try {
      return (getTypeSecure() == 1) ? hyx.b().format(getValorPremioSeguroCP()) : ((getTypeSecure() == 2) ? hyx.b().format(getValorPremioSeguroCP()) : hyx.b().format(getValorPremioSeguroCP()));
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorPremioSeguroPrestamista() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.e);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorTotalComEncargosFormatted() {
    return "";
  }
  
  public float getValorTotalContracts() {
    try {
      return Float.parseFloat(this.contractsTotalValue);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorTotalContractsFormatted() {
    try {
      return hyx.b().format(getValorTotalContracts());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorTotalRefin() {
    try {
      return Float.parseFloat(((hol)this.simulation.get(0)).e.c);
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorTotalRefinFormatted() {
    try {
      return hyx.b().format(getValorTotalRefin());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getVencimentoFormatted() {
    try {
      Calendar calendar = ((hol)this.simulation.get(0)).g.a();
      return hyx.c("dd/MM/yyyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public boolean isEligivel() {
    return true;
  }
  
  public boolean isMorno() {
    return this.consignadoSimulationResponse.isMorno();
  }
  
  public boolean isRefinanciamento() {
    return !getContratos().isEmpty();
  }
  
  public boolean isRequiredDataFlag() {
    return this.consignadoSimulationResponse.isRequiredDataFlag();
  }
  
  public void setAverbationCode(String paramString) {
    this.consignadoSimulationResponse.setAverbationCode(paramString);
  }
  
  public ConsignadoCalculateResponse setConsignadoSimulationResponse(ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    this.consignadoSimulationResponse = paramConsignadoSimulationResponse;
    return this;
  }
  
  public ConsignadoCalculateResponse setConta(Conta paramConta) {
    this.conta = paramConta;
    return this;
  }
  
  public void setMorno() {
    this.consignadoSimulationResponse.setMorno();
  }
  
  public void setQuente() {
    this.consignadoSimulationResponse.setQuente();
  }
  
  public void setSimulation(ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    this.consignadoSimulationResponse.setSimulation(paramConsignadoSimulationResponse);
  }
  
  public void update() {
    this.consignadoSimulationResponse.update();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoCalculateResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */