package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

class NamedTypeResolver {
  protected Map<QName, DocumentFactory> complexTypeMap = new HashMap<QName, DocumentFactory>();
  
  protected DocumentFactory documentFactory;
  
  protected Map<Element, DocumentFactory> elementFactoryMap = new HashMap<Element, DocumentFactory>();
  
  protected Map<QName, XSDatatype> simpleTypeMap = new HashMap<QName, XSDatatype>();
  
  protected Map<Element, QName> typedElementMap = new HashMap<Element, QName>();
  
  NamedTypeResolver(DocumentFactory paramDocumentFactory) {
    this.documentFactory = paramDocumentFactory;
  }
  
  private QName getQName(String paramString) {
    return this.documentFactory.createQName(paramString);
  }
  
  private QName getQNameOfSchemaElement(Element paramElement) {
    return getQName(paramElement.attributeValue("name"));
  }
  
  void registerComplexType(QName paramQName, DocumentFactory paramDocumentFactory) {
    this.complexTypeMap.put(paramQName, paramDocumentFactory);
  }
  
  void registerSimpleType(QName paramQName, XSDatatype paramXSDatatype) {
    this.simpleTypeMap.put(paramQName, paramXSDatatype);
  }
  
  void registerTypedElement(Element paramElement, QName paramQName, DocumentFactory paramDocumentFactory) {
    this.typedElementMap.put(paramElement, paramQName);
    this.elementFactoryMap.put(paramElement, paramDocumentFactory);
  }
  
  void resolveElementTypes() {
    for (Map.Entry<Element, QName> entry : this.typedElementMap.entrySet()) {
      Element element = (Element)entry.getKey();
      QName qName1 = getQNameOfSchemaElement(element);
      QName qName2 = (QName)entry.getValue();
      if (this.complexTypeMap.containsKey(qName2)) {
        qName1.setDocumentFactory(this.complexTypeMap.get(qName2));
        continue;
      } 
      if (this.simpleTypeMap.containsKey(qName2)) {
        XSDatatype xSDatatype = this.simpleTypeMap.get(qName2);
        DocumentFactory documentFactory = this.elementFactoryMap.get(element);
        if (documentFactory instanceof DatatypeElementFactory)
          ((DatatypeElementFactory)documentFactory).setChildElementXSDatatype(qName1, xSDatatype); 
      } 
    } 
  }
  
  void resolveNamedTypes() {
    resolveElementTypes();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\NamedTypeResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */