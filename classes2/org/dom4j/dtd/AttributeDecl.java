package org.dom4j.dtd;

public class AttributeDecl implements Declaration {
  private String attributeName;
  
  private String elementName;
  
  private String type;
  
  private String value;
  
  private String valueDefault;
  
  public AttributeDecl() {}
  
  public AttributeDecl(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    this.elementName = paramString1;
    this.attributeName = paramString2;
    this.type = paramString3;
    this.value = paramString5;
    this.valueDefault = paramString4;
  }
  
  public String getAttributeName() {
    return this.attributeName;
  }
  
  public String getElementName() {
    return this.elementName;
  }
  
  public String getType() {
    return this.type;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public String getValueDefault() {
    return this.valueDefault;
  }
  
  public void setAttributeName(String paramString) {
    this.attributeName = paramString;
  }
  
  public void setElementName(String paramString) {
    this.elementName = paramString;
  }
  
  public void setType(String paramString) {
    this.type = paramString;
  }
  
  public void setValue(String paramString) {
    this.value = paramString;
  }
  
  public void setValueDefault(String paramString) {
    this.valueDefault = paramString;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer("<!ATTLIST ");
    stringBuffer.append(this.elementName);
    stringBuffer.append(" ");
    stringBuffer.append(this.attributeName);
    stringBuffer.append(" ");
    stringBuffer.append(this.type);
    stringBuffer.append(" ");
    if (this.valueDefault != null) {
      stringBuffer.append(this.valueDefault);
      if (this.valueDefault.equals("#FIXED")) {
        stringBuffer.append(" \"");
        stringBuffer.append(this.value);
        stringBuffer.append("\"");
      } 
      stringBuffer.append(">");
      return stringBuffer.toString();
    } 
    stringBuffer.append("\"");
    stringBuffer.append(this.value);
    stringBuffer.append("\"");
    stringBuffer.append(">");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dtd\AttributeDecl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */