package org.jaxen.dom4j;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.io.SAXReader;
import org.jaxen.DefaultNavigator;
import org.jaxen.FunctionCallException;
import org.jaxen.JaxenConstants;
import org.jaxen.NamedAccessNavigator;
import org.jaxen.Navigator;
import org.jaxen.XPath;
import org.jaxen.util.SingleObjectIterator;

public class DocumentNavigator extends DefaultNavigator implements NamedAccessNavigator {
  private static final long serialVersionUID = 5582300797286535936L;
  
  private transient SAXReader reader;
  
  public static Navigator getInstance() {
    return (Navigator)DocumentNavigator$Singleton.access$000();
  }
  
  private String getNodeStringValue(Node paramNode) {
    return paramNode.getStringValue();
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    return !(paramObject instanceof Element) ? JaxenConstants.EMPTY_ITERATOR : ((Element)paramObject).attributeIterator();
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    if (paramObject instanceof Element) {
      paramObject = ((Element)paramObject).attribute(QName.get(paramString1, paramString2, paramString3));
      return (Iterator)((paramObject == null) ? JaxenConstants.EMPTY_ITERATOR : new SingleObjectIterator(paramObject));
    } 
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getAttributeName(Object paramObject) {
    return ((Attribute)paramObject).getName();
  }
  
  public String getAttributeNamespaceUri(Object paramObject) {
    String str = ((Attribute)paramObject).getNamespaceURI();
    paramObject = str;
    if (str == null)
      paramObject = ""; 
    return (String)paramObject;
  }
  
  public String getAttributeQName(Object paramObject) {
    return ((Attribute)paramObject).getQualifiedName();
  }
  
  public String getAttributeStringValue(Object paramObject) {
    return getNodeStringValue((Node)paramObject);
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    Iterator iterator = null;
    if (paramObject instanceof Branch)
      iterator = ((Branch)paramObject).nodeIterator(); 
    return (iterator != null) ? iterator : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public Iterator getChildAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    if (paramObject instanceof Element)
      return ((Element)paramObject).elementIterator(QName.get(paramString1, paramString2, paramString3)); 
    if (paramObject instanceof Document) {
      paramObject = ((Document)paramObject).getRootElement();
      return (Iterator)((paramObject == null || !paramObject.getName().equals(paramString1)) ? JaxenConstants.EMPTY_ITERATOR : ((paramString3 != null && !paramString3.equals(paramObject.getNamespaceURI())) ? JaxenConstants.EMPTY_ITERATOR : new SingleObjectIterator(paramObject)));
    } 
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getCommentStringValue(Object paramObject) {
    return ((Comment)paramObject).getText();
  }
  
  public Object getDocument(String paramString) {
    try {
      return getSAXReader().read(paramString);
    } catch (DocumentException documentException) {
      throw new FunctionCallException("Failed to parse document for URI: " + paramString, documentException);
    } 
  }
  
  public Object getDocumentNode(Object paramObject) {
    return (paramObject instanceof Document) ? paramObject : ((paramObject instanceof Node) ? ((Node)paramObject).getDocument() : null);
  }
  
  public String getElementName(Object paramObject) {
    return ((Element)paramObject).getName();
  }
  
  public String getElementNamespaceUri(Object paramObject) {
    String str = ((Element)paramObject).getNamespaceURI();
    paramObject = str;
    if (str == null)
      paramObject = ""; 
    return (String)paramObject;
  }
  
  public String getElementQName(Object paramObject) {
    return ((Element)paramObject).getQualifiedName();
  }
  
  public String getElementStringValue(Object paramObject) {
    return getNodeStringValue((Node)paramObject);
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    if (!(paramObject instanceof Element))
      return JaxenConstants.EMPTY_ITERATOR; 
    Element element = (Element)paramObject;
    ArrayList<Node> arrayList = new ArrayList();
    HashSet<String> hashSet = new HashSet();
    for (paramObject = element; paramObject != null; paramObject = paramObject.getParent()) {
      ArrayList<Namespace> arrayList1 = new ArrayList(paramObject.declaredNamespaces());
      arrayList1.add(paramObject.getNamespace());
      Iterator<Attribute> iterator = paramObject.attributes().iterator();
      while (iterator.hasNext())
        arrayList1.add(((Attribute)iterator.next()).getNamespace()); 
      for (Namespace namespace : arrayList1) {
        if (namespace != Namespace.NO_NAMESPACE) {
          String str = namespace.getPrefix();
          if (!hashSet.contains(str)) {
            hashSet.add(str);
            arrayList.add(namespace.asXPathResult(element));
          } 
        } 
      } 
    } 
    arrayList.add(Namespace.XML_NAMESPACE.asXPathResult(element));
    return arrayList.iterator();
  }
  
  public String getNamespacePrefix(Object paramObject) {
    return ((Namespace)paramObject).getPrefix();
  }
  
  public String getNamespaceStringValue(Object paramObject) {
    return ((Namespace)paramObject).getURI();
  }
  
  public short getNodeType(Object paramObject) {
    return (paramObject instanceof Node) ? ((Node)paramObject).getNodeType() : 0;
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    if (paramObject instanceof Document)
      return JaxenConstants.EMPTY_ITERATOR; 
    Node node = (Node)paramObject;
    Element element = node.getParent();
    paramObject = element;
    if (element == null)
      paramObject = node.getDocument(); 
    return (Iterator)new SingleObjectIterator(paramObject);
  }
  
  public Object getParentNode(Object paramObject) {
    Document document;
    if (paramObject instanceof Node) {
      Node node = (Node)paramObject;
      Element element = node.getParent();
      if (element == null) {
        document = node.getDocument();
        Document document1 = document;
        if (document == paramObject)
          document1 = null; 
        return document1;
      } 
    } else {
      return null;
    } 
    return document;
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    return ((ProcessingInstruction)paramObject).getText();
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    return ((ProcessingInstruction)paramObject).getTarget();
  }
  
  public SAXReader getSAXReader() {
    if (this.reader == null) {
      this.reader = new SAXReader();
      this.reader.setMergeAdjacentText(true);
    } 
    return this.reader;
  }
  
  public String getTextStringValue(Object paramObject) {
    return getNodeStringValue((Node)paramObject);
  }
  
  public boolean isAttribute(Object paramObject) {
    return paramObject instanceof Attribute;
  }
  
  public boolean isComment(Object paramObject) {
    return paramObject instanceof Comment;
  }
  
  public boolean isDocument(Object paramObject) {
    return paramObject instanceof Document;
  }
  
  public boolean isElement(Object paramObject) {
    return paramObject instanceof Element;
  }
  
  public boolean isNamespace(Object paramObject) {
    return paramObject instanceof Namespace;
  }
  
  public boolean isProcessingInstruction(Object paramObject) {
    return paramObject instanceof ProcessingInstruction;
  }
  
  public boolean isText(Object paramObject) {
    return (paramObject instanceof org.dom4j.Text || paramObject instanceof org.dom4j.CDATA);
  }
  
  public XPath parseXPath(String paramString) {
    return (XPath)new Dom4jXPath(paramString);
  }
  
  public void setSAXReader(SAXReader paramSAXReader) {
    this.reader = paramSAXReader;
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    String str2 = null;
    if (paramObject instanceof Element) {
      paramObject = paramObject;
    } else if (paramObject instanceof Node) {
      paramObject = ((Node)paramObject).getParent();
    } else {
      paramObject = null;
    } 
    String str1 = str2;
    if (paramObject != null) {
      Namespace namespace = paramObject.getNamespaceForPrefix(paramString);
      str1 = str2;
      if (namespace != null)
        str1 = namespace.getURI(); 
    } 
    return str1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom4j\DocumentNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */