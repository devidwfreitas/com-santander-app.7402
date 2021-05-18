package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.QName;
import org.dom4j.Visitor;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

public abstract class AbstractDocument extends AbstractBranch implements Document {
  protected String encoding;
  
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
    DocumentType documentType = getDocType();
    if (documentType != null)
      paramVisitor.visit(documentType); 
    List<Node> list = content();
    if (list != null)
      for (String str : list) {
        if (str instanceof String) {
          paramVisitor.visit(getDocumentFactory().createText(str));
          continue;
        } 
        ((Node)str).accept(paramVisitor);
      }  
  }
  
  public void add(Element paramElement) {
    checkAddElementAllowed(paramElement);
    super.add(paramElement);
    rootElementAdded(paramElement);
  }
  
  public Document addComment(String paramString) {
    add(getDocumentFactory().createComment(paramString));
    return this;
  }
  
  public Element addElement(String paramString) {
    Element element = getDocumentFactory().createElement(paramString);
    add(element);
    return element;
  }
  
  public Element addElement(String paramString1, String paramString2) {
    Element element = getDocumentFactory().createElement(paramString1, paramString2);
    add(element);
    return element;
  }
  
  public Element addElement(QName paramQName) {
    Element element = getDocumentFactory().createElement(paramQName);
    add(element);
    return element;
  }
  
  public Document addProcessingInstruction(String paramString1, String paramString2) {
    add(getDocumentFactory().createProcessingInstruction(paramString1, paramString2));
    return this;
  }
  
  public Document addProcessingInstruction(String paramString, Map paramMap) {
    add(getDocumentFactory().createProcessingInstruction(paramString, paramMap));
    return this;
  }
  
  public String asXML() {
    OutputFormat outputFormat = new OutputFormat();
    outputFormat.setEncoding(this.encoding);
    try {
      StringWriter stringWriter = new StringWriter();
      XMLWriter xMLWriter = new XMLWriter(stringWriter, outputFormat);
      xMLWriter.write(this);
      xMLWriter.flush();
      return stringWriter.toString();
    } catch (IOException iOException) {
      throw new RuntimeException("IOException while generating textual representation: " + iOException.getMessage());
    } 
  }
  
  public Node asXPathResult(Element paramElement) {
    return this;
  }
  
  protected void checkAddElementAllowed(Element paramElement) {
    Element element = getRootElement();
    if (element != null)
      throw new IllegalAddException(this, paramElement, "Cannot add another element to this Document as it already has a root element of: " + element.getQualifiedName()); 
  }
  
  protected void childAdded(Node paramNode) {
    if (paramNode != null)
      paramNode.setDocument(this); 
  }
  
  protected void childRemoved(Node paramNode) {
    if (paramNode != null)
      paramNode.setDocument(null); 
  }
  
  public Document getDocument() {
    return this;
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.DOCUMENT_NODE;
  }
  
  public String getPath(Element paramElement) {
    return "/";
  }
  
  public String getStringValue() {
    Element element = getRootElement();
    return (element != null) ? element.getStringValue() : "";
  }
  
  public String getUniquePath(Element paramElement) {
    return "/";
  }
  
  public String getXMLEncoding() {
    return null;
  }
  
  public void normalize() {
    Element element = getRootElement();
    if (element != null)
      element.normalize(); 
  }
  
  public boolean remove(Element paramElement) {
    boolean bool = super.remove(paramElement);
    if (getRootElement() != null && bool)
      setRootElement((Element)null); 
    paramElement.setDocument(null);
    return bool;
  }
  
  protected abstract void rootElementAdded(Element paramElement);
  
  public void setRootElement(Element paramElement) {
    clearContent();
    if (paramElement != null) {
      super.add(paramElement);
      rootElementAdded(paramElement);
    } 
  }
  
  public void setXMLEncoding(String paramString) {
    this.encoding = paramString;
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [Document: name ");
    paramStringBuilder.append(getName());
    paramStringBuilder.append(']');
  }
  
  public void write(Writer paramWriter) {
    OutputFormat outputFormat = new OutputFormat();
    outputFormat.setEncoding(this.encoding);
    (new XMLWriter(paramWriter, outputFormat)).write(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractDocument.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */