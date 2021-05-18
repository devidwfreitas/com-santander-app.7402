package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;

class PrefixResolver extends LinkedHashMap<String, String> implements NamespaceMap {
  private final OutputNode source;
  
  public PrefixResolver(OutputNode paramOutputNode) {
    this.source = paramOutputNode;
  }
  
  private String resolvePrefix(String paramString) {
    NamespaceMap namespaceMap = this.source.getNamespaces();
    if (namespaceMap != null) {
      paramString = namespaceMap.getPrefix(paramString);
      if (!containsValue(paramString))
        return paramString; 
    } 
    return null;
  }
  
  private String resolveReference(String paramString) {
    NamespaceMap namespaceMap = this.source.getNamespaces();
    return (namespaceMap != null) ? namespaceMap.getReference(paramString) : null;
  }
  
  public String getPrefix() {
    return this.source.getPrefix();
  }
  
  public String getPrefix(String paramString) {
    if (size() > 0) {
      String str = get(paramString);
      if (str != null)
        return str; 
    } 
    return resolvePrefix(paramString);
  }
  
  public String getReference(String paramString) {
    if (containsValue(paramString))
      for (String str1 : this) {
        String str2 = get(str1);
        if (str2 != null && str2.equals(paramString))
          return str1; 
      }  
    return resolveReference(paramString);
  }
  
  public Iterator<String> iterator() {
    return keySet().iterator();
  }
  
  public String setReference(String paramString) {
    return setReference(paramString, "");
  }
  
  public String setReference(String paramString1, String paramString2) {
    return (resolvePrefix(paramString1) != null) ? null : put(paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PrefixResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */