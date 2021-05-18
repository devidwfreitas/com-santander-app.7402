package org.jaxen.jdom;

import java.util.HashMap;
import java.util.Iterator;
import org.jaxen.DefaultNavigator;
import org.jaxen.FunctionCallException;
import org.jaxen.JaxenConstants;
import org.jaxen.NamedAccessNavigator;
import org.jaxen.Navigator;
import org.jaxen.XPath;
import org.jaxen.util.SingleObjectIterator;
import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.Parent;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.jdom.input.SAXBuilder;

public class DocumentNavigator extends DefaultNavigator implements NamedAccessNavigator {
  private static final long serialVersionUID = -1636727587303584165L;
  
  public static Navigator getInstance() {
    return (Navigator)DocumentNavigator$Singleton.access$000();
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    return !(paramObject instanceof Element) ? JaxenConstants.EMPTY_ITERATOR : ((Element)paramObject).getAttributes().iterator();
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    if (paramObject instanceof Element) {
      Element element = (Element)paramObject;
      if (paramString3 == null) {
        paramObject = Namespace.NO_NAMESPACE;
      } else {
        paramObject = Namespace.getNamespace(paramString2, paramString3);
      } 
      paramObject = element.getAttribute(paramString1, (Namespace)paramObject);
      if (paramObject != null)
        return (Iterator)new SingleObjectIterator(paramObject); 
    } 
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getAttributeName(Object paramObject) {
    return ((Attribute)paramObject).getName();
  }
  
  public String getAttributeNamespaceUri(Object paramObject) {
    String str = ((Attribute)paramObject).getNamespaceURI();
    paramObject = str;
    if (str != null) {
      paramObject = str;
      if (str.length() == 0)
        paramObject = null; 
    } 
    return (String)paramObject;
  }
  
  public String getAttributeQName(Object paramObject) {
    paramObject = paramObject;
    String str = paramObject.getNamespacePrefix();
    return (str == null || "".equals(str)) ? paramObject.getName() : (str + ":" + paramObject.getName());
  }
  
  public String getAttributeStringValue(Object paramObject) {
    return ((Attribute)paramObject).getValue();
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    return (paramObject instanceof Element) ? ((Element)paramObject).getContent().iterator() : ((paramObject instanceof Document) ? ((Document)paramObject).getContent().iterator() : JaxenConstants.EMPTY_ITERATOR);
  }
  
  public Iterator getChildAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    if (paramObject instanceof Element) {
      paramObject = paramObject;
      return (paramString3 == null) ? paramObject.getChildren(paramString1).iterator() : paramObject.getChildren(paramString1, Namespace.getNamespace(paramString2, paramString3)).iterator();
    } 
    if (paramObject instanceof Document) {
      paramObject = ((Document)paramObject).getRootElement();
      if (!paramObject.getName().equals(paramString1))
        return JaxenConstants.EMPTY_ITERATOR; 
      if (paramString3 != null) {
        if (!Namespace.getNamespace(paramString2, paramString3).equals(paramObject.getNamespace()))
          return JaxenConstants.EMPTY_ITERATOR; 
      } else if (paramObject.getNamespace() != Namespace.NO_NAMESPACE) {
        return JaxenConstants.EMPTY_ITERATOR;
      } 
      return (Iterator)new SingleObjectIterator(paramObject);
    } 
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getCommentStringValue(Object paramObject) {
    return ((Comment)paramObject).getText();
  }
  
  public Object getDocument(String paramString) {
    try {
      return (new SAXBuilder()).build(paramString);
    } catch (Exception exception) {
      throw new FunctionCallException(exception.getMessage());
    } 
  }
  
  public Object getDocumentNode(Object paramObject) {
    return (paramObject instanceof Document) ? paramObject : ((Element)paramObject).getDocument();
  }
  
  public String getElementName(Object paramObject) {
    return ((Element)paramObject).getName();
  }
  
  public String getElementNamespaceUri(Object paramObject) {
    String str = ((Element)paramObject).getNamespaceURI();
    paramObject = str;
    if (str != null) {
      paramObject = str;
      if (str.length() == 0)
        paramObject = null; 
    } 
    return (String)paramObject;
  }
  
  public String getElementQName(Object paramObject) {
    paramObject = paramObject;
    String str = paramObject.getNamespacePrefix();
    return (str == null || str.length() == 0) ? paramObject.getName() : (str + ":" + paramObject.getName());
  }
  
  public String getElementStringValue(Object paramObject) {
    Element element = (Element)paramObject;
    paramObject = new StringBuffer();
    for (Text text : element.getContent()) {
      if (text instanceof Text) {
        paramObject.append(((Text)text).getText());
        continue;
      } 
      if (text instanceof CDATA) {
        paramObject.append(((CDATA)text).getText());
        continue;
      } 
      if (text instanceof Element)
        paramObject.append(getElementStringValue(text)); 
    } 
    return paramObject.toString();
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    if (!(paramObject instanceof Element))
      return JaxenConstants.EMPTY_ITERATOR; 
    Element element = (Element)paramObject;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (paramObject = element; paramObject != null; paramObject = null) {
      Namespace namespace = paramObject.getNamespace();
      if (namespace != Namespace.NO_NAMESPACE && !hashMap.containsKey(namespace.getPrefix()))
        hashMap.put(namespace.getPrefix(), new XPathNamespace(element, namespace)); 
      for (Namespace namespace1 : paramObject.getAdditionalNamespaces()) {
        if (!hashMap.containsKey(namespace1.getPrefix()))
          hashMap.put(namespace1.getPrefix(), new XPathNamespace(element, namespace1)); 
      } 
      Iterator<Attribute> iterator = paramObject.getAttributes().iterator();
      while (iterator.hasNext()) {
        Namespace namespace1 = ((Attribute)iterator.next()).getNamespace();
        if (namespace1 != Namespace.NO_NAMESPACE && !hashMap.containsKey(namespace1.getPrefix()))
          hashMap.put(namespace1.getPrefix(), new XPathNamespace(element, namespace1)); 
      } 
      if (paramObject.getParent() instanceof Element) {
        paramObject = paramObject.getParent();
        continue;
      } 
    } 
    hashMap.put("xml", new XPathNamespace(element, Namespace.XML_NAMESPACE));
    return hashMap.values().iterator();
  }
  
  public String getNamespacePrefix(Object paramObject) {
    return (paramObject instanceof Namespace) ? ((Namespace)paramObject).getPrefix() : ((XPathNamespace)paramObject).getJDOMNamespace().getPrefix();
  }
  
  public String getNamespaceStringValue(Object paramObject) {
    return (paramObject instanceof Namespace) ? ((Namespace)paramObject).getURI() : ((XPathNamespace)paramObject).getJDOMNamespace().getURI();
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    Object object;
    if (paramObject instanceof Document)
      return JaxenConstants.EMPTY_ITERATOR; 
    if (paramObject instanceof Element) {
      Parent parent = ((Element)paramObject).getParent();
      object = parent;
      if (parent == null) {
        object = parent;
        if (((Element)paramObject).isRootElement())
          Document document = ((Element)paramObject).getDocument(); 
      } 
    } else if (paramObject instanceof Attribute) {
      object = ((Attribute)paramObject).getParent();
    } else if (paramObject instanceof XPathNamespace) {
      object = ((XPathNamespace)paramObject).getJDOMElement();
    } else if (paramObject instanceof ProcessingInstruction) {
      object = ((ProcessingInstruction)paramObject).getParent();
    } else if (paramObject instanceof Comment) {
      object = ((Comment)paramObject).getParent();
    } else if (paramObject instanceof Text) {
      object = ((Text)paramObject).getParent();
    } else {
      object = null;
    } 
    return (Iterator)((object != null) ? new SingleObjectIterator(object) : JaxenConstants.EMPTY_ITERATOR);
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    return ((ProcessingInstruction)paramObject).getData();
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    return ((ProcessingInstruction)paramObject).getTarget();
  }
  
  public String getTextStringValue(Object paramObject) {
    return (paramObject instanceof Text) ? ((Text)paramObject).getText() : ((paramObject instanceof CDATA) ? ((CDATA)paramObject).getText() : "");
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
    return (paramObject instanceof Namespace || paramObject instanceof XPathNamespace);
  }
  
  public boolean isProcessingInstruction(Object paramObject) {
    return paramObject instanceof ProcessingInstruction;
  }
  
  public boolean isText(Object paramObject) {
    return (paramObject instanceof Text || paramObject instanceof CDATA);
  }
  
  public XPath parseXPath(String paramString) {
    return (XPath)new JDOMXPath(paramString);
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    if (paramObject instanceof Element) {
      paramObject = paramObject;
    } else if (paramObject instanceof Text) {
      paramObject = ((Text)paramObject).getParent();
    } else if (paramObject instanceof Attribute) {
      paramObject = ((Attribute)paramObject).getParent();
    } else if (paramObject instanceof XPathNamespace) {
      paramObject = ((XPathNamespace)paramObject).getJDOMElement();
    } else if (paramObject instanceof Comment) {
      paramObject = ((Comment)paramObject).getParent();
    } else if (paramObject instanceof ProcessingInstruction) {
      paramObject = ((ProcessingInstruction)paramObject).getParent();
    } else {
      paramObject = null;
    } 
    if (paramObject != null) {
      Namespace namespace = paramObject.getNamespace(paramString);
      if (namespace != null)
        return namespace.getURI(); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\jdom\DocumentNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */