package org.jaxen.dom;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.jaxen.DefaultNavigator;
import org.jaxen.FunctionCallException;
import org.jaxen.JaxenConstants;
import org.jaxen.Navigator;
import org.jaxen.XPath;
import org.w3c.dom.Attr;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.xml.sax.SAXException;

public class DocumentNavigator extends DefaultNavigator {
  private static final DocumentNavigator SINGLETON = new DocumentNavigator();
  
  private static final long serialVersionUID = 8460943068889528115L;
  
  public static Navigator getInstance() {
    return (Navigator)SINGLETON;
  }
  
  private StringBuffer getStringValue(Node paramNode, StringBuffer paramStringBuffer) {
    if (isText(paramNode)) {
      paramStringBuffer.append(paramNode.getNodeValue());
      return paramStringBuffer;
    } 
    NodeList nodeList = paramNode.getChildNodes();
    int j = nodeList.getLength();
    int i = 0;
    while (true) {
      if (i < j) {
        getStringValue(nodeList.item(i), paramStringBuffer);
        i++;
        continue;
      } 
      return paramStringBuffer;
    } 
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    return isElement(paramObject) ? new DocumentNavigator$AttributeIterator((Node)paramObject) : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getAttributeName(Object paramObject) {
    if (isAttribute(paramObject)) {
      String str2 = ((Node)paramObject).getLocalName();
      String str1 = str2;
      if (str2 == null)
        str1 = ((Node)paramObject).getNodeName(); 
      return str1;
    } 
    return null;
  }
  
  public String getAttributeNamespaceUri(Object paramObject) {
    try {
      paramObject = paramObject;
      if (paramObject.getNodeType() == 2)
        return paramObject.getNamespaceURI(); 
    } catch (ClassCastException classCastException) {}
    return null;
  }
  
  public String getAttributeQName(Object paramObject) {
    try {
      paramObject = paramObject;
      if (paramObject.getNodeType() == 2)
        return paramObject.getNodeName(); 
    } catch (ClassCastException classCastException) {}
    return null;
  }
  
  public String getAttributeStringValue(Object paramObject) {
    return isAttribute(paramObject) ? ((Node)paramObject).getNodeValue() : null;
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    Node node = (Node)paramObject;
    return (node.getNodeType() == 1 || node.getNodeType() == 9) ? new DocumentNavigator$1(this, (Node)paramObject) : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getCommentStringValue(Object paramObject) {
    return isComment(paramObject) ? ((Node)paramObject).getNodeValue() : null;
  }
  
  public Object getDocument(String paramString) {
    try {
      DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
      documentBuilderFactory.setNamespaceAware(true);
      return documentBuilderFactory.newDocumentBuilder().parse(paramString);
    } catch (ParserConfigurationException parserConfigurationException) {
      throw new FunctionCallException("JAXP setup error in document() function: " + parserConfigurationException.getMessage(), parserConfigurationException);
    } catch (SAXException sAXException) {
      throw new FunctionCallException("XML error in document() function: " + sAXException.getMessage(), sAXException);
    } catch (IOException iOException) {
      throw new FunctionCallException("I/O error in document() function: " + iOException.getMessage(), iOException);
    } 
  }
  
  public Object getDocumentNode(Object paramObject) {
    return isDocument(paramObject) ? paramObject : ((Node)paramObject).getOwnerDocument();
  }
  
  public Object getElementById(Object paramObject, String paramString) {
    paramObject = getDocumentNode(paramObject);
    return (paramObject != null) ? paramObject.getElementById(paramString) : null;
  }
  
  public String getElementName(Object paramObject) {
    if (isElement(paramObject)) {
      String str2 = ((Node)paramObject).getLocalName();
      String str1 = str2;
      if (str2 == null)
        str1 = ((Node)paramObject).getNodeName(); 
      return str1;
    } 
    return null;
  }
  
  public String getElementNamespaceUri(Object paramObject) {
    try {
      paramObject = paramObject;
      if (paramObject.getNodeType() == 1)
        return paramObject.getNamespaceURI(); 
    } catch (ClassCastException classCastException) {}
    return null;
  }
  
  public String getElementQName(Object paramObject) {
    try {
      paramObject = paramObject;
      if (paramObject.getNodeType() == 1)
        return paramObject.getNodeName(); 
    } catch (ClassCastException classCastException) {}
    return null;
  }
  
  public String getElementStringValue(Object paramObject) {
    return isElement(paramObject) ? getStringValue((Node)paramObject, new StringBuffer()).toString() : null;
  }
  
  public Iterator getFollowingAxisIterator(Object paramObject) {
    return new DocumentNavigator$6(this, (Node)paramObject);
  }
  
  public Iterator getFollowingSiblingAxisIterator(Object paramObject) {
    return new DocumentNavigator$4(this, (Node)paramObject);
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    if (isElement(paramObject)) {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      for (Node node = (Node)paramObject; node != null; node = node.getParentNode()) {
        String str = node.getNamespaceURI();
        if (str != null && !"".equals(str)) {
          String str1 = node.getPrefix();
          if (!hashMap.containsKey(str1))
            hashMap.put(str1, new NamespaceNode((Node)paramObject, str1, str)); 
        } 
        if (node.hasAttributes()) {
          NamedNodeMap namedNodeMap = node.getAttributes();
          int j = namedNodeMap.getLength();
          int i;
          for (i = 0; i < j; i++) {
            Attr attr = (Attr)namedNodeMap.item(i);
            String str1 = attr.getNamespaceURI();
            if (!"http://www.w3.org/2000/xmlns/".equals(str1) && str1 != null) {
              String str2 = attr.getPrefix();
              NamespaceNode namespaceNode = new NamespaceNode((Node)paramObject, str2, str1);
              if (!hashMap.containsKey(str2))
                hashMap.put(str2, namespaceNode); 
            } 
          } 
          for (i = 0; i < j; i++) {
            Attr attr = (Attr)namedNodeMap.item(i);
            if ("http://www.w3.org/2000/xmlns/".equals(attr.getNamespaceURI())) {
              NamespaceNode namespaceNode = new NamespaceNode((Node)paramObject, attr);
              String str1 = namespaceNode.getNodeName();
              if (!hashMap.containsKey(str1))
                hashMap.put(str1, namespaceNode); 
            } 
          } 
        } 
      } 
      hashMap.put("xml", new NamespaceNode((Node)paramObject, "xml", "http://www.w3.org/XML/1998/namespace"));
      paramObject = hashMap.get("");
      if (paramObject != null && paramObject.getNodeValue().length() == 0)
        hashMap.remove(""); 
      return hashMap.values().iterator();
    } 
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getNamespacePrefix(Object paramObject) {
    return isNamespace(paramObject) ? ((NamespaceNode)paramObject).getLocalName() : null;
  }
  
  public String getNamespaceStringValue(Object paramObject) {
    return isNamespace(paramObject) ? ((NamespaceNode)paramObject).getNodeValue() : null;
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    paramObject = paramObject;
    return (Iterator)((paramObject.getNodeType() == 2) ? new DocumentNavigator$2(this, (Node)paramObject) : new DocumentNavigator$3(this, (Node)paramObject));
  }
  
  public Object getParentNode(Object paramObject) {
    paramObject = paramObject;
    return (paramObject.getNodeType() == 2) ? ((Attr)paramObject).getOwnerElement() : paramObject.getParentNode();
  }
  
  public Iterator getPrecedingSiblingAxisIterator(Object paramObject) {
    return new DocumentNavigator$5(this, (Node)paramObject);
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    if (isProcessingInstruction(paramObject))
      return ((ProcessingInstruction)paramObject).getData(); 
    throw new ClassCastException(paramObject + " is not a processing instruction");
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    if (isProcessingInstruction(paramObject))
      return ((ProcessingInstruction)paramObject).getTarget(); 
    throw new ClassCastException(paramObject + " is not a processing instruction");
  }
  
  public String getTextStringValue(Object paramObject) {
    return isText(paramObject) ? ((Node)paramObject).getNodeValue() : null;
  }
  
  public boolean isAttribute(Object paramObject) {
    return (paramObject instanceof Node && ((Node)paramObject).getNodeType() == 2 && !"http://www.w3.org/2000/xmlns/".equals(((Node)paramObject).getNamespaceURI()));
  }
  
  public boolean isComment(Object paramObject) {
    return (paramObject instanceof Node && ((Node)paramObject).getNodeType() == 8);
  }
  
  public boolean isDocument(Object paramObject) {
    return (paramObject instanceof Node && ((Node)paramObject).getNodeType() == 9);
  }
  
  public boolean isElement(Object paramObject) {
    return (paramObject instanceof Node && ((Node)paramObject).getNodeType() == 1);
  }
  
  public boolean isNamespace(Object paramObject) {
    return paramObject instanceof NamespaceNode;
  }
  
  public boolean isProcessingInstruction(Object paramObject) {
    return (paramObject instanceof Node && ((Node)paramObject).getNodeType() == 7);
  }
  
  public boolean isText(Object paramObject) {
    if (paramObject instanceof Node) {
      switch (((Node)paramObject).getNodeType()) {
        default:
          return false;
        case 3:
        case 4:
          break;
      } 
      return true;
    } 
  }
  
  public XPath parseXPath(String paramString) {
    return (XPath)new DOMXPath(paramString);
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    paramObject = getNamespaceAxisIterator(paramObject);
    while (paramObject.hasNext()) {
      NamespaceNode namespaceNode = paramObject.next();
      if (paramString.equals(namespaceNode.getNodeName()))
        return namespaceNode.getNodeValue(); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */