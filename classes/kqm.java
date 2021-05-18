import java.util.List;

public enum kqm {
  INSTANCE;
  
  @eks(a = "mAssistances")
  private List<kqd> mAssistances;
  
  @eks(a = "mCoverages")
  private List<kqo> mCoverages;
  
  static {
    $VALUES = new kqm[] { INSTANCE };
  }
  
  public List<kqd> getmAssistances() {
    return this.mAssistances;
  }
  
  public List<kqo> getmCoverages() {
    return this.mCoverages;
  }
  
  public void setmAssistances(List<kqd> paramList) {
    this.mAssistances = paramList;
  }
  
  public void setmCoverages(List<kqo> paramList) {
    this.mCoverages = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kqm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */