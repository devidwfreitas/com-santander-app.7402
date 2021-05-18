package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;

public class DefaultAttribute extends FlyweightAttribute {
  private Element parent;
  
  public DefaultAttribute(String paramString1, String paramString2) {
    super(paramString1, paramString2);
  }
  
  public DefaultAttribute(String paramString1, String paramString2, Namespace paramNamespace) {
    super(paramString1, paramString2, paramNamespace);
  }
  
  public DefaultAttribute(Element paramElement, String paramString1, String paramString2, Namespace paramNamespace) {
    super(paramString1, paramString2, paramNamespace);
    this.parent = paramElement;
  }
  
  public DefaultAttribute(Element paramElement, QName paramQName, String paramString) {
    super(paramQName, paramString);
    this.parent = paramElement;
  }
  
  public DefaultAttribute(QName paramQName) {
    super(paramQName);
  }
  
  public DefaultAttribute(QName paramQName, String paramString) {
    super(paramQName, paramString);
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void setParent(Element paramElement) {
    this.parent = paramElement;
  }
  
  public void setValue(String paramString) {
    this.value = paramString;
  }
  
  public boolean supportsParent() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */