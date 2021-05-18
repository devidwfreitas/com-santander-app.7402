package org.dom4j.xpp;

import java.util.ArrayList;
import java.util.Iterator;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractElement;
import org.gjt.xpp.XmlStartTag;

public class ProxyXmlStartTag implements XmlStartTag {
  private Element element;
  
  private DocumentFactory factory = DocumentFactory.getInstance();
  
  public ProxyXmlStartTag() {}
  
  public ProxyXmlStartTag(Element paramElement) {
    this.element = paramElement;
  }
  
  public void addAttribute(String paramString1, String paramString2, String paramString3, String paramString4) {
    QName qName = QName.get(paramString3, paramString1);
    this.element.addAttribute(qName, paramString4);
  }
  
  public void addAttribute(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    if (paramBoolean) {
      paramString2 = "";
      int i = paramString3.indexOf(':');
      if (i > 0)
        paramString2 = paramString3.substring(0, i); 
      this.element.addNamespace(paramString2, paramString1);
      return;
    } 
    QName qName = QName.get(paramString3, paramString1);
    this.element.addAttribute(qName, paramString4);
  }
  
  public void ensureAttributesCapacity(int paramInt) {
    if (this.element instanceof AbstractElement)
      ((AbstractElement)this.element).ensureAttributesCapacity(paramInt); 
  }
  
  public int getAttributeCount() {
    return (this.element != null) ? this.element.attributeCount() : 0;
  }
  
  public String getAttributeLocalName(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null)
        return attribute.getName(); 
    } 
    return null;
  }
  
  public String getAttributeNamespaceUri(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null)
        return attribute.getNamespaceURI(); 
    } 
    return null;
  }
  
  public String getAttributePrefix(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null) {
        String str = attribute.getNamespacePrefix();
        if (str != null && str.length() > 0)
          return str; 
      } 
    } 
    return null;
  }
  
  public String getAttributeRawName(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null)
        return attribute.getQualifiedName(); 
    } 
    return null;
  }
  
  public String getAttributeValue(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null)
        return attribute.getValue(); 
    } 
    return null;
  }
  
  public String getAttributeValueFromName(String paramString1, String paramString2) {
    if (this.element != null) {
      Iterator<Attribute> iterator = this.element.attributeIterator();
      while (iterator.hasNext()) {
        Attribute attribute = iterator.next();
        if (paramString1.equals(attribute.getNamespaceURI()) && paramString2.equals(attribute.getName()))
          return attribute.getValue(); 
      } 
    } 
    return null;
  }
  
  public String getAttributeValueFromRawName(String paramString) {
    if (this.element != null) {
      Iterator<Attribute> iterator = this.element.attributeIterator();
      while (iterator.hasNext()) {
        Attribute attribute = iterator.next();
        if (paramString.equals(attribute.getQualifiedName()))
          return attribute.getValue(); 
      } 
    } 
    return null;
  }
  
  public DocumentFactory getDocumentFactory() {
    return this.factory;
  }
  
  public Element getElement() {
    return this.element;
  }
  
  public String getLocalName() {
    return this.element.getName();
  }
  
  public String getNamespaceUri() {
    return this.element.getNamespaceURI();
  }
  
  public String getPrefix() {
    return this.element.getNamespacePrefix();
  }
  
  public String getRawName() {
    return this.element.getQualifiedName();
  }
  
  public boolean isAttributeNamespaceDeclaration(int paramInt) {
    if (this.element != null) {
      Attribute attribute = this.element.attribute(paramInt);
      if (attribute != null)
        return "xmlns".equals(attribute.getNamespacePrefix()); 
    } 
    return false;
  }
  
  public void modifyTag(String paramString1, String paramString2, String paramString3) {
    this.element = this.factory.createElement(paramString3, paramString1);
  }
  
  public boolean removeAttributeByName(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean removeAttributeByRawName(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void removeAttributes() {
    if (this.element != null)
      this.element.setAttributes(new ArrayList()); 
  }
  
  public void resetStartTag() {
    this.element = null;
  }
  
  public void resetTag() {
    this.element = null;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\xpp\ProxyXmlStartTag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */