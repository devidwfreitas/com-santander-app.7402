package org.dom4j.tree;

import java.io.Serializable;
import java.io.Writer;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.NodeType;
import org.dom4j.XPath;
import org.dom4j.rule.Pattern;

public abstract class AbstractNode implements Serializable, Cloneable, Node {
  private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
  
  public Node asXPathResult(Element paramElement) {
    return supportsParent() ? this : createXPathResult(paramElement);
  }
  
  public AbstractNode clone() {
    if (isReadOnly())
      return this; 
    try {
      AbstractNode abstractNode = (AbstractNode)super.clone();
      abstractNode.setParent((Element)null);
      abstractNode.setDocument((Document)null);
      return abstractNode;
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      throw new RuntimeException("This should never happen. Caught: ", cloneNotSupportedException);
    } 
  }
  
  public Pattern createPattern(String paramString) {
    return getDocumentFactory().createPattern(paramString);
  }
  
  public XPath createXPath(String paramString) {
    return getDocumentFactory().createXPath(paramString);
  }
  
  public NodeFilter createXPathFilter(String paramString) {
    return getDocumentFactory().createXPathFilter(paramString);
  }
  
  public Node createXPathResult(Element paramElement) {
    throw new RuntimeException("asXPathResult() not yet implemented fully for: " + this);
  }
  
  public Node detach() {
    Element element = getParent();
    if (element != null) {
      element.remove(this);
      setParent((Element)null);
      setDocument((Document)null);
      return this;
    } 
    Document document = getDocument();
    if (document != null)
      document.remove(this); 
    setParent((Element)null);
    setDocument((Document)null);
    return this;
  }
  
  public Document getDocument() {
    Element element = getParent();
    return (element != null) ? element.getDocument() : null;
  }
  
  public DocumentFactory getDocumentFactory() {
    return DOCUMENT_FACTORY;
  }
  
  public String getName() {
    return null;
  }
  
  public short getNodeType() {
    return getNodeTypeEnum().getCode();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.UNKNOWN_NODE;
  }
  
  public String getNodeTypeName() {
    return getNodeTypeEnum().getName();
  }
  
  public Element getParent() {
    return null;
  }
  
  public String getPath() {
    return getPath(null);
  }
  
  public String getStringValue() {
    return getText();
  }
  
  public String getText() {
    return null;
  }
  
  public String getUniquePath() {
    return getUniquePath(null);
  }
  
  public boolean hasContent() {
    return false;
  }
  
  public boolean isReadOnly() {
    return true;
  }
  
  public boolean matches(String paramString) {
    return createXPathFilter(paramString).matches(this);
  }
  
  public Number numberValueOf(String paramString) {
    return createXPath(paramString).numberValueOf(this);
  }
  
  public List<? extends Node> selectNodes(String paramString) {
    return createXPath(paramString).selectNodes(this);
  }
  
  public List<? extends Node> selectNodes(String paramString1, String paramString2) {
    return selectNodes(paramString1, paramString2, false);
  }
  
  public List<? extends Node> selectNodes(String paramString1, String paramString2, boolean paramBoolean) {
    return createXPath(paramString1).selectNodes(this, createXPath(paramString2), paramBoolean);
  }
  
  public Object selectObject(String paramString) {
    return createXPath(paramString).evaluate(this);
  }
  
  public Node selectSingleNode(String paramString) {
    return createXPath(paramString).selectSingleNode(this);
  }
  
  public void setDocument(Document paramDocument) {}
  
  public void setName(String paramString) {
    throw new UnsupportedOperationException("This node cannot be modified");
  }
  
  public void setParent(Element paramElement) {}
  
  public void setText(String paramString) {
    throw new UnsupportedOperationException("This node cannot be modified");
  }
  
  public boolean supportsParent() {
    return false;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    toString(stringBuilder);
    return stringBuilder.toString();
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    paramStringBuilder.append(super.toString());
  }
  
  public String valueOf(String paramString) {
    return createXPath(paramString).valueOf(this);
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write(asXML());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */