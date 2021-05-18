package org.jaxen.xom;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import nu.xom.Attribute;
import nu.xom.Builder;
import nu.xom.Comment;
import nu.xom.Element;
import nu.xom.Node;
import nu.xom.NodeFactory;
import nu.xom.ParentNode;
import nu.xom.ProcessingInstruction;
import nu.xom.Text;
import org.jaxen.BaseXPath;
import org.jaxen.DefaultNavigator;
import org.jaxen.FunctionCallException;
import org.jaxen.JaxenConstants;
import org.jaxen.Navigator;
import org.jaxen.XPath;
import org.jaxen.util.SingleObjectIterator;

public class DocumentNavigator extends DefaultNavigator {
  private static final long serialVersionUID = 3159311338575942877L;
  
  private boolean addNamespaceForElement(Element paramElement, String paramString1, String paramString2, Map<String, DocumentNavigator$XPathNamespace> paramMap) {
    if (paramString1 != null && paramString1.length() > 0 && !paramMap.containsKey(paramString2)) {
      paramMap.put(paramString2, new DocumentNavigator$XPathNamespace(paramElement, paramString1, paramString2));
      return true;
    } 
    return false;
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    return isElement(paramObject) ? new DocumentNavigator$1(this, paramObject, 0, ((Element)paramObject).getAttributeCount()) : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getAttributeName(Object paramObject) {
    return isAttribute(paramObject) ? ((Attribute)paramObject).getLocalName() : null;
  }
  
  public String getAttributeNamespaceUri(Object paramObject) {
    return isAttribute(paramObject) ? ((Attribute)paramObject).getNamespaceURI() : null;
  }
  
  public String getAttributeQName(Object paramObject) {
    return isAttribute(paramObject) ? ((Attribute)paramObject).getQualifiedName() : null;
  }
  
  public String getAttributeStringValue(Object paramObject) {
    return isAttribute(paramObject) ? ((Attribute)paramObject).getValue() : null;
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    return (isElement(paramObject) || paramObject instanceof nu.xom.Document) ? new DocumentNavigator$2(this, paramObject, 0, ((ParentNode)paramObject).getChildCount()) : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getCommentStringValue(Object paramObject) {
    return isComment(paramObject) ? ((Comment)paramObject).getValue() : null;
  }
  
  public Object getDocument(String paramString) {
    try {
      return (new Builder(new NodeFactory())).build(paramString);
    } catch (Exception exception) {
      throw new FunctionCallException(exception);
    } 
  }
  
  public Object getDocumentNode(Object paramObject) {
    if (paramObject instanceof ParentNode) {
      paramObject = paramObject;
      return paramObject.getDocument();
    } 
    if (paramObject instanceof Node) {
      paramObject = ((Node)paramObject).getParent();
      return paramObject.getDocument();
    } 
    paramObject = null;
    return paramObject.getDocument();
  }
  
  public String getElementName(Object paramObject) {
    return isElement(paramObject) ? ((Element)paramObject).getLocalName() : null;
  }
  
  public String getElementNamespaceUri(Object paramObject) {
    return isElement(paramObject) ? ((Element)paramObject).getNamespaceURI() : null;
  }
  
  public String getElementQName(Object paramObject) {
    return isElement(paramObject) ? ((Element)paramObject).getQualifiedName() : null;
  }
  
  public String getElementStringValue(Object paramObject) {
    return (paramObject instanceof Node) ? ((Node)paramObject).getValue() : null;
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    if (!isElement(paramObject))
      return JaxenConstants.EMPTY_ITERATOR; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Object object2 = paramObject;
    paramObject = object2;
    Object object1 = paramObject;
    while (object1 instanceof Element) {
      paramObject = object1;
      addNamespaceForElement((Element)paramObject, paramObject.getNamespaceURI(), paramObject.getNamespacePrefix(), hashMap);
      int j = paramObject.getNamespaceDeclarationCount();
      for (int i = 0; i < j; i++) {
        object1 = paramObject.getNamespacePrefix(i);
        addNamespaceForElement((Element)paramObject, paramObject.getNamespaceURI((String)object1), (String)object1, hashMap);
      } 
      object1 = paramObject.getParent();
      object2 = paramObject;
    } 
    addNamespaceForElement((Element)object2, "http://www.w3.org/XML/1998/namespace", "xml", hashMap);
    return hashMap.values().iterator();
  }
  
  public String getNamespacePrefix(Object paramObject) {
    return isElement(paramObject) ? ((Element)paramObject).getNamespacePrefix() : (isAttribute(paramObject) ? ((Attribute)paramObject).getNamespacePrefix() : ((paramObject instanceof DocumentNavigator$XPathNamespace) ? ((DocumentNavigator$XPathNamespace)paramObject).getNamespacePrefix() : null));
  }
  
  public String getNamespaceStringValue(Object paramObject) {
    return isElement(paramObject) ? ((Element)paramObject).getNamespaceURI() : (isAttribute(paramObject) ? ((Attribute)paramObject).getNamespaceURI() : ((paramObject instanceof DocumentNavigator$XPathNamespace) ? ((DocumentNavigator$XPathNamespace)paramObject).getNamespaceURI() : null));
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    SingleObjectIterator singleObjectIterator = null;
    if (paramObject instanceof Node) {
      paramObject = ((Node)paramObject).getParent();
    } else if (isNamespace(paramObject)) {
      paramObject = ((DocumentNavigator$XPathNamespace)paramObject).getElement();
    } else {
      paramObject = null;
    } 
    if (paramObject != null)
      singleObjectIterator = new SingleObjectIterator(paramObject); 
    return (Iterator)singleObjectIterator;
  }
  
  public Object getParentNode(Object paramObject) {
    return (paramObject instanceof Node) ? ((Node)paramObject).getParent() : null;
  }
  
  public Iterator getPrecedingAxisIterator(Object paramObject) {
    return super.getPrecedingAxisIterator(paramObject);
  }
  
  public Iterator getPrecedingSiblingAxisIterator(Object paramObject) {
    return super.getPrecedingSiblingAxisIterator(paramObject);
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    return (paramObject instanceof ProcessingInstruction) ? ((ProcessingInstruction)paramObject).getValue() : null;
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    return (paramObject instanceof ProcessingInstruction) ? ((ProcessingInstruction)paramObject).getTarget() : null;
  }
  
  public String getTextStringValue(Object paramObject) {
    return (paramObject instanceof Text) ? ((Text)paramObject).getValue() : null;
  }
  
  public boolean isAttribute(Object paramObject) {
    return paramObject instanceof Attribute;
  }
  
  public boolean isComment(Object paramObject) {
    return paramObject instanceof Comment;
  }
  
  public boolean isDocument(Object paramObject) {
    return paramObject instanceof nu.xom.Document;
  }
  
  public boolean isElement(Object paramObject) {
    return paramObject instanceof Element;
  }
  
  public boolean isNamespace(Object paramObject) {
    return paramObject instanceof DocumentNavigator$XPathNamespace;
  }
  
  public boolean isProcessingInstruction(Object paramObject) {
    return paramObject instanceof ProcessingInstruction;
  }
  
  public boolean isText(Object paramObject) {
    return paramObject instanceof Text;
  }
  
  public XPath parseXPath(String paramString) {
    return (XPath)new BaseXPath(paramString, (Navigator)this);
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    if (paramObject instanceof Element) {
      paramObject = paramObject;
    } else if (paramObject instanceof ParentNode) {
      paramObject = null;
    } else if (paramObject instanceof Node) {
      paramObject = ((Node)paramObject).getParent();
    } else if (paramObject instanceof DocumentNavigator$XPathNamespace) {
      paramObject = ((DocumentNavigator$XPathNamespace)paramObject).getElement();
    } else {
      paramObject = null;
    } 
    return (paramObject != null) ? paramObject.getNamespaceURI(paramString) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\xom\DocumentNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */