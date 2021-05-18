package org.dom4j.tree;

import java.io.Writer;
import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.Visitor;

public abstract class AbstractAttribute extends AbstractNode implements Attribute {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    return getQualifiedName() + "=\"" + getValue() + "\"";
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultAttribute(paramElement, getQName(), getValue());
  }
  
  public Object getData() {
    return getValue();
  }
  
  public String getName() {
    return getQName().getName();
  }
  
  public Namespace getNamespace() {
    return getQName().getNamespace();
  }
  
  public String getNamespacePrefix() {
    return getQName().getNamespacePrefix();
  }
  
  public String getNamespaceURI() {
    return getQName().getNamespaceURI();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.ATTRIBUTE_NODE;
  }
  
  public String getPath(Element paramElement) {
    StringBuffer stringBuffer = new StringBuffer();
    Element element = getParent();
    if (element != null && element != paramElement) {
      stringBuffer.append(element.getPath(paramElement));
      stringBuffer.append("/");
    } 
    stringBuffer.append("@");
    String str1 = getNamespaceURI();
    String str2 = getNamespacePrefix();
    if (str1 == null || str1.length() == 0 || str2 == null || str2.length() == 0) {
      stringBuffer.append(getName());
      return stringBuffer.toString();
    } 
    stringBuffer.append(getQualifiedName());
    return stringBuffer.toString();
  }
  
  public String getQualifiedName() {
    return getQName().getQualifiedName();
  }
  
  public String getText() {
    return getValue();
  }
  
  public String getUniquePath(Element paramElement) {
    StringBuffer stringBuffer = new StringBuffer();
    Element element = getParent();
    if (element != null && element != paramElement) {
      stringBuffer.append(element.getUniquePath(paramElement));
      stringBuffer.append("/");
    } 
    stringBuffer.append("@");
    String str1 = getNamespaceURI();
    String str2 = getNamespacePrefix();
    if (str1 == null || str1.length() == 0 || str2 == null || str2.length() == 0) {
      stringBuffer.append(getName());
      return stringBuffer.toString();
    } 
    stringBuffer.append(getQualifiedName());
    return stringBuffer.toString();
  }
  
  public void setData(Object paramObject) {
    if (paramObject == null) {
      paramObject = null;
    } else {
      paramObject = paramObject.toString();
    } 
    setValue((String)paramObject);
  }
  
  public void setNamespace(Namespace paramNamespace) {
    throw new UnsupportedOperationException("This Attribute is read only and cannot be changed");
  }
  
  public void setText(String paramString) {
    setValue(paramString);
  }
  
  public void setValue(String paramString) {
    throw new UnsupportedOperationException("This Attribute is read only and cannot be changed");
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [Attribute: name ");
    paramStringBuilder.append(getQualifiedName());
    paramStringBuilder.append(" value \"");
    paramStringBuilder.append(getValue());
    paramStringBuilder.append("\"]");
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write(getQualifiedName());
    paramWriter.write("=\"");
    paramWriter.write(getValue());
    paramWriter.write("\"");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */