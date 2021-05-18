package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

public class DatatypeElementFactory extends DocumentFactory {
  private Map attributeXSDatatypes = new HashMap<Object, Object>();
  
  private Map childrenXSDatatypes = new HashMap<Object, Object>();
  
  private QName elementQName;
  
  public DatatypeElementFactory(QName paramQName) {
    this.elementQName = paramQName;
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    XSDatatype xSDatatype = getAttributeXSDatatype(paramQName);
    return (Attribute)((xSDatatype == null) ? super.createAttribute(paramElement, paramQName, paramString) : new DatatypeAttribute(paramQName, xSDatatype, paramString));
  }
  
  public Element createElement(QName paramQName) {
    XSDatatype xSDatatype = getChildElementXSDatatype(paramQName);
    if (xSDatatype != null)
      return (Element)new DatatypeElement(paramQName, xSDatatype); 
    DocumentFactory documentFactory = paramQName.getDocumentFactory();
    if (documentFactory instanceof DatatypeElementFactory) {
      XSDatatype xSDatatype1 = ((DatatypeElementFactory)documentFactory).getChildElementXSDatatype(paramQName);
      if (xSDatatype1 != null)
        return (Element)new DatatypeElement(paramQName, xSDatatype1); 
    } 
    return super.createElement(paramQName);
  }
  
  public XSDatatype getAttributeXSDatatype(QName paramQName) {
    return (XSDatatype)this.attributeXSDatatypes.get(paramQName);
  }
  
  public XSDatatype getChildElementXSDatatype(QName paramQName) {
    return (XSDatatype)this.childrenXSDatatypes.get(paramQName);
  }
  
  public QName getQName() {
    return this.elementQName;
  }
  
  public void setAttributeXSDatatype(QName paramQName, XSDatatype paramXSDatatype) {
    this.attributeXSDatatypes.put(paramQName, paramXSDatatype);
  }
  
  public void setChildElementXSDatatype(QName paramQName, XSDatatype paramXSDatatype) {
    this.childrenXSDatatypes.put(paramQName, paramXSDatatype);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\DatatypeElementFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */