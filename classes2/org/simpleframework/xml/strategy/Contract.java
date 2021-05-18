package org.simpleframework.xml.strategy;

class Contract {
  private String label;
  
  private String length;
  
  private String mark;
  
  private String refer;
  
  public Contract(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.length = paramString4;
    this.label = paramString3;
    this.refer = paramString2;
    this.mark = paramString1;
  }
  
  public String getIdentity() {
    return this.mark;
  }
  
  public String getLabel() {
    return this.label;
  }
  
  public String getLength() {
    return this.length;
  }
  
  public String getReference() {
    return this.refer;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Contract.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */