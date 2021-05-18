package org.dom4j.dom;

import java.util.List;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Node;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class DOMNodeHelper {
  public static final NodeList EMPTY_NODE_LIST = new DOMNodeHelper$EmptyNodeList();
  
  public static Node appendChild(Node paramNode, Node paramNode1) {
    Branch branch;
    if (paramNode instanceof Branch) {
      branch = (Branch)paramNode;
      Node node = paramNode1.getParentNode();
      if (node != null)
        node.removeChild(paramNode1); 
      branch.add((Node)paramNode1);
      return paramNode1;
    } 
    throw new DOMException((short)3, "Children not allowed for this node: " + branch);
  }
  
  public static void appendData(CharacterData paramCharacterData, String paramString) {
    if (paramCharacterData.isReadOnly())
      throw new DOMException((short)7, "CharacterData node is read only: " + paramCharacterData); 
    String str = paramCharacterData.getText();
    if (str == null) {
      paramCharacterData.setText(str);
      return;
    } 
    paramCharacterData.setText(str + paramString);
  }
  
  public static void appendElementsByTagName(List<Element> paramList, Branch paramBranch, String paramString) {
    boolean bool = "*".equals(paramString);
    int j = paramBranch.nodeCount();
    for (int i = 0; i < j; i++) {
      Node node = paramBranch.node(i);
      if (node instanceof Element) {
        Element element = (Element)node;
        if (bool || paramString.equals(element.getName()))
          paramList.add(element); 
        appendElementsByTagName(paramList, (Branch)element, paramString);
      } 
    } 
  }
  
  public static void appendElementsByTagNameNS(List<Element> paramList, Branch paramBranch, String paramString1, String paramString2) {
    boolean bool1 = "*".equals(paramString1);
    boolean bool2 = "*".equals(paramString2);
    int j = paramBranch.nodeCount();
    int i;
    for (i = 0; i < j; i++) {
      Node node = paramBranch.node(i);
      if (node instanceof Element) {
        Element element = (Element)node;
        if ((bool1 || ((paramString1 == null || paramString1.length() == 0) && (element.getNamespaceURI() == null || element.getNamespaceURI().length() == 0)) || (paramString1 != null && paramString1.equals(element.getNamespaceURI()))) && (bool2 || paramString2.equals(element.getName())))
          paramList.add(element); 
        appendElementsByTagNameNS(paramList, (Branch)element, paramString1, paramString2);
      } 
    } 
  }
  
  public static Attr asDOMAttr(Node paramNode) {
    if (paramNode == null)
      return null; 
    if (paramNode instanceof Attr)
      return (Attr)paramNode; 
    notSupported();
    return null;
  }
  
  public static Document asDOMDocument(Document paramDocument) {
    if (paramDocument == null)
      return null; 
    if (paramDocument instanceof Document)
      return (Document)paramDocument; 
    notSupported();
    return null;
  }
  
  public static DocumentType asDOMDocumentType(DocumentType paramDocumentType) {
    if (paramDocumentType == null)
      return null; 
    if (paramDocumentType instanceof DocumentType)
      return (DocumentType)paramDocumentType; 
    notSupported();
    return null;
  }
  
  public static Element asDOMElement(Node paramNode) {
    if (paramNode == null)
      return null; 
    if (paramNode instanceof Element)
      return (Element)paramNode; 
    notSupported();
    return null;
  }
  
  public static Node asDOMNode(Node paramNode) {
    if (paramNode == null)
      return null; 
    if (paramNode instanceof Node)
      return (Node)paramNode; 
    System.out.println("Cannot convert: " + paramNode + " into a W3C DOM Node");
    notSupported();
    return null;
  }
  
  public static Text asDOMText(CharacterData paramCharacterData) {
    if (paramCharacterData == null)
      return null; 
    if (paramCharacterData instanceof Text)
      return (Text)paramCharacterData; 
    notSupported();
    return null;
  }
  
  public static Node cloneNode(Node paramNode, boolean paramBoolean) {
    return asDOMNode((Node)paramNode.clone());
  }
  
  public static NodeList createNodeList(List paramList) {
    return new DOMNodeHelper$1(paramList);
  }
  
  public static void deleteData(CharacterData paramCharacterData, int paramInt1, int paramInt2) {
    if (paramCharacterData.isReadOnly())
      throw new DOMException((short)7, "CharacterData node is read only: " + paramCharacterData); 
    if (paramInt2 < 0)
      throw new DOMException((short)1, "Illegal value for count: " + paramInt2); 
    String str = paramCharacterData.getText();
    if (str != null) {
      int i = str.length();
      if (paramInt1 < 0 || paramInt1 >= i)
        throw new DOMException((short)1, "No text at offset: " + paramInt1); 
      StringBuffer stringBuffer = new StringBuffer(str);
      stringBuffer.delete(paramInt1, paramInt1 + paramInt2);
      paramCharacterData.setText(stringBuffer.toString());
    } 
  }
  
  public static NamedNodeMap getAttributes(Node paramNode) {
    return null;
  }
  
  public static NodeList getChildNodes(Node paramNode) {
    return EMPTY_NODE_LIST;
  }
  
  public static String getData(CharacterData paramCharacterData) {
    return paramCharacterData.getText();
  }
  
  public static Node getFirstChild(Node paramNode) {
    return null;
  }
  
  public static Node getLastChild(Node paramNode) {
    return null;
  }
  
  public static int getLength(CharacterData paramCharacterData) {
    String str = paramCharacterData.getText();
    return (str != null) ? str.length() : 0;
  }
  
  public static String getLocalName(Node paramNode) {
    return null;
  }
  
  public static String getNamespaceURI(Node paramNode) {
    return null;
  }
  
  public static Node getNextSibling(Node paramNode) {
    Element element = paramNode.getParent();
    if (element != null) {
      int i = element.indexOf(paramNode);
      if (i >= 0)
        if (++i < element.nodeCount())
          return asDOMNode(element.node(i));  
    } 
    return null;
  }
  
  public static String getNodeValue(Node paramNode) {
    return paramNode.getText();
  }
  
  public static Document getOwnerDocument(Node paramNode) {
    return asDOMDocument(paramNode.getDocument());
  }
  
  public static Node getParentNode(Node paramNode) {
    return asDOMNode((Node)paramNode.getParent());
  }
  
  public static String getPrefix(Node paramNode) {
    return null;
  }
  
  public static Node getPreviousSibling(Node paramNode) {
    Element element = paramNode.getParent();
    if (element != null) {
      int i = element.indexOf(paramNode);
      if (i > 0)
        return asDOMNode(element.node(i - 1)); 
    } 
    return null;
  }
  
  public static boolean hasAttributes(Node paramNode) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramNode != null) {
      bool1 = bool2;
      if (paramNode instanceof Element) {
        bool1 = bool2;
        if (((Element)paramNode).attributeCount() > 0)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  public static boolean hasChildNodes(Node paramNode) {
    return false;
  }
  
  public static Node insertBefore(Node paramNode, Node paramNode1, Node paramNode2) {
    Branch branch;
    if (paramNode instanceof Branch) {
      branch = (Branch)paramNode;
      List<Node> list = branch.content();
      int i = list.indexOf(paramNode2);
      if (i < 0) {
        branch.add((Node)paramNode1);
        return paramNode1;
      } 
      list.add(i, paramNode1);
      return paramNode1;
    } 
    throw new DOMException((short)3, "Children not allowed for this node: " + branch);
  }
  
  public static void insertData(CharacterData paramCharacterData, int paramInt, String paramString) {
    if (paramCharacterData.isReadOnly())
      throw new DOMException((short)7, "CharacterData node is read only: " + paramCharacterData); 
    String str = paramCharacterData.getText();
    if (str == null) {
      paramCharacterData.setText(paramString);
      return;
    } 
    int i = str.length();
    if (paramInt < 0 || paramInt > i)
      throw new DOMException((short)1, "No text at offset: " + paramInt); 
    StringBuffer stringBuffer = new StringBuffer(str);
    stringBuffer.insert(paramInt, paramString);
    paramCharacterData.setText(stringBuffer.toString());
  }
  
  public static boolean isSupported(Node paramNode, String paramString1, String paramString2) {
    return false;
  }
  
  public static void normalize(Node paramNode) {
    notSupported();
  }
  
  public static void notSupported() {
    throw new DOMException((short)9, "Not supported yet");
  }
  
  public static Node removeChild(Node paramNode, Node paramNode1) {
    if (paramNode instanceof Branch) {
      ((Branch)paramNode).remove((Node)paramNode1);
      return paramNode1;
    } 
    throw new DOMException((short)3, "Children not allowed for this node: " + paramNode);
  }
  
  public static Node replaceChild(Node paramNode, Node paramNode1, Node paramNode2) {
    if (paramNode instanceof Branch) {
      List<Node> list = ((Branch)paramNode).content();
      int i = list.indexOf(paramNode2);
      if (i < 0)
        throw new DOMException((short)8, "Tried to replace a non existing child for node: " + paramNode); 
      list.set(i, paramNode1);
      return paramNode2;
    } 
    throw new DOMException((short)3, "Children not allowed for this node: " + paramNode);
  }
  
  public static void replaceData(CharacterData paramCharacterData, int paramInt1, int paramInt2, String paramString) {
    if (paramCharacterData.isReadOnly())
      throw new DOMException((short)7, "CharacterData node is read only: " + paramCharacterData); 
    if (paramInt2 < 0)
      throw new DOMException((short)1, "Illegal value for count: " + paramInt2); 
    String str = paramCharacterData.getText();
    if (str != null) {
      int i = str.length();
      if (paramInt1 < 0 || paramInt1 >= i)
        throw new DOMException((short)1, "No text at offset: " + paramInt1); 
      StringBuffer stringBuffer = new StringBuffer(str);
      stringBuffer.replace(paramInt1, paramInt1 + paramInt2, paramString);
      paramCharacterData.setText(stringBuffer.toString());
    } 
  }
  
  public static void setData(CharacterData paramCharacterData, String paramString) {
    paramCharacterData.setText(paramString);
  }
  
  public static void setNodeValue(Node paramNode, String paramString) {
    paramNode.setText(paramString);
  }
  
  public static void setPrefix(Node paramNode, String paramString) {
    notSupported();
  }
  
  public static String substringData(CharacterData paramCharacterData, int paramInt1, int paramInt2) {
    byte b;
    if (paramInt2 < 0)
      throw new DOMException((short)1, "Illegal value for count: " + paramInt2); 
    String str = paramCharacterData.getText();
    if (str != null) {
      b = str.length();
    } else {
      b = 0;
    } 
    if (paramInt1 < 0 || paramInt1 >= b)
      throw new DOMException((short)1, "No text at offset: " + paramInt1); 
    return (paramInt1 + paramInt2 > b) ? str.substring(paramInt1) : str.substring(paramInt1, paramInt1 + paramInt2);
  }
  
  public static boolean supports(Node paramNode, String paramString1, String paramString2) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMNodeHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */