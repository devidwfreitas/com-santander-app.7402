package org.dom4j;

import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.dom4j.rule.Pattern;
import org.dom4j.tree.AbstractDocument;
import org.dom4j.tree.DefaultAttribute;
import org.dom4j.tree.DefaultCDATA;
import org.dom4j.tree.DefaultComment;
import org.dom4j.tree.DefaultDocument;
import org.dom4j.tree.DefaultDocumentType;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.DefaultEntity;
import org.dom4j.tree.DefaultProcessingInstruction;
import org.dom4j.tree.DefaultText;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SimpleSingleton;
import org.dom4j.util.SingletonStrategy;
import org.dom4j.xpath.DefaultXPath;
import org.dom4j.xpath.XPathPattern;
import org.jaxen.VariableContext;

public class DocumentFactory implements Serializable {
  private static SingletonStrategy singleton = null;
  
  protected transient QNameCache cache;
  
  private Map xpathNamespaceURIs;
  
  public DocumentFactory() {
    init();
  }
  
  protected static DocumentFactory createSingleton(String paramString) {
    try {
      return (DocumentFactory)Class.forName(paramString, true, DocumentFactory.class.getClassLoader()).newInstance();
    } catch (Throwable throwable) {
      System.out.println("WARNING: Cannot load DocumentFactory: " + paramString);
      return new DocumentFactory();
    } 
  }
  
  private static SingletonStrategy createSingleton() {
    try {
      String str = System.getProperty("org.dom4j.factory", "org.dom4j.DocumentFactory");
    } catch (Exception exception) {
      String str = "org.dom4j.DocumentFactory";
    } 
    try {
      SingletonStrategy singletonStrategy = (SingletonStrategy)Class.forName(System.getProperty("org.dom4j.DocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton")).newInstance();
    } catch (Exception exception) {
      SimpleSingleton simpleSingleton = new SimpleSingleton();
    } 
  }
  
  public static DocumentFactory getInstance() {
    // Byte code:
    //   0: ldc org/dom4j/DocumentFactory
    //   2: monitorenter
    //   3: getstatic org/dom4j/DocumentFactory.singleton : Lorg/dom4j/util/SingletonStrategy;
    //   6: ifnonnull -> 15
    //   9: invokestatic createSingleton : ()Lorg/dom4j/util/SingletonStrategy;
    //   12: putstatic org/dom4j/DocumentFactory.singleton : Lorg/dom4j/util/SingletonStrategy;
    //   15: getstatic org/dom4j/DocumentFactory.singleton : Lorg/dom4j/util/SingletonStrategy;
    //   18: invokeinterface instance : ()Ljava/lang/Object;
    //   23: checkcast org/dom4j/DocumentFactory
    //   26: astore_0
    //   27: ldc org/dom4j/DocumentFactory
    //   29: monitorexit
    //   30: aload_0
    //   31: areturn
    //   32: astore_0
    //   33: ldc org/dom4j/DocumentFactory
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   3	15	32	finally
    //   15	27	32	finally
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    paramObjectInputStream.defaultReadObject();
    init();
  }
  
  public Attribute createAttribute(Element paramElement, String paramString1, String paramString2) {
    return createAttribute(paramElement, createQName(paramString1), paramString2);
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return (Attribute)new DefaultAttribute(paramQName, paramString);
  }
  
  public CDATA createCDATA(String paramString) {
    return (CDATA)new DefaultCDATA(paramString);
  }
  
  public Comment createComment(String paramString) {
    return (Comment)new DefaultComment(paramString);
  }
  
  public DocumentType createDocType(String paramString1, String paramString2, String paramString3) {
    return (DocumentType)new DefaultDocumentType(paramString1, paramString2, paramString3);
  }
  
  public Document createDocument() {
    DefaultDocument defaultDocument = new DefaultDocument();
    defaultDocument.setDocumentFactory(this);
    return (Document)defaultDocument;
  }
  
  public Document createDocument(String paramString) {
    Document document = createDocument();
    if (document instanceof AbstractDocument)
      ((AbstractDocument)document).setXMLEncoding(paramString); 
    return document;
  }
  
  public Document createDocument(Element paramElement) {
    Document document = createDocument();
    document.setRootElement(paramElement);
    return document;
  }
  
  public Element createElement(String paramString) {
    return createElement(createQName(paramString));
  }
  
  public Element createElement(String paramString1, String paramString2) {
    return createElement(createQName(paramString1, paramString2));
  }
  
  public Element createElement(QName paramQName) {
    return (Element)new DefaultElement(paramQName);
  }
  
  public Entity createEntity(String paramString1, String paramString2) {
    return (Entity)new DefaultEntity(paramString1, paramString2);
  }
  
  public Namespace createNamespace(String paramString1, String paramString2) {
    return Namespace.get(paramString1, paramString2);
  }
  
  public Pattern createPattern(String paramString) {
    return (Pattern)new XPathPattern(paramString);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString1, String paramString2) {
    return (ProcessingInstruction)new DefaultProcessingInstruction(paramString1, paramString2);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString, Map paramMap) {
    return (ProcessingInstruction)new DefaultProcessingInstruction(paramString, paramMap);
  }
  
  public QName createQName(String paramString) {
    return this.cache.get(paramString);
  }
  
  public QName createQName(String paramString1, String paramString2) {
    return this.cache.get(paramString1, paramString2);
  }
  
  public QName createQName(String paramString1, String paramString2, String paramString3) {
    return this.cache.get(paramString1, Namespace.get(paramString2, paramString3));
  }
  
  public QName createQName(String paramString, Namespace paramNamespace) {
    return this.cache.get(paramString, paramNamespace);
  }
  
  protected QNameCache createQNameCache() {
    return new QNameCache(this);
  }
  
  public Text createText(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("Adding text to an XML document must not be null"); 
    return (Text)new DefaultText(paramString);
  }
  
  public XPath createXPath(String paramString) {
    DefaultXPath defaultXPath = new DefaultXPath(paramString);
    if (this.xpathNamespaceURIs != null)
      defaultXPath.setNamespaceURIs(this.xpathNamespaceURIs); 
    return (XPath)defaultXPath;
  }
  
  public XPath createXPath(String paramString, VariableContext paramVariableContext) {
    XPath xPath = createXPath(paramString);
    xPath.setVariableContext(paramVariableContext);
    return xPath;
  }
  
  public NodeFilter createXPathFilter(String paramString) {
    return createXPath(paramString);
  }
  
  public NodeFilter createXPathFilter(String paramString, VariableContext paramVariableContext) {
    XPath xPath = createXPath(paramString);
    xPath.setVariableContext(paramVariableContext);
    return xPath;
  }
  
  public List<QName> getQNames() {
    return this.cache.getQNames();
  }
  
  public Map<String, String> getXPathNamespaceURIs() {
    return this.xpathNamespaceURIs;
  }
  
  protected void init() {
    this.cache = createQNameCache();
  }
  
  protected QName intern(QName paramQName) {
    return this.cache.intern(paramQName);
  }
  
  public void setXPathNamespaceURIs(Map<String, String> paramMap) {
    this.xpathNamespaceURIs = paramMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\DocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */