package org.dom4j.xpath;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.XPath;
import org.dom4j.XPathException;
import org.jaxen.FunctionContext;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.VariableContext;
import org.jaxen.XPath;
import org.jaxen.dom4j.Dom4jXPath;

public class DefaultXPath implements Serializable, NodeFilter, XPath {
  private NamespaceContext namespaceContext;
  
  private String text;
  
  private XPath xpath;
  
  public DefaultXPath(String paramString) {
    this.text = paramString;
    this.xpath = parse(paramString);
  }
  
  protected static XPath parse(String paramString) {
    try {
      return (XPath)new Dom4jXPath(paramString);
    } catch (JaxenException jaxenException) {
      throw new InvalidXPathException(paramString, jaxenException.getMessage());
    } catch (RuntimeException runtimeException) {
      throw new InvalidXPathException(paramString);
    } 
  }
  
  public boolean booleanValueOf(Object paramObject) {
    try {
      setNSContext(paramObject);
      return this.xpath.booleanValueOf(paramObject);
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return false;
    } 
  }
  
  public Object evaluate(Object paramObject) {
    try {
      setNSContext(paramObject);
      List list = this.xpath.selectNodes(paramObject);
      paramObject = list;
      if (list != null) {
        paramObject = list;
        if (list.size() == 1)
          paramObject = list.get(0); 
      } 
      return paramObject;
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return null;
    } 
  }
  
  protected Object getCompareValue(Node paramNode) {
    return valueOf(paramNode);
  }
  
  public FunctionContext getFunctionContext() {
    return this.xpath.getFunctionContext();
  }
  
  public NamespaceContext getNamespaceContext() {
    return this.namespaceContext;
  }
  
  public String getText() {
    return this.text;
  }
  
  public VariableContext getVariableContext() {
    return this.xpath.getVariableContext();
  }
  
  protected void handleJaxenException(JaxenException paramJaxenException) {
    throw new XPathException(this.text, paramJaxenException);
  }
  
  public boolean matches(Node paramNode) {
    try {
      setNSContext(paramNode);
      List<Object> list = this.xpath.selectNodes(paramNode);
      if (list != null && list.size() > 0) {
        Boolean bool = (Boolean)list.get(0);
        return (bool instanceof Boolean) ? ((Boolean)bool).booleanValue() : list.contains(paramNode);
      } 
      return false;
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return false;
    } 
  }
  
  public Number numberValueOf(Object paramObject) {
    try {
      setNSContext(paramObject);
      return this.xpath.numberValueOf(paramObject);
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return null;
    } 
  }
  
  protected void removeDuplicates(List paramList, Map paramMap) {
    HashSet<Object> hashSet = new HashSet();
    Iterator iterator = paramList.iterator();
    while (iterator.hasNext()) {
      Object object = paramMap.get(iterator.next());
      if (hashSet.contains(object)) {
        iterator.remove();
        continue;
      } 
      hashSet.add(object);
    } 
  }
  
  public List selectNodes(Object paramObject) {
    try {
      setNSContext(paramObject);
      return this.xpath.selectNodes(paramObject);
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return Collections.EMPTY_LIST;
    } 
  }
  
  public List selectNodes(Object paramObject, XPath paramXPath) {
    paramObject = selectNodes(paramObject);
    paramXPath.sort((List)paramObject);
    return (List)paramObject;
  }
  
  public List selectNodes(Object paramObject, XPath paramXPath, boolean paramBoolean) {
    paramObject = selectNodes(paramObject);
    paramXPath.sort((List)paramObject, paramBoolean);
    return (List)paramObject;
  }
  
  public Object selectObject(Object paramObject) {
    return evaluate(paramObject);
  }
  
  public Node selectSingleNode(Object paramObject) {
    try {
      setNSContext(paramObject);
      paramObject = this.xpath.selectSingleNode(paramObject);
      if (paramObject instanceof Node)
        return (Node)paramObject; 
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return null;
    } 
    if (jaxenException == null)
      return null; 
    throw new XPathException("The result of the XPath expression is not a Node. It was: " + jaxenException + " of type: " + jaxenException.getClass().getName());
  }
  
  public void setFunctionContext(FunctionContext paramFunctionContext) {
    this.xpath.setFunctionContext(paramFunctionContext);
  }
  
  protected void setNSContext(Object paramObject) {
    if (this.namespaceContext == null)
      this.xpath.setNamespaceContext(DefaultNamespaceContext.create(paramObject)); 
  }
  
  public void setNamespaceContext(NamespaceContext paramNamespaceContext) {
    this.namespaceContext = paramNamespaceContext;
    this.xpath.setNamespaceContext(paramNamespaceContext);
  }
  
  public void setNamespaceURIs(Map paramMap) {
    setNamespaceContext((NamespaceContext)new SimpleNamespaceContext(paramMap));
  }
  
  public void setVariableContext(VariableContext paramVariableContext) {
    this.xpath.setVariableContext(paramVariableContext);
  }
  
  public void sort(List paramList) {
    sort(paramList, false);
  }
  
  protected void sort(List<?> paramList, Map paramMap) {
    Collections.sort(paramList, new DefaultXPath$1(this, paramMap));
  }
  
  public void sort(List<Object> paramList, boolean paramBoolean) {
    if (paramList != null && !paramList.isEmpty()) {
      int j = paramList.size();
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>(j);
      for (int i = 0; i < j; i++) {
        Node node = (Node)paramList.get(i);
        if (node instanceof Node) {
          node = node;
          hashMap.put(node, getCompareValue(node));
        } 
      } 
      sort(paramList, hashMap);
      if (paramBoolean)
        removeDuplicates(paramList, hashMap); 
    } 
  }
  
  public String toString() {
    return "[XPath: " + this.xpath + "]";
  }
  
  public String valueOf(Object paramObject) {
    try {
      setNSContext(paramObject);
      return this.xpath.stringValueOf(paramObject);
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\xpath\DefaultXPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */