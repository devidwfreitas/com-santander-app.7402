package org.dom4j.dom;

import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.tree.DefaultNamespace;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

public class DOMNamespace extends DefaultNamespace implements Node {
  public DOMNamespace(String paramString1, String paramString2) {
    super(paramString1, paramString2);
  }
  
  public DOMNamespace(Element paramElement, String paramString1, String paramString2) {
    super(paramElement, paramString1, paramString2);
  }
  
  public Node appendChild(Node paramNode) {
    return DOMNodeHelper.appendChild((Node)this, paramNode);
  }
  
  public Node cloneNode(boolean paramBoolean) {
    return DOMNodeHelper.cloneNode((Node)this, paramBoolean);
  }
  
  public short compareDocumentPosition(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public NamedNodeMap getAttributes() {
    return DOMNodeHelper.getAttributes((Node)this);
  }
  
  public String getBaseURI() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public NodeList getChildNodes() {
    return DOMNodeHelper.getChildNodes((Node)this);
  }
  
  public Object getFeature(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node getFirstChild() {
    return DOMNodeHelper.getFirstChild((Node)this);
  }
  
  public Node getLastChild() {
    return DOMNodeHelper.getLastChild((Node)this);
  }
  
  public String getLocalName() {
    return DOMNodeHelper.getLocalName((Node)this);
  }
  
  public String getNamespaceURI() {
    return DOMNodeHelper.getNamespaceURI((Node)this);
  }
  
  public Node getNextSibling() {
    return DOMNodeHelper.getNextSibling((Node)this);
  }
  
  public String getNodeName() {
    return getName();
  }
  
  public String getNodeValue() {
    return DOMNodeHelper.getNodeValue((Node)this);
  }
  
  public Document getOwnerDocument() {
    return DOMNodeHelper.getOwnerDocument((Node)this);
  }
  
  public Node getParentNode() {
    return DOMNodeHelper.getParentNode((Node)this);
  }
  
  public Node getPreviousSibling() {
    return DOMNodeHelper.getPreviousSibling((Node)this);
  }
  
  public String getTextContent() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Object getUserData(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean hasAttributes() {
    return DOMNodeHelper.hasAttributes((Node)this);
  }
  
  public boolean hasChildNodes() {
    return DOMNodeHelper.hasChildNodes((Node)this);
  }
  
  public Node insertBefore(Node paramNode1, Node paramNode2) {
    return DOMNodeHelper.insertBefore((Node)this, paramNode1, paramNode2);
  }
  
  public boolean isDefaultNamespace(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isEqualNode(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isSameNode(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isSupported(String paramString1, String paramString2) {
    return DOMNodeHelper.isSupported((Node)this, paramString1, paramString2);
  }
  
  public String lookupNamespaceURI(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String lookupPrefix(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void normalize() {
    DOMNodeHelper.normalize((Node)this);
  }
  
  public Node removeChild(Node paramNode) {
    return DOMNodeHelper.removeChild((Node)this, paramNode);
  }
  
  public Node replaceChild(Node paramNode1, Node paramNode2) {
    return DOMNodeHelper.replaceChild((Node)this, paramNode1, paramNode2);
  }
  
  public void setNodeValue(String paramString) {
    DOMNodeHelper.setNodeValue((Node)this, paramString);
  }
  
  public void setPrefix(String paramString) {
    DOMNodeHelper.setPrefix((Node)this, paramString);
  }
  
  public void setTextContent(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Object setUserData(String paramString, Object paramObject, UserDataHandler paramUserDataHandler) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean supports(String paramString1, String paramString2) {
    return DOMNodeHelper.supports((Node)this, paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMNamespace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */