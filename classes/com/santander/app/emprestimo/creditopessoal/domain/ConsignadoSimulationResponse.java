package com.santander.app.emprestimo.creditopessoal.domain;

import android.content.res.Resources;
import com.santander.app.MinhaConta;
import eks;
import hok;
import hxq;
import hyx;
import java.util.ArrayList;
import java.util.List;

public class ConsignadoSimulationResponse extends hok implements ConsignadoSetter, hxq {
  protected String averbationCode;
  
  @eks(a = "contract")
  private List<ConsignadoContract> contract = null;
  
  protected boolean forceQuente;
  
  @eks(a = "isEligible")
  private String isEligible;
  
  @eks(a = "liberationDays")
  private String liberationDays;
  
  @eks(a = "maxInstalmentQuantity")
  private String maxInstalmentQuantity;
  
  @eks(a = "maxInstalmentValue")
  private String maxInstalmentValue;
  
  @eks(a = "maxOfferValue")
  private String maxOfferValue;
  
  @eks(a = "minInstalmentQuantity")
  private String minInstalmentQuantity;
  
  @eks(a = "minInstalmentValue")
  private String minInstalmentValue;
  
  @eks(a = "minOfferValue")
  private String minOfferValue;
  
  @eks(a = "nameAgreement")
  private String nameAgreement;
  
  @eks(a = "registrationData")
  private List<ConsignadoMatricula> registrationData = null;
  
  @eks(a = "requiredData")
  private ConsignadoRequiredData requiredData;
  
  @eks(a = "requiredDataFlag")
  private String requiredDataFlag;
  
  protected ConsignadoSimulationResponse requiredDataResponse;
  
  public List<ConsignadoContract> getContratos() {
    return (this.contract != null) ? this.contract : new ArrayList<ConsignadoContract>();
  }
  
  public List<ConsignadoCalculateContract> getContratosCalculate() {
    return null;
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
  
  public List<ConsignadoMatricula> getMatriculaList() {
    return (this.registrationData != null) ? this.registrationData : new ArrayList<ConsignadoMatricula>();
  }
  
  public String getNomeConvenio() {
    return String.valueOf(this.nameAgreement);
  }
  
  public String getParcelaFormatted() {
    return null;
  }
  
  public int getParcelaMax() {
    try {
      return Integer.parseInt(this.maxInstalmentQuantity);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public int getParcelaMin() {
    try {
      return Integer.parseInt(this.minInstalmentQuantity);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public String getParcelamentoAdicionalFormatted() {
    return null;
  }
  
  public ConsignadoRequiredData getRequiredData() {
    return this.requiredData;
  }
  
  public String getTaxaJurosFormatted() {
    return null;
  }
  
  public int getTypeSecure() {
    return 2;
  }
  
  public float getValorLimiteMax() {
    try {
      return hyx.f(this.maxOfferValue);
    } catch (Exception exception) {
      return -1.0F;
    } 
  }
  
  public float getValorLimiteMin() {
    try {
      return hyx.f(this.minOfferValue);
    } catch (Exception exception) {
      return -1.0F;
    } 
  }
  
  public String getValorParcelaFormatted() {
    return null;
  }
  
  public String getValorParcelasOutrosFormatted() {
    return null;
  }
  
  public boolean isEligivel() {
    return this.isEligible.equalsIgnoreCase("true");
  }
  
  public boolean isMorno() {
    return (isRequiredDataFlag() || (getMatriculaList().size() > 1 && !this.forceQuente));
  }
  
  public boolean isRefinanciamento() {
    return !getContratos().isEmpty();
  }
  
  public boolean isRequiredDataFlag() {
    return (this.requiredDataFlag != null && this.requiredDataFlag.equalsIgnoreCase("true"));
  }
  
  public void setAverbationCode(String paramString) {
    this.averbationCode = paramString;
  }
  
  public void setMorno() {
    this.requiredDataFlag = "true";
    this.forceQuente = false;
  }
  
  public void setQuente() {
    this.requiredDataFlag = "false";
    this.forceQuente = true;
  }
  
  public void setSimulation(ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    if (paramConsignadoSimulationResponse == null)
      return; 
    this.requiredDataResponse = paramConsignadoSimulationResponse;
  }
  
  public void update() {
    if (this.requiredDataResponse == null)
      return; 
    this.maxInstalmentQuantity = this.requiredDataResponse.maxInstalmentQuantity;
    this.minInstalmentQuantity = this.requiredDataResponse.minInstalmentQuantity;
    this.maxOfferValue = this.requiredDataResponse.maxOfferValue;
    this.minOfferValue = this.requiredDataResponse.minOfferValue;
    this.requiredDataResponse = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoSimulationResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */