package org.dom4j.datatype;

import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;

public class DatatypeAttribute extends AbstractAttribute implements SerializationContext, ValidationContext {
  private Object data;
  
  private XSDatatype datatype;
  
  private Element parent;
  
  private QName qname;
  
  private String text;
  
  public DatatypeAttribute(QName paramQName, XSDatatype paramXSDatatype) {
    this.qname = paramQName;
    this.datatype = paramXSDatatype;
  }
  
  public DatatypeAttribute(QName paramQName, XSDatatype paramXSDatatype, String paramString) {
    this.qname = paramQName;
    this.datatype = paramXSDatatype;
    this.text = paramString;
    this.data = convertToValue(paramString);
  }
  
  protected Object convertToValue(String paramString) {
    return (this.datatype instanceof com.sun.msv.datatype.DatabindableDatatype) ? this.datatype.createJavaObject(paramString, this) : this.datatype.createValue(paramString, this);
  }
  
  public String getBaseUri() {
    return null;
  }
  
  public Object getData() {
    return this.data;
  }
  
  public String getNamespacePrefix(String paramString) {
    Element element = getParent();
    if (element != null) {
      Namespace namespace = element.getNamespaceForURI(paramString);
      if (namespace != null)
        return namespace.getPrefix(); 
    } 
    return null;
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public QName getQName() {
    return this.qname;
  }
  
  public String getValue() {
    return this.text;
  }
  
  public XSDatatype getXSDatatype() {
    return this.datatype;
  }
  
  public boolean isNotation(String paramString) {
    return false;
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public boolean isUnparsedEntity(String paramString) {
    return true;
  }
  
  public String resolveNamespacePrefix(String paramString) {
    if (paramString.equals(getNamespacePrefix()))
      return getNamespaceURI(); 
    Element element = getParent();
    if (element != null) {
      Namespace namespace = element.getNamespaceForPrefix(paramString);
      if (namespace != null)
        return namespace.getURI(); 
    } 
    return null;
  }
  
  public void setData(Object paramObject) {
    String str = this.datatype.convertToLexicalValue(paramObject, this);
    validate(str);
    this.text = str;
    this.data = paramObject;
  }
  
  public void setParent(Element paramElement) {
    this.parent = paramElement;
  }
  
  public void setValue(String paramString) {
    validate(paramString);
    this.text = paramString;
    this.data = convertToValue(paramString);
  }
  
  public boolean supportsParent() {
    return true;
  }
  
  public String toString() {
    return getClass().getName() + hashCode() + " [Attribute: name " + getQualifiedName() + " value \"" + getValue() + "\" data: " + getData() + "]";
  }
  
  protected void validate(String paramString) {
    try {
      this.datatype.checkValid(paramString, this);
      return;
    } catch (DatatypeException datatypeException) {
      throw new IllegalArgumentException(datatypeException.getMessage());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\DatatypeAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */