public class fvu {
  private fvv errorDetail = null;
  
  private String faultactor = null;
  
  private String faultcode = null;
  
  private String faultstring = null;
  
  public fvv getErrorDetail() {
    return this.errorDetail;
  }
  
  public String getFaultactor() {
    return this.faultactor;
  }
  
  public String getFaultcode() {
    return this.faultcode;
  }
  
  public String getFaultstring() {
    return this.faultstring;
  }
  
  public boolean hasError() {
    return (this.faultcode != null || this.faultstring != null || this.errorDetail != null);
  }
  
  public boolean hasFaultError() {
    return (this.faultcode != null || this.faultstring != null);
  }
  
  public void setError(fvu paramfvu) {
    if (paramfvu != null) {
      this.errorDetail = paramfvu.getErrorDetail();
      this.faultactor = paramfvu.getFaultactor();
      this.faultcode = paramfvu.getFaultcode();
      this.faultstring = paramfvu.getFaultstring();
    } 
  }
  
  public void setErrorDetail(fvv paramfvv) {
    this.errorDetail = paramfvv;
  }
  
  public void setFaultactor(String paramString) {
    this.faultactor = paramString;
  }
  
  public void setFaultcode(String paramString) {
    this.faultcode = paramString;
  }
  
  public void setFaultstring(String paramString) {
    this.faultstring = paramString;
  }
  
  public String toString() {
    return (getErrorDetail() != null) ? getErrorDetail().toString() : getFaultstring();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */