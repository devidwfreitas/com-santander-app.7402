package org.dom4j;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SingletonStrategy;

public class QName implements Serializable {
  private static SingletonStrategy singleton = null;
  
  private DocumentFactory documentFactory;
  
  private int hashCode;
  
  private String name;
  
  private transient Namespace namespace;
  
  private String qualifiedName;
  
  static {
    try {
      Class<?> clazz1 = Class.forName(System.getProperty("org.dom4j.QName.singleton.strategy", "org.dom4j.util.SimpleSingleton"));
      clazz = clazz1;
      try {
        singleton = (SingletonStrategy)clazz.newInstance();
        singleton.setSingletonClassName(QNameCache.class.getName());
        return;
      } catch (Exception exception) {}
    } catch (Exception exception2) {
      try {
        Class<?> clazz1 = Class.forName("org.dom4j.util.SimpleSingleton");
        clazz = clazz1;
        try {
          singleton = (SingletonStrategy)clazz.newInstance();
          singleton.setSingletonClassName(QNameCache.class.getName());
          return;
        } catch (Exception exception1) {}
      } catch (Exception exception) {
        try {
          singleton = exception1.newInstance();
          singleton.setSingletonClassName(QNameCache.class.getName());
          return;
        } catch (Exception exception3) {}
      } 
      return;
    } 
  }
  
  public QName(String paramString) {
    this(paramString, Namespace.NO_NAMESPACE);
  }
  
  public QName(String paramString, Namespace paramNamespace) {
    String str = paramString;
    if (paramString == null)
      str = ""; 
    this.name = str;
    Namespace namespace = paramNamespace;
    if (paramNamespace == null)
      namespace = Namespace.NO_NAMESPACE; 
    this.namespace = namespace;
  }
  
  public QName(String paramString1, Namespace paramNamespace, String paramString2) {
    String str = paramString1;
    if (paramString1 == null)
      str = ""; 
    this.name = str;
    this.qualifiedName = paramString2;
    Namespace namespace = paramNamespace;
    if (paramNamespace == null)
      namespace = Namespace.NO_NAMESPACE; 
    this.namespace = namespace;
  }
  
  public static QName get(String paramString) {
    return getCache().get(paramString);
  }
  
  public static QName get(String paramString1, String paramString2) {
    return (paramString2 == null) ? getCache().get(paramString1) : getCache().get(paramString1, paramString2);
  }
  
  public static QName get(String paramString1, String paramString2, String paramString3) {
    return ((paramString2 == null || paramString2.length() == 0) && paramString3 == null) ? get(paramString1) : ((paramString2 == null || paramString2.length() == 0) ? getCache().get(paramString1, Namespace.get(paramString3)) : ((paramString3 == null) ? get(paramString1) : getCache().get(paramString1, Namespace.get(paramString2, paramString3))));
  }
  
  public static QName get(String paramString, Namespace paramNamespace) {
    return getCache().get(paramString, paramNamespace);
  }
  
  public static QName get(String paramString1, Namespace paramNamespace, String paramString2) {
    return getCache().get(paramString1, paramNamespace, paramString2);
  }
  
  private static QNameCache getCache() {
    return (QNameCache)singleton.instance();
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    String str1 = (String)paramObjectInputStream.readObject();
    String str2 = (String)paramObjectInputStream.readObject();
    paramObjectInputStream.defaultReadObject();
    this.namespace = Namespace.get(str1, str2);
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream) {
    paramObjectOutputStream.writeObject(this.namespace.getPrefix());
    paramObjectOutputStream.writeObject(this.namespace.getURI());
    paramObjectOutputStream.defaultWriteObject();
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject instanceof QName) {
        paramObject = paramObject;
        if (hashCode() == paramObject.hashCode())
          return !(!getName().equals(paramObject.getName()) || !getNamespaceURI().equals(paramObject.getNamespaceURI())); 
      } 
      return false;
    } 
    return true;
  }
  
  public DocumentFactory getDocumentFactory() {
    return this.documentFactory;
  }
  
  public String getName() {
    return this.name;
  }
  
  public Namespace getNamespace() {
    return this.namespace;
  }
  
  public String getNamespacePrefix() {
    return (this.namespace == null) ? "" : this.namespace.getPrefix();
  }
  
  public String getNamespaceURI() {
    return (this.namespace == null) ? "" : this.namespace.getURI();
  }
  
  public String getQualifiedName() {
    if (this.qualifiedName == null) {
      String str = getNamespacePrefix();
      if (str != null && str.length() > 0) {
        this.qualifiedName = str + ":" + this.name;
        return this.qualifiedName;
      } 
    } else {
      return this.qualifiedName;
    } 
    this.qualifiedName = this.name;
    return this.qualifiedName;
  }
  
  public int hashCode() {
    if (this.hashCode == 0) {
      this.hashCode = getName().hashCode() ^ getNamespaceURI().hashCode();
      if (this.hashCode == 0)
        this.hashCode = 47806; 
    } 
    return this.hashCode;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.documentFactory = paramDocumentFactory;
  }
  
  public String toString() {
    return super.toString() + " [name: " + getName() + " namespace: \"" + getNamespace() + "\"]";
  }
  
  static {
    Class<?> clazz = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\QName.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */