package org.jaxen;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SimpleNamespaceContext implements Serializable, NamespaceContext {
  private static final long serialVersionUID = -808928409643497762L;
  
  private Map namespaces;
  
  public SimpleNamespaceContext() {
    this.namespaces = new HashMap<Object, Object>();
  }
  
  public SimpleNamespaceContext(Map<?, ?> paramMap) {
    for (Map.Entry entry : paramMap.entrySet()) {
      if (!(entry.getKey() instanceof String) || !(entry.getValue() instanceof String))
        throw new ClassCastException("Non-string namespace binding"); 
    } 
    this.namespaces = new HashMap<Object, Object>(paramMap);
  }
  
  public void addElementNamespaces(Navigator paramNavigator, Object paramObject) {
    paramObject = paramNavigator.getNamespaceAxisIterator(paramObject);
    while (paramObject.hasNext()) {
      String str2 = (String)paramObject.next();
      String str1 = paramNavigator.getNamespacePrefix(str2);
      str2 = paramNavigator.getNamespaceStringValue(str2);
      if (translateNamespacePrefixToUri(str1) == null)
        addNamespace(str1, str2); 
    } 
  }
  
  public void addNamespace(String paramString1, String paramString2) {
    this.namespaces.put(paramString1, paramString2);
  }
  
  public String translateNamespacePrefixToUri(String paramString) {
    return this.namespaces.containsKey(paramString) ? (String)this.namespaces.get(paramString) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\SimpleNamespaceContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */