package org.dom4j.tree;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;

public class NamespaceStack {
  private Map currentNamespaceCache;
  
  private Namespace defaultNamespace;
  
  private DocumentFactory documentFactory = DocumentFactory.getInstance();
  
  private ArrayList namespaceCacheList = new ArrayList();
  
  private ArrayList namespaceStack = new ArrayList();
  
  private Map rootNamespaceCache = new HashMap<Object, Object>();
  
  public NamespaceStack() {}
  
  public NamespaceStack(DocumentFactory paramDocumentFactory) {}
  
  public Namespace addNamespace(String paramString1, String paramString2) {
    Namespace namespace = createNamespace(paramString1, paramString2);
    push(namespace);
    return namespace;
  }
  
  public void clear() {
    this.namespaceStack.clear();
    this.namespaceCacheList.clear();
    this.rootNamespaceCache.clear();
    this.currentNamespaceCache = null;
  }
  
  public boolean contains(Namespace paramNamespace) {
    Namespace namespace;
    String str = paramNamespace.getPrefix();
    if (str == null || str.length() == 0) {
      namespace = getDefaultNamespace();
    } else {
      namespace = getNamespaceForPrefix((String)namespace);
    } 
    return (namespace == null) ? false : ((namespace == paramNamespace) ? true : paramNamespace.getURI().equals(namespace.getURI()));
  }
  
  protected Namespace createNamespace(String paramString1, String paramString2) {
    return this.documentFactory.createNamespace(paramString1, paramString2);
  }
  
  protected QName createQName(String paramString1, String paramString2, Namespace paramNamespace) {
    return this.documentFactory.createQName(paramString1, paramNamespace);
  }
  
  protected Namespace findDefaultNamespace() {
    for (int i = this.namespaceStack.size() - 1; i >= 0; i--) {
      Namespace namespace = this.namespaceStack.get(i);
      if (namespace != null && (namespace.getPrefix() == null || namespace.getPrefix().length() == 0))
        return namespace; 
    } 
    return null;
  }
  
  public QName getAttributeQName(String paramString1, String paramString2, String paramString3) {
    String str2 = paramString3;
    if (paramString3 == null)
      str2 = paramString2; 
    Map<String, QName> map = getNamespaceCache();
    QName qName2 = (QName)map.get(str2);
    if (qName2 != null)
      return qName2; 
    if (paramString2 == null)
      paramString2 = str2; 
    String str1 = paramString1;
    if (paramString1 == null)
      str1 = ""; 
    String str3 = "";
    int i = str2.indexOf(":");
    if (i > 0) {
      str3 = str2.substring(0, i);
      Namespace namespace4 = createNamespace(str3, str1);
      str1 = str3;
      Namespace namespace3 = namespace4;
      paramString1 = paramString2;
      if (paramString2.trim().length() == 0) {
        paramString1 = str2.substring(i + 1);
        namespace3 = namespace4;
        str1 = str3;
      } 
      QName qName = pushQName(paramString1, str2, namespace3, str1);
      map.put(str2, qName);
      return qName;
    } 
    Namespace namespace2 = Namespace.NO_NAMESPACE;
    str1 = str3;
    Namespace namespace1 = namespace2;
    paramString1 = paramString2;
    if (paramString2.trim().length() == 0) {
      paramString1 = str2;
      str1 = str3;
      namespace1 = namespace2;
    } 
    QName qName1 = pushQName(paramString1, str2, namespace1, str1);
    map.put(str2, qName1);
    return qName1;
  }
  
  public Namespace getDefaultNamespace() {
    if (this.defaultNamespace == null)
      this.defaultNamespace = findDefaultNamespace(); 
    return this.defaultNamespace;
  }
  
  public DocumentFactory getDocumentFactory() {
    return this.documentFactory;
  }
  
  public Namespace getNamespace(int paramInt) {
    return this.namespaceStack.get(paramInt);
  }
  
  protected Map getNamespaceCache() {
    int i;
    if (this.currentNamespaceCache == null) {
      i = this.namespaceStack.size() - 1;
      if (i < 0) {
        this.currentNamespaceCache = this.rootNamespaceCache;
        return this.currentNamespaceCache;
      } 
    } else {
      return this.currentNamespaceCache;
    } 
    this.currentNamespaceCache = this.namespaceCacheList.get(i);
    if (this.currentNamespaceCache == null) {
      this.currentNamespaceCache = new HashMap<Object, Object>();
      this.namespaceCacheList.set(i, this.currentNamespaceCache);
    } 
    return this.currentNamespaceCache;
  }
  
  public Namespace getNamespaceForPrefix(String paramString) {
    String str = paramString;
    if (paramString == null)
      str = ""; 
    for (int i = this.namespaceStack.size() - 1; i >= 0; i--) {
      Namespace namespace = this.namespaceStack.get(i);
      if (str.equals(namespace.getPrefix()))
        return namespace; 
    } 
    return null;
  }
  
  public QName getQName(String paramString1, String paramString2, String paramString3) {
    if (paramString2 == null) {
      paramString2 = paramString3;
    } else if (paramString3 == null) {
      String str = paramString2;
      paramString3 = paramString2;
      paramString2 = str;
    } else {
      String str = paramString3;
      paramString3 = paramString2;
      paramString2 = str;
    } 
    String str1 = paramString1;
    if (paramString1 == null)
      str1 = ""; 
    String str3 = "";
    int i = paramString2.indexOf(":");
    if (i > 0) {
      str3 = paramString2.substring(0, i);
      String str = str3;
      paramString1 = paramString3;
      if (paramString3.trim().length() == 0) {
        paramString1 = paramString2.substring(i + 1);
        str = str3;
      } 
      return pushQName(paramString1, paramString2, createNamespace(str, str1), str);
    } 
    String str2 = str3;
    paramString1 = paramString3;
    if (paramString3.trim().length() == 0) {
      paramString1 = paramString2;
      str2 = str3;
    } 
    return pushQName(paramString1, paramString2, createNamespace(str2, str1), str2);
  }
  
  public String getURI(String paramString) {
    Namespace namespace = getNamespaceForPrefix(paramString);
    return (namespace != null) ? namespace.getURI() : null;
  }
  
  public Namespace pop() {
    return remove(this.namespaceStack.size() - 1);
  }
  
  public Namespace pop(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: astore_3
    //   2: aload_1
    //   3: ifnonnull -> 9
    //   6: ldc ''
    //   8: astore_3
    //   9: aload_0
    //   10: getfield namespaceStack : Ljava/util/ArrayList;
    //   13: invokevirtual size : ()I
    //   16: iconst_1
    //   17: isub
    //   18: istore_2
    //   19: iload_2
    //   20: iflt -> 90
    //   23: aload_0
    //   24: getfield namespaceStack : Ljava/util/ArrayList;
    //   27: iload_2
    //   28: invokevirtual get : (I)Ljava/lang/Object;
    //   31: checkcast org/dom4j/Namespace
    //   34: astore_1
    //   35: aload_3
    //   36: aload_1
    //   37: invokevirtual getPrefix : ()Ljava/lang/String;
    //   40: invokevirtual equals : (Ljava/lang/Object;)Z
    //   43: ifeq -> 83
    //   46: aload_0
    //   47: iload_2
    //   48: invokevirtual remove : (I)Lorg/dom4j/Namespace;
    //   51: pop
    //   52: aload_1
    //   53: ifnonnull -> 81
    //   56: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   59: new java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial <init> : ()V
    //   66: ldc 'Warning: missing namespace prefix ignored: '
    //   68: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload_3
    //   72: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual toString : ()Ljava/lang/String;
    //   78: invokevirtual println : (Ljava/lang/String;)V
    //   81: aload_1
    //   82: areturn
    //   83: iload_2
    //   84: iconst_1
    //   85: isub
    //   86: istore_2
    //   87: goto -> 19
    //   90: aconst_null
    //   91: astore_1
    //   92: goto -> 52
  }
  
  public void push(String paramString1, String paramString2) {
    String str = paramString2;
    if (paramString2 == null)
      str = ""; 
    push(createNamespace(paramString1, str));
  }
  
  public void push(Namespace paramNamespace) {
    this.namespaceStack.add(paramNamespace);
    this.namespaceCacheList.add((Object)null);
    this.currentNamespaceCache = null;
    String str = paramNamespace.getPrefix();
    if (str == null || str.length() == 0)
      this.defaultNamespace = paramNamespace; 
  }
  
  protected QName pushQName(String paramString1, String paramString2, Namespace paramNamespace, String paramString3) {
    if (paramString3 == null || paramString3.length() == 0)
      this.defaultNamespace = null; 
    return createQName(paramString1, paramString2, paramNamespace);
  }
  
  protected Namespace remove(int paramInt) {
    Namespace namespace = this.namespaceStack.remove(paramInt);
    this.namespaceCacheList.remove(paramInt);
    this.defaultNamespace = null;
    this.currentNamespaceCache = null;
    return namespace;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.documentFactory = paramDocumentFactory;
  }
  
  public int size() {
    return this.namespaceStack.size();
  }
  
  public String toString() {
    return super.toString() + " Stack: " + this.namespaceStack.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\NamespaceStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */