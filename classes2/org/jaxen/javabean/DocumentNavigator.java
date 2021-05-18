package org.jaxen.javabean;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import org.jaxen.DefaultNavigator;
import org.jaxen.JaxenConstants;
import org.jaxen.NamedAccessNavigator;
import org.jaxen.Navigator;
import org.jaxen.XPath;
import org.jaxen.util.SingleObjectIterator;

public class DocumentNavigator extends DefaultNavigator implements NamedAccessNavigator {
  private static final Class[] EMPTY_CLASS_ARRAY = new Class[0];
  
  private static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];
  
  private static final DocumentNavigator instance = new DocumentNavigator();
  
  private static final long serialVersionUID = -1768605107626726499L;
  
  public static Navigator getInstance() {
    return (Navigator)instance;
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getAttributeName(Object paramObject) {
    return "";
  }
  
  public String getAttributeNamespaceUri(Object paramObject) {
    return "";
  }
  
  public String getAttributeQName(Object paramObject) {
    return "";
  }
  
  public String getAttributeStringValue(Object paramObject) {
    return paramObject.toString();
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public Iterator getChildAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3) {
    Class<?> clazz = ((Element)paramObject).getObject().getClass();
    String str = javacase(paramString1);
    try {
      Method method = clazz.getMethod("get" + str, EMPTY_CLASS_ARRAY);
      if (method == null)
        return JaxenConstants.EMPTY_ITERATOR; 
    } catch (NoSuchMethodException noSuchMethodException) {
      try {
        Method method = clazz.getMethod("get" + str + "s", EMPTY_CLASS_ARRAY);
        if (method == null)
          return JaxenConstants.EMPTY_ITERATOR; 
      } catch (NoSuchMethodException null) {
        try {
          Method method = clazz.getMethod(paramString1, EMPTY_CLASS_ARRAY);
          if (method == null)
            return JaxenConstants.EMPTY_ITERATOR; 
        } catch (NoSuchMethodException noSuchMethodException1) {
          noSuchMethodException1 = null;
          if (noSuchMethodException1 == null)
            return JaxenConstants.EMPTY_ITERATOR; 
        } 
        try {
          Object object = noSuchMethodException1.invoke(((Element)paramObject).getObject(), EMPTY_OBJECT_ARRAY);
          return (Iterator)((object == null) ? JaxenConstants.EMPTY_ITERATOR : ((object instanceof Collection) ? new ElementIterator((Element)paramObject, paramString1, ((Collection)object).iterator()) : (object.getClass().isArray() ? JaxenConstants.EMPTY_ITERATOR : new SingleObjectIterator(new Element((Element)paramObject, paramString1, object)))));
        } catch (IllegalAccessException illegalAccessException) {
        
        } catch (InvocationTargetException invocationTargetException) {}
        return JaxenConstants.EMPTY_ITERATOR;
      } 
    } 
  }
  
  public String getCommentStringValue(Object paramObject) {
    return null;
  }
  
  public Object getDocument(String paramString) {
    return null;
  }
  
  public Object getDocumentNode(Object paramObject) {
    return null;
  }
  
  public String getElementName(Object paramObject) {
    return ((Element)paramObject).getName();
  }
  
  public String getElementNamespaceUri(Object paramObject) {
    return "";
  }
  
  public String getElementQName(Object paramObject) {
    return "";
  }
  
  public String getElementStringValue(Object paramObject) {
    return (paramObject instanceof Element) ? ((Element)paramObject).getObject().toString() : paramObject.toString();
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    return JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getNamespacePrefix(Object paramObject) {
    return null;
  }
  
  public String getNamespaceStringValue(Object paramObject) {
    return paramObject.toString();
  }
  
  public short getNodeType(Object paramObject) {
    return 0;
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    return (Iterator)((paramObject instanceof Element) ? new SingleObjectIterator(((Element)paramObject).getParent()) : JaxenConstants.EMPTY_ITERATOR);
  }
  
  public Object getParentNode(Object paramObject) {
    return (paramObject instanceof Element) ? ((Element)paramObject).getParent() : JaxenConstants.EMPTY_ITERATOR;
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    return null;
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    return null;
  }
  
  public String getTextStringValue(Object paramObject) {
    return (paramObject instanceof Element) ? ((Element)paramObject).getObject().toString() : paramObject.toString();
  }
  
  public boolean isAttribute(Object paramObject) {
    return false;
  }
  
  public boolean isComment(Object paramObject) {
    return false;
  }
  
  public boolean isDocument(Object paramObject) {
    return false;
  }
  
  public boolean isElement(Object paramObject) {
    return paramObject instanceof Element;
  }
  
  public boolean isNamespace(Object paramObject) {
    return false;
  }
  
  public boolean isProcessingInstruction(Object paramObject) {
    return false;
  }
  
  public boolean isText(Object paramObject) {
    return paramObject instanceof String;
  }
  
  protected String javacase(String paramString) {
    return (paramString.length() == 0) ? paramString : ((paramString.length() == 1) ? paramString.toUpperCase() : (paramString.substring(0, 1).toUpperCase() + paramString.substring(1)));
  }
  
  public XPath parseXPath(String paramString) {
    return (XPath)new JavaBeanXPath(paramString);
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\javabean\DocumentNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */