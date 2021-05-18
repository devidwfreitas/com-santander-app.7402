package org.jaxen;

import java.io.Serializable;

class QualifiedName implements Serializable {
  private static final long serialVersionUID = 2734958615642751535L;
  
  private String localName;
  
  private String namespaceURI;
  
  QualifiedName(String paramString1, String paramString2) {
    String str = paramString1;
    if (paramString1 == null)
      str = ""; 
    this.namespaceURI = str;
    this.localName = paramString2;
  }
  
  public boolean equals(Object paramObject) {
    paramObject = paramObject;
    return (this.namespaceURI.equals(((QualifiedName)paramObject).namespaceURI) && ((QualifiedName)paramObject).localName.equals(this.localName));
  }
  
  String getClarkForm() {
    return "".equals(this.namespaceURI) ? this.localName : ("{" + this.namespaceURI + "}" + ":" + this.localName);
  }
  
  public int hashCode() {
    return this.localName.hashCode() ^ this.namespaceURI.hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\QualifiedName.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */