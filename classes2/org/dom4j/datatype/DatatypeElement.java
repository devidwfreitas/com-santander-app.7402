package org.dom4j.datatype;

import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;

public class DatatypeElement extends DefaultElement implements SerializationContext, ValidationContext {
  private Object data;
  
  private XSDatatype datatype;
  
  public DatatypeElement(QName paramQName, int paramInt, XSDatatype paramXSDatatype) {
    super(paramQName, paramInt);
    this.datatype = paramXSDatatype;
  }
  
  public DatatypeElement(QName paramQName, XSDatatype paramXSDatatype) {
    super(paramQName);
    this.datatype = paramXSDatatype;
  }
  
  public Element addText(String paramString) {
    validate(paramString);
    return super.addText(paramString);
  }
  
  protected void childAdded(Node paramNode) {
    this.data = null;
    super.childAdded(paramNode);
  }
  
  protected void childRemoved(Node paramNode) {
    this.data = null;
    super.childRemoved(paramNode);
  }
  
  public String getBaseUri() {
    return null;
  }
  
  public Object getData() {
    String str;
    if (this.data == null) {
      str = getTextTrim();
      if (str != null && str.length() > 0) {
        if (this.datatype instanceof com.sun.msv.datatype.DatabindableDatatype) {
          this.data = this.datatype.createJavaObject(str, this);
          return this.data;
        } 
      } else {
        return this.data;
      } 
    } else {
      return this.data;
    } 
    this.data = this.datatype.createValue(str, this);
    return this.data;
  }
  
  public String getNamespacePrefix(String paramString) {
    Namespace namespace = getNamespaceForURI(paramString);
    return (namespace != null) ? namespace.getPrefix() : null;
  }
  
  public XSDatatype getXSDatatype() {
    return this.datatype;
  }
  
  public boolean isNotation(String paramString) {
    return false;
  }
  
  public boolean isUnparsedEntity(String paramString) {
    return true;
  }
  
  public String resolveNamespacePrefix(String paramString) {
    Namespace namespace = getNamespaceForPrefix(paramString);
    return (namespace != null) ? namespace.getURI() : null;
  }
  
  public void setData(Object paramObject) {
    String str = this.datatype.convertToLexicalValue(paramObject, this);
    validate(str);
    this.data = paramObject;
    setText(str);
  }
  
  public void setText(String paramString) {
    validate(paramString);
    super.setText(paramString);
  }
  
  public String toString() {
    return getClass().getName() + hashCode() + " [Element: <" + getQualifiedName() + " attributes: " + attributeList() + " data: " + getData() + " />]";
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\DatatypeElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */