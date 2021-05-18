import java.util.ArrayList;
import java.util.List;

public enum ksq {
  INSTANCE;
  
  private List<kpw> beneficiaries = new ArrayList<kpw>();
  
  private kqj contactData = new kqj();
  
  private krg detailsResponse = new krg();
  
  private String familyId;
  
  private ktj getPreporsalResp = new ktj();
  
  private kri idealProductResponse = new kri();
  
  private List<ksv> paymentList = new ArrayList<ksv>();
  
  private List<krt> questions = new ArrayList<krt>();
  
  private krz quotationSelected = new krz();
  
  static {
    $VALUES = new ksq[] { INSTANCE };
  }
  
  public void clearData() {
    this.beneficiaries.clear();
    this.questions.clear();
    this.contactData = new kqj();
    this.quotationSelected = new krz();
    this.getPreporsalResp = new ktj();
    this.detailsResponse = new krg();
    this.idealProductResponse = new kri();
    this.familyId = "";
    this.paymentList.clear();
  }
  
  public List<kpw> getBeneficiaries() {
    return this.beneficiaries;
  }
  
  public kqj getContactData() {
    return this.contactData;
  }
  
  public krg getDetailsResponse() {
    return this.detailsResponse;
  }
  
  public String getFamilyId() {
    return this.familyId;
  }
  
  public ktj getGetPreporsalResp() {
    return this.getPreporsalResp;
  }
  
  public kri getIdealProductResponse() {
    return this.idealProductResponse;
  }
  
  public List<ksv> getPaymentList() {
    return this.paymentList;
  }
  
  public ktj getPreporsalResp() {
    return this.getPreporsalResp;
  }
  
  public List<krt> getQuestions() {
    return this.questions;
  }
  
  public krz getQuotationSelected() {
    return this.quotationSelected;
  }
  
  public void setBeneficiaries(List<kpw> paramList) {
    this.beneficiaries = paramList;
  }
  
  public void setContactData(kqj paramkqj) {
    this.contactData = paramkqj;
  }
  
  public void setDetailsResponse(krg paramkrg) {
    this.detailsResponse = paramkrg;
  }
  
  public void setFamilyId(String paramString) {
    this.familyId = paramString;
  }
  
  public void setGetPreporsalResp(ktj paramktj) {
    this.getPreporsalResp = paramktj;
  }
  
  public void setIdealProductResponse(kri paramkri) {
    this.idealProductResponse = paramkri;
  }
  
  public void setPaymentList(List<ksv> paramList) {
    this.paymentList = paramList;
  }
  
  public void setQuestions(List<krt> paramList) {
    this.questions = paramList;
  }
  
  public void setQuotationSelected(krz paramkrz) {
    this.quotationSelected = paramkrz;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ksq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */