package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;

public class QNameCache {
  private DocumentFactory documentFactory;
  
  protected Map namespaceCache = Collections.synchronizedMap(new WeakHashMap<Object, Object>());
  
  protected Map noNamespaceCache = Collections.synchronizedMap(new WeakHashMap<Object, Object>());
  
  public QNameCache() {}
  
  public QNameCache(DocumentFactory paramDocumentFactory) {
    this.documentFactory = paramDocumentFactory;
  }
  
  protected Map createMap() {
    return Collections.synchronizedMap(new HashMap<Object, Object>());
  }
  
  protected QName createQName(String paramString) {
    return new QName(paramString);
  }
  
  protected QName createQName(String paramString, Namespace paramNamespace) {
    return new QName(paramString, paramNamespace);
  }
  
  protected QName createQName(String paramString1, Namespace paramNamespace, String paramString2) {
    return new QName(paramString1, paramNamespace, paramString2);
  }
  
  public QName get(String paramString) {
    QName qName;
    String str1 = null;
    if (paramString != null) {
      qName = (QName)this.noNamespaceCache.get(paramString);
      str1 = paramString;
      QName qName1 = qName;
    } else {
      String str = "";
      paramString = str1;
      str1 = str;
    } 
    String str2 = paramString;
    if (paramString == null) {
      qName = createQName(str1);
      qName.setDocumentFactory(this.documentFactory);
      this.noNamespaceCache.put(str1, qName);
    } 
    return qName;
  }
  
  public QName get(String paramString1, String paramString2) {
    int i = paramString1.indexOf(':');
    return (i < 0) ? get(paramString1, Namespace.get(paramString2)) : get(paramString1.substring(i + 1), Namespace.get(paramString1.substring(0, i), paramString2));
  }
  
  public QName get(String paramString, Namespace paramNamespace) {
    QName qName;
    Map<String, QName> map = getNamespaceCache(paramNamespace);
    String str1 = null;
    if (paramString != null) {
      qName = (QName)map.get(paramString);
      str1 = paramString;
      QName qName1 = qName;
    } else {
      String str = "";
      paramString = str1;
      str1 = str;
    } 
    String str2 = paramString;
    if (paramString == null) {
      qName = createQName(str1, paramNamespace);
      qName.setDocumentFactory(this.documentFactory);
      map.put(str1, qName);
    } 
    return qName;
  }
  
  public QName get(String paramString1, Namespace paramNamespace, String paramString2) {
    QName qName;
    Map<String, QName> map = getNamespaceCache(paramNamespace);
    String str1 = null;
    if (paramString1 != null) {
      qName = (QName)map.get(paramString1);
      str1 = paramString1;
      QName qName1 = qName;
    } else {
      String str = "";
      paramString1 = str1;
      str1 = str;
    } 
    String str2 = paramString1;
    if (paramString1 == null) {
      qName = createQName(str1, paramNamespace, paramString2);
      qName.setDocumentFactory(this.documentFactory);
      map.put(str1, qName);
    } 
    return qName;
  }
  
  protected Map getNamespaceCache(Namespace paramNamespace) {
    if (paramNamespace == Namespace.NO_NAMESPACE)
      return this.noNamespaceCache; 
    Map map1 = null;
    if (paramNamespace != null)
      map1 = (Map)this.namespaceCache.get(paramNamespace); 
    Map map2 = map1;
    if (map1 == null) {
      map1 = createMap();
      this.namespaceCache.put(paramNamespace, map1);
      return map1;
    } 
    return map2;
  }
  
  public List getQNames() {
    ArrayList arrayList = new ArrayList();
    arrayList.addAll(this.noNamespaceCache.values());
    Iterator<Map> iterator = this.namespaceCache.values().iterator();
    while (iterator.hasNext())
      arrayList.addAll(((Map)iterator.next()).values()); 
    return arrayList;
  }
  
  public QName intern(QName paramQName) {
    return get(paramQName.getName(), paramQName.getNamespace(), paramQName.getQualifiedName());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\QNameCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */