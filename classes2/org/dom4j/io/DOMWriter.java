package org.dom4j.io;

import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class DOMWriter {
  private static final String[] DEFAULT_DOM_DOCUMENT_CLASSES;
  
  private static boolean loggedWarning = false;
  
  private Class domDocumentClass;
  
  private NamespaceStack namespaceStack = new NamespaceStack();
  
  static {
    DEFAULT_DOM_DOCUMENT_CLASSES = new String[] { "org.apache.xerces.dom.DocumentImpl", "gnu.xml.dom.DomDocument", "org.apache.crimson.tree.XmlDocument", "com.sun.xml.tree.XmlDocument", "oracle.xml.parser.v2.XMLDocument", "oracle.xml.parser.XMLDocument", "org.dom4j.dom.DOMDocument" };
  }
  
  public DOMWriter() {}
  
  public DOMWriter(Class paramClass) {
    this.domDocumentClass = paramClass;
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, String paramString) {
    paramNode.appendChild(paramDocument.createTextNode(paramString));
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, List<Object> paramList) {
    int j = paramList.size();
    for (int i = 0; i < j; i++) {
      Element element = (Element)paramList.get(i);
      if (element instanceof Element) {
        appendDOMTree(paramDocument, paramNode, element);
      } else if (element instanceof String) {
        appendDOMTree(paramDocument, paramNode, (String)element);
      } else if (element instanceof Text) {
        appendDOMTree(paramDocument, paramNode, ((Text)element).getText());
      } else if (element instanceof CDATA) {
        appendDOMTree(paramDocument, paramNode, (CDATA)element);
      } else if (element instanceof Comment) {
        appendDOMTree(paramDocument, paramNode, (Comment)element);
      } else if (element instanceof Entity) {
        appendDOMTree(paramDocument, paramNode, (Entity)element);
      } else if (element instanceof ProcessingInstruction) {
        appendDOMTree(paramDocument, paramNode, (ProcessingInstruction)element);
      } 
    } 
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, CDATA paramCDATA) {
    paramNode.appendChild(paramDocument.createCDATASection(paramCDATA.getText()));
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, Comment paramComment) {
    paramNode.appendChild(paramDocument.createComment(paramComment.getText()));
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, Element paramElement) {
    Element element = paramDocument.createElementNS(paramElement.getNamespaceURI(), paramElement.getQualifiedName());
    int j = this.namespaceStack.size();
    Namespace namespace = paramElement.getNamespace();
    if (isNamespaceDeclaration(namespace)) {
      this.namespaceStack.push(namespace);
      writeNamespace(element, namespace);
    } 
    List<Namespace> list = paramElement.declaredNamespaces();
    int k = list.size();
    int i;
    for (i = 0; i < k; i++) {
      Namespace namespace1 = list.get(i);
      if (isNamespaceDeclaration(namespace1)) {
        this.namespaceStack.push(namespace1);
        writeNamespace(element, namespace1);
      } 
    } 
    k = paramElement.attributeCount();
    for (i = 0; i < k; i++) {
      Attribute attribute = paramElement.attribute(i);
      element.setAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName(), attribute.getValue());
    } 
    appendDOMTree(paramDocument, element, paramElement.content());
    paramNode.appendChild(element);
    while (this.namespaceStack.size() > j)
      this.namespaceStack.pop(); 
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, Entity paramEntity) {
    paramNode.appendChild(paramDocument.createEntityReference(paramEntity.getName()));
  }
  
  protected void appendDOMTree(Document paramDocument, Node paramNode, ProcessingInstruction paramProcessingInstruction) {
    paramNode.appendChild(paramDocument.createProcessingInstruction(paramProcessingInstruction.getTarget(), paramProcessingInstruction.getText()));
  }
  
  protected String attributeNameForNamespace(Namespace paramNamespace) {
    String str2 = "xmlns";
    String str3 = paramNamespace.getPrefix();
    String str1 = str2;
    if (str3.length() > 0)
      str1 = "xmlns" + ":" + str3; 
    return str1;
  }
  
  protected Document createDomDocument(Document paramDocument) {
    Class<Document> clazz;
    if (this.domDocumentClass != null)
      try {
        return this.domDocumentClass.newInstance();
      } catch (Exception exception) {
        throw new DocumentException("Could not instantiate an instance of DOM Document with class: " + this.domDocumentClass.getName(), exception);
      }  
    Document document2 = createDomDocumentViaJAXP();
    Document document1 = document2;
    if (document2 == null) {
      clazz = getDomDocumentClass();
      try {
        return clazz.newInstance();
      } catch (Exception exception) {
        throw new DocumentException("Could not instantiate an instance of DOM Document with class: " + clazz.getName(), exception);
      } 
    } 
    return (Document)clazz;
  }
  
  protected Document createDomDocument(Document paramDocument, DOMImplementation paramDOMImplementation) {
    return paramDOMImplementation.createDocument(null, null, null);
  }
  
  protected Document createDomDocumentViaJAXP() {
    try {
      return JAXPHelper.createDocument(false, true);
    } catch (Throwable throwable) {
      if (!loggedWarning) {
        loggedWarning = true;
        if (SAXHelper.isVerboseErrorReporting()) {
          System.out.println("Warning: Caught exception attempting to use JAXP to create a W3C DOM document");
          System.out.println("Warning: Exception was: " + throwable);
          throwable.printStackTrace();
          return null;
        } 
      } else {
        return null;
      } 
    } 
    return null;
  }
  
  public Class getDomDocumentClass() {
    Class<?> clazz1 = this.domDocumentClass;
    Class<?> clazz2 = clazz1;
    if (clazz1 == null) {
      int j = DEFAULT_DOM_DOCUMENT_CLASSES.length;
      for (int i = 0;; i++) {
        clazz2 = clazz1;
        if (i < j) {
          try {
            clazz2 = Class.forName(DEFAULT_DOM_DOCUMENT_CLASSES[i], true, DOMWriter.class.getClassLoader());
            clazz1 = clazz2;
            if (clazz2 != null)
              return clazz2; 
          } catch (Exception exception) {}
        } else {
          return (Class)exception;
        } 
      } 
    } 
    return (Class)exception;
  }
  
  protected boolean isNamespaceDeclaration(Namespace paramNamespace) {
    if (paramNamespace != null && paramNamespace != Namespace.NO_NAMESPACE && paramNamespace != Namespace.XML_NAMESPACE) {
      String str = paramNamespace.getURI();
      if (str != null && str.length() > 0 && !this.namespaceStack.contains(paramNamespace))
        return true; 
    } 
    return false;
  }
  
  protected void resetNamespaceStack() {
    this.namespaceStack.clear();
    this.namespaceStack.push(Namespace.XML_NAMESPACE);
  }
  
  public void setDomDocumentClass(Class paramClass) {
    this.domDocumentClass = paramClass;
  }
  
  public void setDomDocumentClassName(String paramString) {
    try {
      this.domDocumentClass = Class.forName(paramString, true, DOMWriter.class.getClassLoader());
      return;
    } catch (Exception exception) {
      throw new DocumentException("Could not load the DOM Document class: " + paramString, exception);
    } 
  }
  
  public Document write(Document paramDocument) {
    if (paramDocument instanceof Document)
      return (Document)paramDocument; 
    resetNamespaceStack();
    Document document = createDomDocument(paramDocument);
    appendDOMTree(document, document, paramDocument.content());
    this.namespaceStack.clear();
    return document;
  }
  
  public Document write(Document paramDocument, DOMImplementation paramDOMImplementation) {
    if (paramDocument instanceof Document)
      return (Document)paramDocument; 
    resetNamespaceStack();
    Document document = createDomDocument(paramDocument, paramDOMImplementation);
    appendDOMTree(document, document, paramDocument.content());
    this.namespaceStack.clear();
    return document;
  }
  
  protected void writeNamespace(Element paramElement, Namespace paramNamespace) {
    paramElement.setAttribute(attributeNameForNamespace(paramNamespace), paramNamespace.getURI());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DOMWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */