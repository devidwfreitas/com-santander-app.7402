package org.dom4j.dtd;

public class ElementDecl implements Declaration {
  private String model;
  
  private String name;
  
  public ElementDecl() {}
  
  public ElementDecl(String paramString1, String paramString2) {
    this.name = paramString1;
    this.model = paramString2;
  }
  
  public String getModel() {
    return this.model;
  }
  
  public String getName() {
    return this.name;
  }
  
  public void setModel(String paramString) {
    this.model = paramString;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
  
  public String toString() {
    return "<!ELEMENT " + this.name + " " + this.model + ">";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dtd\ElementDecl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */