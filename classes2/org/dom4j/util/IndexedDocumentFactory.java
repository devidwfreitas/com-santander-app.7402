package org.dom4j.util;

import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

public class IndexedDocumentFactory extends DocumentFactory {
  protected static transient IndexedDocumentFactory singleton = new IndexedDocumentFactory();
  
  public static DocumentFactory getInstance() {
    return singleton;
  }
  
  public Element createElement(QName paramQName) {
    return (Element)new IndexedElement(paramQName);
  }
  
  public Element createElement(QName paramQName, int paramInt) {
    return (Element)new IndexedElement(paramQName, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\IndexedDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */