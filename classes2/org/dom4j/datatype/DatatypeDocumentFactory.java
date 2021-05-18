package org.dom4j.datatype;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.io.SAXReader;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

public class DatatypeDocumentFactory extends DocumentFactory {
  private static final boolean DO_INTERN_QNAME = false;
  
  private static final Namespace XSI_NAMESPACE;
  
  private static final QName XSI_NO_SCHEMA_LOCATION;
  
  private static final QName XSI_SCHEMA_LOCATION;
  
  protected static transient DatatypeDocumentFactory singleton = new DatatypeDocumentFactory();
  
  private boolean autoLoadSchema = true;
  
  private SchemaParser schemaBuilder = new SchemaParser(this);
  
  private SAXReader xmlSchemaReader = new SAXReader();
  
  static {
    XSI_NAMESPACE = Namespace.get("xsi", "http://www.w3.org/2001/XMLSchema-instance");
    XSI_SCHEMA_LOCATION = QName.get("schemaLocation", XSI_NAMESPACE);
    XSI_NO_SCHEMA_LOCATION = QName.get("noNamespaceSchemaLocation", XSI_NAMESPACE);
  }
  
  public static DocumentFactory getInstance() {
    return singleton;
  }
  
  public Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    Document document2 = null;
    Document document1 = null;
    if (this.autoLoadSchema && paramQName.equals(XSI_NO_SCHEMA_LOCATION)) {
      if (paramElement != null)
        document1 = paramElement.getDocument(); 
      loadSchema(document1, paramString);
      return super.createAttribute(paramElement, paramQName, paramString);
    } 
    if (this.autoLoadSchema && paramQName.equals(XSI_SCHEMA_LOCATION)) {
      document1 = document2;
      if (paramElement != null)
        document1 = paramElement.getDocument(); 
      Namespace namespace = paramElement.getNamespaceForURI(paramString.substring(0, paramString.indexOf(' ')));
      loadSchema(document1, paramString.substring(paramString.indexOf(' ') + 1), namespace);
    } 
    return super.createAttribute(paramElement, paramQName, paramString);
  }
  
  public DatatypeElementFactory getElementFactory(QName paramQName) {
    DocumentFactory documentFactory = paramQName.getDocumentFactory();
    return (documentFactory instanceof DatatypeElementFactory) ? (DatatypeElementFactory)documentFactory : null;
  }
  
  public void loadSchema(Document paramDocument) {
    this.schemaBuilder.build(paramDocument);
  }
  
  protected void loadSchema(Document paramDocument, String paramString) {
    try {
      EntityResolver entityResolver = paramDocument.getEntityResolver();
      if (entityResolver == null)
        throw new InvalidSchemaException("No EntityResolver available for resolving URI: " + paramString); 
    } catch (Exception exception) {
      System.out.println("Failed to load schema: " + paramString);
      System.out.println("Caught: " + exception);
      exception.printStackTrace();
      throw new InvalidSchemaException("Failed to load schema: " + paramString);
    } 
    InputSource inputSource = exception.resolveEntity(null, paramString);
    if (exception == null)
      throw new InvalidSchemaException("Could not resolve the URI: " + paramString); 
    loadSchema(this.xmlSchemaReader.read(inputSource));
  }
  
  protected void loadSchema(Document paramDocument, String paramString, Namespace paramNamespace) {
    try {
      EntityResolver entityResolver = paramDocument.getEntityResolver();
      if (entityResolver == null)
        throw new InvalidSchemaException("No EntityResolver available for resolving URI: " + paramString); 
    } catch (Exception exception) {
      System.out.println("Failed to load schema: " + paramString);
      System.out.println("Caught: " + exception);
      exception.printStackTrace();
      throw new InvalidSchemaException("Failed to load schema: " + paramString);
    } 
    InputSource inputSource = exception.resolveEntity(null, paramString);
    if (exception == null)
      throw new InvalidSchemaException("Could not resolve the URI: " + paramString); 
    loadSchema(this.xmlSchemaReader.read(inputSource), paramNamespace);
  }
  
  public void loadSchema(Document paramDocument, Namespace paramNamespace) {
    this.schemaBuilder.build(paramDocument, paramNamespace);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\DatatypeDocumentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */