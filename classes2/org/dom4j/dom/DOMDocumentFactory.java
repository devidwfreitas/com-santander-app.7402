package org.dom4j.dom;

import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.util.SingletonStrategy;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

public class DOMDocumentFactory extends DocumentFactory implements DOMImplementation {
  private static SingletonStrategy singleton = null;
  
  static {
    try {
      Class<?> clazz1 = Class.forName(System.getProperty("org.dom4j.dom.DOMDocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton"));
      clazz = clazz1;
      try {
        singleton = (SingletonStrategy)clazz.newInstance();
        singleton.setSingletonClassName(DOMDocumentFactory.class.getName());
        return;
      } catch (Exception exception) {}
    } catch (Exception exception2) {
      try {
        Class<?> clazz1 = Class.forName("org.dom4j.util.SimpleSingleton");
        clazz = clazz1;
        try {
          singleton = (SingletonStrategy)clazz.newInstance();
          singleton.setSingletonClassName(DOMDocumentFactory.class.getName());
          return;
        } catch (Exception exception1) {}
      } catch (Exception exception) {
        try {
          singleton = exception1.newInstance();
          singleton.setSingletonClassName(DOMDocumentFactory.class.getName());
          return;
        } catch (Exception exception3) {}
      } 
      return;
    } 
  }
  
  public static DocumentFactory getInstance() {
    return (DOMDocumentFactory)singleton.instance();
  }
  
  protected DOMDocumentType asDocumentType(DocumentType paramDocumentType) {
    return (paramDocumentType instanceof DOMDocumentType) ? (DOMDocumentType)paramDocumentType : new DOMDocumentType(paramDocumentType.getName(), paramDocumentType.getPublicId(), paramDocumentType.getSystemId());
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return (Attribute)new DOMAttribute(paramQName, paramString);
  }
  
  public CDATA createCDATA(String paramString) {
    return (CDATA)new DOMCDATA(paramString);
  }
  
  public Comment createComment(String paramString) {
    return (Comment)new DOMComment(paramString);
  }
  
  public DocumentType createDocType(String paramString1, String paramString2, String paramString3) {
    return (DocumentType)new DOMDocumentType(paramString1, paramString2, paramString3);
  }
  
  public Document createDocument() {
    DOMDocument dOMDocument = new DOMDocument();
    dOMDocument.setDocumentFactory(this);
    return (Document)dOMDocument;
  }
  
  public Document createDocument(String paramString1, String paramString2, DocumentType paramDocumentType) {
    if (paramDocumentType != null) {
      DOMDocument dOMDocument1 = new DOMDocument(asDocumentType(paramDocumentType));
      dOMDocument1.addElement(createQName(paramString2, paramString1));
      return dOMDocument1;
    } 
    DOMDocument dOMDocument = new DOMDocument();
    dOMDocument.addElement(createQName(paramString2, paramString1));
    return dOMDocument;
  }
  
  public DocumentType createDocumentType(String paramString1, String paramString2, String paramString3) {
    return new DOMDocumentType(paramString1, paramString2, paramString3);
  }
  
  public Element createElement(QName paramQName) {
    return (Element)new DOMElement(paramQName);
  }
  
  public Element createElement(QName paramQName, int paramInt) {
    return (Element)new DOMElement(paramQName, paramInt);
  }
  
  public Entity createEntity(String paramString) {
    return (Entity)new DOMEntityReference(paramString);
  }
  
  public Entity createEntity(String paramString1, String paramString2) {
    return (Entity)new DOMEntityReference(paramString1, paramString2);
  }
  
  public Namespace createNamespace(String paramString1, String paramString2) {
    return (Namespace)new DOMNamespace(paramString1, paramString2);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString1, String paramString2) {
    return (ProcessingInstruction)new DOMProcessingInstruction(paramString1, paramString2);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString, Map paramMap) {
    return (ProcessingInstruction)new DOMProcessingInstruction(paramString, paramMap);
  }
  
  public Text createText(String paramString) {
    return (Text)new DOMText(paramString);
  }
  
  public Object getFeature(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean hasFeature(String paramString1, String paramString2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: ldc 'XML'
    //   5: aload_1
    //   6: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   9: ifne -> 24
    //   12: iload #4
    //   14: istore_3
    //   15: ldc 'Core'
    //   17: aload_1
    //   18: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   21: ifeq -> 58
    //   24: aload_2
    //   25: ifnull -> 56
    //   28: aload_2
    //   29: invokevirtual length : ()I
    //   32: ifeq -> 56
    //   35: ldc '1.0'
    //   37: aload_2
    //   38: invokevirtual equals : (Ljava/lang/Object;)Z
    //   41: ifne -> 56
    //   44: iload #4
    //   46: istore_3
    //   47: ldc '2.0'
    //   49: aload_2
    //   50: invokevirtual equals : (Ljava/lang/Object;)Z
    //   53: ifeq -> 58
    //   56: iconst_1
    //   57: istore_3
    //   58: iload_3
    //   59: ireturn
  }
  
  static {
    Class<?> clazz = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */