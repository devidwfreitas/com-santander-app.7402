package org.dom4j.tree;

import java.util.List;
import org.dom4j.dtd.ExternalDeclaration;
import org.dom4j.dtd.InternalDeclaration;

public class DefaultDocumentType extends AbstractDocumentType {
  protected String elementName;
  
  private List<ExternalDeclaration> externalDeclarations;
  
  private List<InternalDeclaration> internalDeclarations;
  
  private String publicID;
  
  private String systemID;
  
  public DefaultDocumentType() {}
  
  public DefaultDocumentType(String paramString1, String paramString2) {
    this.elementName = paramString1;
    this.systemID = paramString2;
  }
  
  public DefaultDocumentType(String paramString1, String paramString2, String paramString3) {
    this.elementName = paramString1;
    this.publicID = paramString2;
    this.systemID = paramString3;
  }
  
  public String getElementName() {
    return this.elementName;
  }
  
  public List<ExternalDeclaration> getExternalDeclarations() {
    return this.externalDeclarations;
  }
  
  public List<InternalDeclaration> getInternalDeclarations() {
    return this.internalDeclarations;
  }
  
  public String getPublicID() {
    return this.publicID;
  }
  
  public String getSystemID() {
    return this.systemID;
  }
  
  public void setElementName(String paramString) {
    this.elementName = paramString;
  }
  
  public void setExternalDeclarations(List<ExternalDeclaration> paramList) {
    this.externalDeclarations = paramList;
  }
  
  public void setInternalDeclarations(List<InternalDeclaration> paramList) {
    this.internalDeclarations = paramList;
  }
  
  public void setPublicID(String paramString) {
    this.publicID = paramString;
  }
  
  public void setSystemID(String paramString) {
    this.systemID = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultDocumentType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */