package org.dom4j.io;

import java.util.ArrayList;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DOMReader {
  private DocumentFactory factory = DocumentFactory.getInstance();
  
  private NamespaceStack namespaceStack = new NamespaceStack(this.factory);
  
  public DOMReader() {}
  
  public DOMReader(DocumentFactory paramDocumentFactory) {}
  
  private String getPrefix(String paramString) {
    int i = paramString.indexOf(':', 5);
    return (i != -1) ? paramString.substring(i + 1) : "";
  }
  
  protected void clearNamespaceStack() {
    this.namespaceStack.clear();
    if (!this.namespaceStack.contains(Namespace.XML_NAMESPACE))
      this.namespaceStack.push(Namespace.XML_NAMESPACE); 
  }
  
  protected Document createDocument() {
    return getDocumentFactory().createDocument();
  }
  
  public DocumentFactory getDocumentFactory() {
    return this.factory;
  }
  
  protected Namespace getNamespace(String paramString1, String paramString2) {
    return getDocumentFactory().createNamespace(paramString1, paramString2);
  }
  
  public Document read(Document paramDocument) {
    if (paramDocument instanceof Document)
      return (Document)paramDocument; 
    Document document = createDocument();
    clearNamespaceStack();
    NodeList nodeList = paramDocument.getChildNodes();
    int i = 0;
    int j = nodeList.getLength();
    while (i < j) {
      readTree(nodeList.item(i), (Branch)document);
      i++;
    } 
    return document;
  }
  
  protected void readElement(Node paramNode, Branch paramBranch) {
    int j = this.namespaceStack.size();
    String str2 = paramNode.getNamespaceURI();
    if (paramNode.getPrefix() == null);
    NamedNodeMap namedNodeMap = paramNode.getAttributes();
    String str1 = str2;
    if (namedNodeMap != null) {
      str1 = str2;
      if (str2 == null) {
        Node node = namedNodeMap.getNamedItem("xmlns");
        str1 = str2;
        if (node != null)
          str1 = node.getNodeValue(); 
      } 
    } 
    Element element = paramBranch.addElement(this.namespaceStack.getQName(str1, paramNode.getLocalName(), paramNode.getNodeName()));
    if (namedNodeMap != null) {
      int n = namedNodeMap.getLength();
      ArrayList<String> arrayList = new ArrayList(n);
      int m;
      for (m = 0; m < n; m++) {
        String str3;
        Node node = namedNodeMap.item(m);
        String str4 = node.getNodeName();
        if (str4.startsWith("xmlns")) {
          str4 = getPrefix(str4);
          str3 = node.getNodeValue();
          element.add(this.namespaceStack.addNamespace(str4, str3));
        } else {
          arrayList.add(str3);
        } 
      } 
      n = arrayList.size();
      for (m = 0; m < n; m++) {
        Node node = (Node)arrayList.get(m);
        element.addAttribute(this.namespaceStack.getQName(node.getNamespaceURI(), node.getLocalName(), node.getNodeName()), node.getNodeValue());
      } 
    } 
    NodeList nodeList = paramNode.getChildNodes();
    int k = nodeList.getLength();
    for (int i = 0; i < k; i++)
      readTree(nodeList.item(i), (Branch)element); 
    while (this.namespaceStack.size() > j)
      this.namespaceStack.pop(); 
  }
  
  protected void readTree(Node paramNode, Branch paramBranch) {
    Node node;
    Document document;
    Element element = null;
    if (paramBranch instanceof Element) {
      element = (Element)paramBranch;
      document = null;
    } else {
      document = (Document)paramBranch;
    } 
    switch (paramNode.getNodeType()) {
      default:
        System.out.println("WARNING: Unknown DOM node type: " + paramNode.getNodeType());
        return;
      case 1:
        readElement(paramNode, paramBranch);
        return;
      case 7:
        if (paramBranch instanceof Element) {
          ((Element)paramBranch).addProcessingInstruction(paramNode.getNodeName(), paramNode.getNodeValue());
          return;
        } 
        ((Document)paramBranch).addProcessingInstruction(paramNode.getNodeName(), paramNode.getNodeValue());
        return;
      case 8:
        if (paramBranch instanceof Element) {
          ((Element)paramBranch).addComment(paramNode.getNodeValue());
          return;
        } 
        ((Document)paramBranch).addComment(paramNode.getNodeValue());
        return;
      case 10:
        paramNode = paramNode;
        document.addDocType(paramNode.getName(), paramNode.getPublicId(), paramNode.getSystemId());
        return;
      case 3:
        element.addText(paramNode.getNodeValue());
        return;
      case 4:
        element.addCDATA(paramNode.getNodeValue());
        return;
      case 5:
        node = paramNode.getFirstChild();
        if (node != null) {
          element.addEntity(paramNode.getNodeName(), node.getNodeValue());
          return;
        } 
        element.addEntity(paramNode.getNodeName(), "");
        return;
      case 6:
        break;
    } 
    element.addEntity(paramNode.getNodeName(), paramNode.getNodeValue());
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
    this.namespaceStack.setDocumentFactory(this.factory);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DOMReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */