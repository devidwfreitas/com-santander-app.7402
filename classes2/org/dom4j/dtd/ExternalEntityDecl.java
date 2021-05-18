package org.dom4j.dtd;

public class ExternalEntityDecl implements Declaration {
  private String name;
  
  private String publicID;
  
  private String systemID;
  
  public ExternalEntityDecl() {}
  
  public ExternalEntityDecl(String paramString1, String paramString2, String paramString3) {
    this.name = paramString1;
    this.publicID = paramString2;
    this.systemID = paramString3;
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getPublicID() {
    return this.publicID;
  }
  
  public String getSystemID() {
    return this.systemID;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
  
  public void setPublicID(String paramString) {
    this.publicID = paramString;
  }
  
  public void setSystemID(String paramString) {
    this.systemID = paramString;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer("<!ENTITY ");
    if (this.name.startsWith("%")) {
      stringBuffer.append("% ");
      stringBuffer.append(this.name.substring(1));
    } else {
      stringBuffer.append(this.name);
    } 
    if (this.publicID != null) {
      stringBuffer.append(" PUBLIC \"");
      stringBuffer.append(this.publicID);
      stringBuffer.append("\" ");
      if (this.systemID != null) {
        stringBuffer.append("\"");
        stringBuffer.append(this.systemID);
        stringBuffer.append("\" ");
      } 
      stringBuffer.append(">");
      return stringBuffer.toString();
    } 
    if (this.systemID != null) {
      stringBuffer.append(" SYSTEM \"");
      stringBuffer.append(this.systemID);
      stringBuffer.append("\" ");
    } 
    stringBuffer.append(">");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dtd\ExternalEntityDecl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */