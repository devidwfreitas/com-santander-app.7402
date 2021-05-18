package org.dom4j.dom;

import java.util.ArrayList;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.TypeInfo;
import org.w3c.dom.UserDataHandler;

public class DOMElement extends DefaultElement implements Element {
  private static final DocumentFactory DOCUMENT_FACTORY = DOMDocumentFactory.getInstance();
  
  public DOMElement(String paramString) {
    super(paramString);
  }
  
  public DOMElement(String paramString, Namespace paramNamespace) {
    super(paramString, paramNamespace);
  }
  
  public DOMElement(QName paramQName) {
    super(paramQName);
  }
  
  public DOMElement(QName paramQName, int paramInt) {
    super(paramQName, paramInt);
  }
  
  private void checkNewChildNode(Node paramNode) {
    short s = paramNode.getNodeType();
    if (s != 1 && s != 3 && s != 8 && s != 7 && s != 4 && s != 5)
      throw new DOMException((short)3, "Given node cannot be a child of element"); 
  }
  
  public Node appendChild(Node paramNode) {
    checkNewChildNode(paramNode);
    return DOMNodeHelper.appendChild((Node)this, paramNode);
  }
  
  protected Attribute attribute(String paramString1, String paramString2) {
    List<Attribute> list = attributeList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Attribute attribute = list.get(i);
      if (paramString2.equals(attribute.getName()) && (((paramString1 == null || paramString1.length() == 0) && (attribute.getNamespaceURI() == null || attribute.getNamespaceURI().length() == 0)) || (paramString1 != null && paramString1.equals(attribute.getNamespaceURI()))))
        return attribute; 
    } 
    return null;
  }
  
  protected Attribute attribute(Attr paramAttr) {
    return attribute(DOCUMENT_FACTORY.createQName(paramAttr.getLocalName(), paramAttr.getPrefix(), paramAttr.getNamespaceURI()));
  }
  
  public Node cloneNode(boolean paramBoolean) {
    return DOMNodeHelper.cloneNode((Node)this, paramBoolean);
  }
  
  public short compareDocumentPosition(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  protected Attribute createAttribute(Attr paramAttr) {
    String str = paramAttr.getLocalName();
    if (str != null) {
      String str1 = paramAttr.getPrefix();
      String str2 = paramAttr.getNamespaceURI();
      QName qName1 = getDocumentFactory().createQName(str, str1, str2);
      return (Attribute)new DOMAttribute(qName1, paramAttr.getValue());
    } 
    str = paramAttr.getName();
    QName qName = getDocumentFactory().createQName(str);
    return (Attribute)new DOMAttribute(qName, paramAttr.getValue());
  }
  
  public String getAttribute(String paramString) {
    paramString = attributeValue(paramString);
    return (paramString != null) ? paramString : "";
  }
  
  public String getAttributeNS(String paramString1, String paramString2) {
    Attribute attribute = attribute(paramString1, paramString2);
    if (attribute != null) {
      String str = attribute.getValue();
      if (str != null)
        return str; 
    } 
    return "";
  }
  
  public Attr getAttributeNode(String paramString) {
    return DOMNodeHelper.asDOMAttr((Node)attribute(paramString));
  }
  
  public Attr getAttributeNodeNS(String paramString1, String paramString2) {
    Attribute attribute = attribute(paramString1, paramString2);
    if (attribute != null)
      DOMNodeHelper.asDOMAttr((Node)attribute); 
    return null;
  }
  
  public NamedNodeMap getAttributes() {
    return new DOMAttributeNodeMap(this);
  }
  
  public String getBaseURI() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public NodeList getChildNodes() {
    return DOMNodeHelper.createNodeList(content());
  }
  
  protected DocumentFactory getDocumentFactory() {
    DocumentFactory documentFactory = getQName().getDocumentFactory();
    return (documentFactory != null) ? documentFactory : DOCUMENT_FACTORY;
  }
  
  public NodeList getElementsByTagName(String paramString) {
    ArrayList arrayList = new ArrayList();
    DOMNodeHelper.appendElementsByTagName(arrayList, (Branch)this, paramString);
    return DOMNodeHelper.createNodeList(arrayList);
  }
  
  public NodeList getElementsByTagNameNS(String paramString1, String paramString2) {
    ArrayList arrayList = new ArrayList();
    DOMNodeHelper.appendElementsByTagNameNS(arrayList, (Branch)this, paramString1, paramString2);
    return DOMNodeHelper.createNodeList(arrayList);
  }
  
  public Object getFeature(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node getFirstChild() {
    return DOMNodeHelper.asDOMNode(node(0));
  }
  
  public Node getLastChild() {
    return DOMNodeHelper.asDOMNode(node(nodeCount() - 1));
  }
  
  public String getLocalName() {
    return getQName().getName();
  }
  
  public String getNamespaceURI() {
    return getQName().getNamespaceURI();
  }
  
  public Node getNextSibling() {
    return DOMNodeHelper.getNextSibling((Node)this);
  }
  
  public String getNodeName() {
    return getName();
  }
  
  public String getNodeValue() {
    return null;
  }
  
  public Document getOwnerDocument() {
    return DOMNodeHelper.getOwnerDocument((Node)this);
  }
  
  public Node getParentNode() {
    return DOMNodeHelper.getParentNode((Node)this);
  }
  
  public String getPrefix() {
    return getQName().getNamespacePrefix();
  }
  
  public Node getPreviousSibling() {
    return DOMNodeHelper.getPreviousSibling((Node)this);
  }
  
  protected QName getQName(String paramString1, String paramString2) {
    int i = paramString2.indexOf(':');
    String str2 = "";
    String str1 = paramString2;
    if (i >= 0) {
      str2 = paramString2.substring(0, i);
      str1 = paramString2.substring(i + 1);
    } 
    return getDocumentFactory().createQName(str1, str2, paramString1);
  }
  
  public TypeInfo getSchemaTypeInfo() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String getTagName() {
    return getName();
  }
  
  public String getTextContent() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Object getUserData(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean hasAttribute(String paramString) {
    return (attribute(paramString) != null);
  }
  
  public boolean hasAttributeNS(String paramString1, String paramString2) {
    return (attribute(paramString1, paramString2) != null);
  }
  
  public boolean hasAttributes() {
    return DOMNodeHelper.hasAttributes((Node)this);
  }
  
  public boolean hasChildNodes() {
    return (nodeCount() > 0);
  }
  
  public Node insertBefore(Node paramNode1, Node paramNode2) {
    checkNewChildNode(paramNode1);
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
  
  public void removeAttribute(String paramString) {
    Attribute attribute = attribute(paramString);
    if (attribute != null)
      remove(attribute); 
  }
  
  public void removeAttributeNS(String paramString1, String paramString2) {
    Attribute attribute = attribute(paramString1, paramString2);
    if (attribute != null)
      remove(attribute); 
  }
  
  public Attr removeAttributeNode(Attr paramAttr) {
    Attribute attribute = attribute(paramAttr);
    if (attribute != null) {
      attribute.detach();
      return DOMNodeHelper.asDOMAttr((Node)attribute);
    } 
    throw new DOMException((short)8, "No such attribute");
  }
  
  public Node removeChild(Node paramNode) {
    return DOMNodeHelper.removeChild((Node)this, paramNode);
  }
  
  public Node replaceChild(Node paramNode1, Node paramNode2) {
    checkNewChildNode(paramNode1);
    return DOMNodeHelper.replaceChild((Node)this, paramNode1, paramNode2);
  }
  
  public void setAttribute(String paramString1, String paramString2) {
    addAttribute(paramString1, paramString2);
  }
  
  public void setAttributeNS(String paramString1, String paramString2, String paramString3) {
    Attribute attribute = attribute(paramString1, paramString2);
    if (attribute != null) {
      attribute.setValue(paramString3);
      return;
    } 
    addAttribute(getQName(paramString1, paramString2), paramString3);
  }
  
  public Attr setAttributeNode(Attr paramAttr) {
    if (isReadOnly())
      throw new DOMException((short)7, "No modification allowed"); 
    Attribute attribute = attribute(paramAttr);
    if (attribute != paramAttr) {
      if (paramAttr.getOwnerElement() != null)
        throw new DOMException((short)10, "Attribute is already in use"); 
      Attribute attribute1 = createAttribute(paramAttr);
      if (attribute != null)
        attribute.detach(); 
      add(attribute1);
    } 
    return DOMNodeHelper.asDOMAttr((Node)attribute);
  }
  
  public Attr setAttributeNodeNS(Attr paramAttr) {
    Attribute attribute2 = attribute(paramAttr.getNamespaceURI(), paramAttr.getLocalName());
    if (attribute2 != null) {
      attribute2.setValue(paramAttr.getValue());
      attribute1 = attribute2;
      return DOMNodeHelper.asDOMAttr((Node)attribute1);
    } 
    Attribute attribute1 = createAttribute((Attr)attribute1);
    add(attribute1);
    return DOMNodeHelper.asDOMAttr((Node)attribute1);
  }
  
  public void setIdAttribute(String paramString, boolean paramBoolean) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setIdAttributeNS(String paramString1, String paramString2, boolean paramBoolean) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setIdAttributeNode(Attr paramAttr, boolean paramBoolean) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setNodeValue(String paramString) {}
  
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */