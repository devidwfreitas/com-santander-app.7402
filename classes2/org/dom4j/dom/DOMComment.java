package org.dom4j.dom;

import org.dom4j.CharacterData;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.tree.DefaultComment;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

public class DOMComment extends DefaultComment implements Comment {
  public DOMComment(String paramString) {
    super(paramString);
  }
  
  public DOMComment(Element paramElement, String paramString) {
    super(paramElement, paramString);
  }
  
  private void checkNewChildNode(Node paramNode) {
    throw new DOMException((short)3, "Comment nodes cannot have children");
  }
  
  public Node appendChild(Node paramNode) {
    checkNewChildNode(paramNode);
    return DOMNodeHelper.appendChild((Node)this, paramNode);
  }
  
  public void appendData(String paramString) {
    DOMNodeHelper.appendData((CharacterData)this, paramString);
  }
  
  public Node cloneNode(boolean paramBoolean) {
    return DOMNodeHelper.cloneNode((Node)this, paramBoolean);
  }
  
  public short compareDocumentPosition(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void deleteData(int paramInt1, int paramInt2) {
    DOMNodeHelper.deleteData((CharacterData)this, paramInt1, paramInt2);
  }
  
  public NamedNodeMap getAttributes() {
    return null;
  }
  
  public String getBaseURI() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public NodeList getChildNodes() {
    return DOMNodeHelper.getChildNodes((Node)this);
  }
  
  public String getData() {
    return DOMNodeHelper.getData((CharacterData)this);
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
  
  public int getLength() {
    return DOMNodeHelper.getLength((CharacterData)this);
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
    return "#comment";
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
  
  public String getPrefix() {
    return DOMNodeHelper.getPrefix((Node)this);
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
    checkNewChildNode(paramNode1);
    return DOMNodeHelper.insertBefore((Node)this, paramNode1, paramNode2);
  }
  
  public void insertData(int paramInt, String paramString) {
    DOMNodeHelper.insertData((CharacterData)this, paramInt, paramString);
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
    checkNewChildNode(paramNode1);
    return DOMNodeHelper.replaceChild((Node)this, paramNode1, paramNode2);
  }
  
  public void replaceData(int paramInt1, int paramInt2, String paramString) {
    DOMNodeHelper.replaceData((CharacterData)this, paramInt1, paramInt2, paramString);
  }
  
  public void setData(String paramString) {
    DOMNodeHelper.setData((CharacterData)this, paramString);
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
  
  public String substringData(int paramInt1, int paramInt2) {
    return DOMNodeHelper.substringData((CharacterData)this, paramInt1, paramInt2);
  }
  
  public boolean supports(String paramString1, String paramString2) {
    return DOMNodeHelper.supports((Node)this, paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMComment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */