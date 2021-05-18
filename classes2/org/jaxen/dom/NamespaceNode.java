package org.jaxen.dom;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

public class NamespaceNode implements Node {
  public static final short NAMESPACE_NODE = 13;
  
  static Class class$java$lang$String;
  
  static Class class$org$w3c$dom$Node;
  
  private String name;
  
  private Node parent;
  
  private HashMap userData = new HashMap<Object, Object>();
  
  private String value;
  
  public NamespaceNode(Node paramNode, String paramString1, String paramString2) {
    this.parent = paramNode;
    String str = paramString1;
    if (paramString1 == null)
      str = ""; 
    this.name = str;
    this.value = paramString2;
  }
  
  NamespaceNode(Node paramNode1, Node paramNode2) {
    String str = paramNode2.getNodeName();
    if (str.equals("xmlns")) {
      this.name = "";
    } else if (str.startsWith("xmlns:")) {
      this.name = str.substring(6);
    } else {
      this.name = str;
    } 
    this.parent = paramNode1;
    this.value = paramNode2.getNodeValue();
  }
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw new NoClassDefFoundError(classNotFoundException.getMessage());
    } 
  }
  
  private void disallowModification() {
    throw new DOMException((short)7, "Namespace node may not be modified");
  }
  
  private boolean equals(Object paramObject1, Object paramObject2) {
    return ((paramObject1 == null && paramObject2 == null) || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
  
  private int hashCode(Object paramObject) {
    return (paramObject == null) ? 0 : paramObject.hashCode();
  }
  
  public Node appendChild(Node paramNode) {
    disallowModification();
    return null;
  }
  
  public Node cloneNode(boolean paramBoolean) {
    return new NamespaceNode(this.parent, this.name, this.value);
  }
  
  public short compareDocumentPosition(Node paramNode) {
    throw new DOMException((short)9, "DOM level 3 interfaces are not fully implemented in Jaxen's NamespaceNode class");
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (paramObject == null)
        return false; 
      if (paramObject instanceof NamespaceNode) {
        paramObject = paramObject;
        return !(!equals(this.parent, paramObject.getParentNode()) || !equals(this.name, paramObject.getNodeName()) || !equals(this.value, paramObject.getNodeValue()));
      } 
      return false;
    } 
    return true;
  }
  
  public NamedNodeMap getAttributes() {
    return null;
  }
  
  public String getBaseURI() {
    Class clazz;
    if (class$org$w3c$dom$Node == null) {
      clazz = class$("org.w3c.dom.Node");
      class$org$w3c$dom$Node = clazz;
    } else {
      clazz = class$org$w3c$dom$Node;
    } 
    try {
      Class[] arrayOfClass = new Class[0];
      return (String)clazz.getMethod("getBaseURI", arrayOfClass).invoke(getParentNode(), (Object[])arrayOfClass);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public NodeList getChildNodes() {
    return new NamespaceNode$EmptyNodeList(null);
  }
  
  public Object getFeature(String paramString1, String paramString2) {
    return null;
  }
  
  public Node getFirstChild() {
    return null;
  }
  
  public Node getLastChild() {
    return null;
  }
  
  public String getLocalName() {
    return this.name;
  }
  
  public String getNamespaceURI() {
    return null;
  }
  
  public Node getNextSibling() {
    return null;
  }
  
  public String getNodeName() {
    return this.name;
  }
  
  public short getNodeType() {
    return 13;
  }
  
  public String getNodeValue() {
    return this.value;
  }
  
  public Document getOwnerDocument() {
    return (this.parent == null) ? null : this.parent.getOwnerDocument();
  }
  
  public Node getParentNode() {
    return this.parent;
  }
  
  public String getPrefix() {
    return null;
  }
  
  public Node getPreviousSibling() {
    return null;
  }
  
  public String getTextContent() {
    return this.value;
  }
  
  public Object getUserData(String paramString) {
    return this.userData.get(paramString);
  }
  
  public boolean hasAttributes() {
    return false;
  }
  
  public boolean hasChildNodes() {
    return false;
  }
  
  public int hashCode() {
    return hashCode(this.parent) + hashCode(this.name) + hashCode(this.value);
  }
  
  public Node insertBefore(Node paramNode1, Node paramNode2) {
    disallowModification();
    return null;
  }
  
  public boolean isDefaultNamespace(String paramString) {
    return paramString.equals(lookupNamespaceURI(null));
  }
  
  public boolean isEqualNode(Node paramNode) {
    if (paramNode.getNodeType() == getNodeType()) {
      paramNode = paramNode;
      if ((((NamespaceNode)paramNode).name != null || this.name == null) && (((NamespaceNode)paramNode).name == null || this.name != null) && (((NamespaceNode)paramNode).value != null || this.value == null) && (((NamespaceNode)paramNode).value == null || this.value != null)) {
        if (((NamespaceNode)paramNode).name == null && this.name == null)
          return ((NamespaceNode)paramNode).value.equals(this.value); 
        if (((NamespaceNode)paramNode).name.equals(this.name) && ((NamespaceNode)paramNode).value.equals(this.value))
          return true; 
      } 
    } 
    return false;
  }
  
  public boolean isSameNode(Node paramNode) {
    boolean bool1;
    boolean bool2 = isEqualNode(paramNode);
    Node node1 = getParentNode();
    Node node2 = paramNode.getParentNode();
    try {
      Class clazz;
      if (class$org$w3c$dom$Node == null) {
        clazz = class$("org.w3c.dom.Node");
        class$org$w3c$dom$Node = clazz;
      } else {
        clazz = class$org$w3c$dom$Node;
      } 
      bool1 = ((Boolean)clazz.getMethod("isEqual", new Class[] { clazz }).invoke(node1, new Object[] { node2 })).booleanValue();
    } catch (NoSuchMethodException noSuchMethodException) {
      bool1 = node1.equals(node2);
    } catch (InvocationTargetException invocationTargetException) {
      bool1 = node1.equals(node2);
    } catch (IllegalAccessException illegalAccessException) {
      bool1 = node1.equals(node2);
    } 
    return (bool2 && bool1);
  }
  
  public boolean isSupported(String paramString1, String paramString2) {
    return false;
  }
  
  public String lookupNamespaceURI(String paramString) {
    try {
      Class clazz1;
      if (class$org$w3c$dom$Node == null) {
        clazz1 = class$("org.w3c.dom.Node");
        class$org$w3c$dom$Node = clazz1;
      } else {
        clazz1 = class$org$w3c$dom$Node;
      } 
      if (class$java$lang$String == null) {
        Class clazz = class$("java.lang.String");
        class$java$lang$String = clazz;
        return (String)clazz1.getMethod("lookupNamespaceURI", new Class[] { clazz }).invoke(this.parent, (Object[])new String[] { paramString });
      } 
      Class clazz2 = class$java$lang$String;
      return (String)clazz1.getMethod("lookupNamespaceURI", new Class[] { clazz2 }).invoke(this.parent, (Object[])new String[] { paramString });
    } catch (NoSuchMethodException noSuchMethodException) {
      throw new UnsupportedOperationException("Cannot lookup namespace URIs in DOM 2");
    } catch (InvocationTargetException invocationTargetException) {
      throw new UnsupportedOperationException("Cannot lookup namespace URIs in DOM 2");
    } catch (IllegalAccessException illegalAccessException) {
      throw new UnsupportedOperationException("Cannot lookup namespace URIs in DOM 2");
    } 
  }
  
  public String lookupPrefix(String paramString) {
    try {
      Class clazz1;
      if (class$org$w3c$dom$Node == null) {
        clazz1 = class$("org.w3c.dom.Node");
        class$org$w3c$dom$Node = clazz1;
      } else {
        clazz1 = class$org$w3c$dom$Node;
      } 
      if (class$java$lang$String == null) {
        Class clazz = class$("java.lang.String");
        class$java$lang$String = clazz;
        return (String)clazz1.getMethod("lookupPrefix", new Class[] { clazz }).invoke(this.parent, (Object[])new String[] { paramString });
      } 
      Class clazz2 = class$java$lang$String;
      return (String)clazz1.getMethod("lookupPrefix", new Class[] { clazz2 }).invoke(this.parent, (Object[])new String[] { paramString });
    } catch (NoSuchMethodException noSuchMethodException) {
      throw new UnsupportedOperationException("Cannot lookup prefixes in DOM 2");
    } catch (InvocationTargetException invocationTargetException) {
      throw new UnsupportedOperationException("Cannot lookup prefixes in DOM 2");
    } catch (IllegalAccessException illegalAccessException) {
      throw new UnsupportedOperationException("Cannot lookup prefixes in DOM 2");
    } 
  }
  
  public void normalize() {}
  
  public Node removeChild(Node paramNode) {
    disallowModification();
    return null;
  }
  
  public Node replaceChild(Node paramNode1, Node paramNode2) {
    disallowModification();
    return null;
  }
  
  public void setNodeValue(String paramString) {
    disallowModification();
  }
  
  public void setPrefix(String paramString) {
    disallowModification();
  }
  
  public void setTextContent(String paramString) {
    disallowModification();
  }
  
  public Object setUserData(String paramString, Object paramObject, UserDataHandler paramUserDataHandler) {
    Object object = getUserData(paramString);
    this.userData.put(paramString, paramObject);
    return object;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\NamespaceNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */