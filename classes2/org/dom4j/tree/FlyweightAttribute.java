package org.dom4j.tree;

import org.dom4j.Namespace;
import org.dom4j.QName;

public class FlyweightAttribute extends AbstractAttribute {
  private QName qname;
  
  protected String value;
  
  public FlyweightAttribute(String paramString1, String paramString2) {
    this.qname = getDocumentFactory().createQName(paramString1);
    this.value = paramString2;
  }
  
  public FlyweightAttribute(String paramString1, String paramString2, Namespace paramNamespace) {
    this.qname = getDocumentFactory().createQName(paramString1, paramNamespace);
    this.value = paramString2;
  }
  
  public FlyweightAttribute(QName paramQName) {
    this.qname = paramQName;
  }
  
  public FlyweightAttribute(QName paramQName, String paramString) {
    this.qname = paramQName;
    this.value = paramString;
  }
  
  public QName getQName() {
    return this.qname;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */