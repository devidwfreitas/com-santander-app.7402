package org.dom4j.bean;

import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;

public class BeanElement extends DefaultElement {
  private static final DocumentFactory DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();
  
  private Object bean;
  
  public BeanElement(String paramString, Object paramObject) {
    this(DOCUMENT_FACTORY.createQName(paramString), paramObject);
  }
  
  public BeanElement(String paramString, Namespace paramNamespace, Object paramObject) {
    this(DOCUMENT_FACTORY.createQName(paramString, paramNamespace), paramObject);
  }
  
  public BeanElement(QName paramQName) {
    super(paramQName);
  }
  
  public BeanElement(QName paramQName, Object paramObject) {
    super(paramQName);
    this.bean = paramObject;
  }
  
  public Element addAttribute(String paramString1, String paramString2) {
    Attribute attribute = attribute(paramString1);
    if (attribute != null)
      attribute.setValue(paramString2); 
    return (Element)this;
  }
  
  public Element addAttribute(QName paramQName, String paramString) {
    Attribute attribute = attribute(paramQName);
    if (attribute != null)
      attribute.setValue(paramString); 
    return (Element)this;
  }
  
  public Attribute attribute(String paramString) {
    return getBeanAttributeList().attribute(paramString);
  }
  
  public Attribute attribute(QName paramQName) {
    return getBeanAttributeList().attribute(paramQName);
  }
  
  protected List createAttributeList() {
    return new BeanAttributeList(this);
  }
  
  protected List createAttributeList(int paramInt) {
    return new BeanAttributeList(this);
  }
  
  protected BeanAttributeList getBeanAttributeList() {
    return (BeanAttributeList)attributeList();
  }
  
  public Object getData() {
    return this.bean;
  }
  
  protected DocumentFactory getDocumentFactory() {
    return DOCUMENT_FACTORY;
  }
  
  public void setAttributes(List paramList) {
    throw new UnsupportedOperationException("Not implemented yet.");
  }
  
  public void setAttributes(Attributes paramAttributes, NamespaceStack paramNamespaceStack, boolean paramBoolean) {
    String str1;
    String str2 = paramAttributes.getValue("class");
    if (str2 != null) {
      try {
        setData(Class.forName(str2, true, BeanElement.class.getClassLoader()).newInstance());
        int i;
        for (i = 0; i < paramAttributes.getLength(); i++) {
          str1 = paramAttributes.getLocalName(i);
          if (!"class".equalsIgnoreCase(str1))
            addAttribute(str1, paramAttributes.getValue(i)); 
        } 
      } catch (Exception exception) {
        ((BeanDocumentFactory)getDocumentFactory()).handleException(exception);
      } 
      return;
    } 
    super.setAttributes((Attributes)exception, (NamespaceStack)str1, paramBoolean);
  }
  
  public void setData(Object paramObject) {
    this.bean = paramObject;
    setAttributeList(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\bean\BeanElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */