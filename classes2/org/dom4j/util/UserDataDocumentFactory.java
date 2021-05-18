package org.dom4j.util;

import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

public class UserDataDocumentFactory extends DocumentFactory {
  protected static transient UserDataDocumentFactory singleton = new UserDataDocumentFactory();
  
  public static DocumentFactory getInstance() {
    return singleton;
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return (Attribute)new UserDataAttribute(paramQName, paramString);
  }
  
  public Element createElement(QName paramQName) {
    return (Element)new UserDataElement(paramQName);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\UserDataDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */