package org.dom4j.util;

import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.NodeFilter;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.XPath;
import org.dom4j.rule.Pattern;
import org.jaxen.VariableContext;

public abstract class ProxyDocumentFactory {
  private DocumentFactory proxy = DocumentFactory.getInstance();
  
  public ProxyDocumentFactory() {}
  
  public ProxyDocumentFactory(DocumentFactory paramDocumentFactory) {}
  
  public Attribute createAttribute(Element paramElement, String paramString1, String paramString2) {
    return this.proxy.createAttribute(paramElement, paramString1, paramString2);
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return this.proxy.createAttribute(paramElement, paramQName, paramString);
  }
  
  public CDATA createCDATA(String paramString) {
    return this.proxy.createCDATA(paramString);
  }
  
  public Comment createComment(String paramString) {
    return this.proxy.createComment(paramString);
  }
  
  public DocumentType createDocType(String paramString1, String paramString2, String paramString3) {
    return this.proxy.createDocType(paramString1, paramString2, paramString3);
  }
  
  public Document createDocument() {
    return this.proxy.createDocument();
  }
  
  public Document createDocument(Element paramElement) {
    return this.proxy.createDocument(paramElement);
  }
  
  public Element createElement(String paramString) {
    return this.proxy.createElement(paramString);
  }
  
  public Element createElement(QName paramQName) {
    return this.proxy.createElement(paramQName);
  }
  
  public Entity createEntity(String paramString1, String paramString2) {
    return this.proxy.createEntity(paramString1, paramString2);
  }
  
  public Namespace createNamespace(String paramString1, String paramString2) {
    return this.proxy.createNamespace(paramString1, paramString2);
  }
  
  public Pattern createPattern(String paramString) {
    return this.proxy.createPattern(paramString);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString1, String paramString2) {
    return this.proxy.createProcessingInstruction(paramString1, paramString2);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString, Map paramMap) {
    return this.proxy.createProcessingInstruction(paramString, paramMap);
  }
  
  public QName createQName(String paramString) {
    return this.proxy.createQName(paramString);
  }
  
  public QName createQName(String paramString1, String paramString2) {
    return this.proxy.createQName(paramString1, paramString2);
  }
  
  public QName createQName(String paramString1, String paramString2, String paramString3) {
    return this.proxy.createQName(paramString1, paramString2, paramString3);
  }
  
  public QName createQName(String paramString, Namespace paramNamespace) {
    return this.proxy.createQName(paramString, paramNamespace);
  }
  
  public Text createText(String paramString) {
    return this.proxy.createText(paramString);
  }
  
  public XPath createXPath(String paramString) {
    return this.proxy.createXPath(paramString);
  }
  
  public XPath createXPath(String paramString, VariableContext paramVariableContext) {
    return this.proxy.createXPath(paramString, paramVariableContext);
  }
  
  public NodeFilter createXPathFilter(String paramString) {
    return this.proxy.createXPathFilter(paramString);
  }
  
  public NodeFilter createXPathFilter(String paramString, VariableContext paramVariableContext) {
    return this.proxy.createXPathFilter(paramString, paramVariableContext);
  }
  
  protected DocumentFactory getProxy() {
    return this.proxy;
  }
  
  protected void setProxy(DocumentFactory paramDocumentFactory) {
    DocumentFactory documentFactory = paramDocumentFactory;
    if (paramDocumentFactory == null)
      documentFactory = DocumentFactory.getInstance(); 
    this.proxy = documentFactory;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\ProxyDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */