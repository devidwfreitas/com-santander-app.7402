package org.dom4j.bean;

import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;
import org.xml.sax.Attributes;

public class BeanDocumentFactory extends DocumentFactory {
  private static BeanDocumentFactory singleton = new BeanDocumentFactory();
  
  public static DocumentFactory getInstance() {
    return singleton;
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return (Attribute)new DefaultAttribute(paramQName, paramString);
  }
  
  protected Object createBean(QName paramQName) {
    return null;
  }
  
  protected Object createBean(QName paramQName, Attributes paramAttributes) {
    String str = paramAttributes.getValue("class");
    if (str != null)
      try {
        return Class.forName(str, true, BeanDocumentFactory.class.getClassLoader()).newInstance();
      } catch (Exception exception) {
        handleException(exception);
      }  
    return null;
  }
  
  public Element createElement(QName paramQName) {
    Object object = createBean(paramQName);
    return (Element)((object == null) ? new BeanElement(paramQName) : new BeanElement(paramQName, object));
  }
  
  public Element createElement(QName paramQName, Attributes paramAttributes) {
    Object object = createBean(paramQName, paramAttributes);
    return (Element)((object == null) ? new BeanElement(paramQName) : new BeanElement(paramQName, object));
  }
  
  protected void handleException(Exception paramException) {
    System.out.println("#### Warning: couldn't create bean: " + paramException);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\bean\BeanDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */