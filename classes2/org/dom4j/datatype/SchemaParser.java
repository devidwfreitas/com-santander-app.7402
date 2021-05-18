package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.DatatypeFactory;
import com.sun.msv.datatype.xsd.TypeIncubator;
import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.util.AttributeHelper;
import org.relaxng.datatype.DatatypeException;

public class SchemaParser {
  private static final QName XSD_ALL;
  
  private static final QName XSD_ATTRIBUTE;
  
  private static final QName XSD_CHOICE;
  
  private static final QName XSD_COMPLEXTYPE;
  
  private static final QName XSD_ELEMENT;
  
  private static final QName XSD_INCLUDE;
  
  private static final Namespace XSD_NAMESPACE = Namespace.get("xsd", "http://www.w3.org/2001/XMLSchema");
  
  private static final QName XSD_RESTRICTION;
  
  private static final QName XSD_SEQUENCE;
  
  private static final QName XSD_SIMPLETYPE;
  
  private Map dataTypeCache = new HashMap<Object, Object>();
  
  private DatatypeDocumentFactory documentFactory;
  
  private NamedTypeResolver namedTypeResolver;
  
  private Namespace targetNamespace;
  
  static {
    XSD_ELEMENT = QName.get("element", XSD_NAMESPACE);
    XSD_ATTRIBUTE = QName.get("attribute", XSD_NAMESPACE);
    XSD_SIMPLETYPE = QName.get("simpleType", XSD_NAMESPACE);
    XSD_COMPLEXTYPE = QName.get("complexType", XSD_NAMESPACE);
    XSD_RESTRICTION = QName.get("restriction", XSD_NAMESPACE);
    XSD_SEQUENCE = QName.get("sequence", XSD_NAMESPACE);
    XSD_CHOICE = QName.get("choice", XSD_NAMESPACE);
    XSD_ALL = QName.get("all", XSD_NAMESPACE);
    XSD_INCLUDE = QName.get("include", XSD_NAMESPACE);
  }
  
  public SchemaParser() {
    this(DatatypeDocumentFactory.singleton);
  }
  
  public SchemaParser(DatatypeDocumentFactory paramDatatypeDocumentFactory) {
    this.documentFactory = paramDatatypeDocumentFactory;
    this.namedTypeResolver = new NamedTypeResolver(paramDatatypeDocumentFactory);
  }
  
  private XSDatatype dataTypeForXsdAttribute(Element paramElement) {
    String str = paramElement.attributeValue("type");
    if (str != null)
      return getTypeByName(str); 
    Element element = paramElement.element(XSD_SIMPLETYPE);
    if (element == null) {
      String str1 = paramElement.attributeValue("name");
      throw new InvalidSchemaException("The attribute: " + str1 + " has no type attribute and does not contain a " + "<simpleType/> element");
    } 
    return loadXSDatatypeFromSimpleType(element);
  }
  
  private XSDatatype deriveSimpleType(XSDatatype paramXSDatatype, Element paramElement) {
    TypeIncubator typeIncubator = new TypeIncubator(paramXSDatatype);
    try {
      Iterator<Element> iterator = paramElement.elementIterator();
      while (iterator.hasNext()) {
        Element element = iterator.next();
        typeIncubator.addFacet(element.getName(), element.attributeValue("value"), AttributeHelper.booleanValue(element, "fixed"), null);
      } 
    } catch (DatatypeException datatypeException) {
      onSchemaError("Invalid restriction: " + datatypeException.getMessage() + " when trying to build restriction: " + paramElement);
      return null;
    } 
    return (XSDatatype)datatypeException.derive("", null);
  }
  
  private DatatypeElementFactory getDatatypeElementFactory(QName paramQName) {
    DatatypeElementFactory datatypeElementFactory2 = this.documentFactory.getElementFactory(paramQName);
    DatatypeElementFactory datatypeElementFactory1 = datatypeElementFactory2;
    if (datatypeElementFactory2 == null) {
      datatypeElementFactory1 = new DatatypeElementFactory(paramQName);
      paramQName.setDocumentFactory(datatypeElementFactory1);
    } 
    return datatypeElementFactory1;
  }
  
  private QName getQName(String paramString) {
    return (this.targetNamespace == null) ? this.documentFactory.createQName(paramString) : this.documentFactory.createQName(paramString, this.targetNamespace);
  }
  
  private XSDatatype getTypeByName(String paramString) {
    XSDatatype xSDatatype1 = (XSDatatype)this.dataTypeCache.get(paramString);
    XSDatatype xSDatatype2 = xSDatatype1;
    if (xSDatatype1 == null) {
      XSDatatype xSDatatype4;
      int i = paramString.indexOf(':');
      XSDatatype xSDatatype3 = xSDatatype1;
      if (i >= 0) {
        String str = paramString.substring(i + 1);
        try {
          XSDatatype xSDatatype = DatatypeFactory.getTypeByName(str);
        } catch (DatatypeException datatypeException) {
          xSDatatype3 = xSDatatype1;
        } 
      } 
      xSDatatype1 = xSDatatype3;
      if (xSDatatype3 == null)
        try {
          xSDatatype1 = DatatypeFactory.getTypeByName(paramString);
        } catch (DatatypeException datatypeException) {
          xSDatatype4 = xSDatatype3;
        }  
      xSDatatype3 = xSDatatype4;
      if (xSDatatype4 == null) {
        QName qName = getQName(paramString);
        xSDatatype3 = this.namedTypeResolver.simpleTypeMap.get(qName);
      } 
      xSDatatype2 = xSDatatype3;
      if (xSDatatype3 != null) {
        this.dataTypeCache.put(paramString, xSDatatype3);
        xSDatatype2 = xSDatatype3;
      } 
    } 
    return xSDatatype2;
  }
  
  private void internalBuild(Document paramDocument) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokeinterface getRootElement : ()Lorg/dom4j/Element;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull -> 346
    //   13: aload_2
    //   14: getstatic org/dom4j/datatype/SchemaParser.XSD_INCLUDE : Lorg/dom4j/QName;
    //   17: invokeinterface elementIterator : (Lorg/dom4j/QName;)Ljava/util/Iterator;
    //   22: astore #4
    //   24: aload #4
    //   26: invokeinterface hasNext : ()Z
    //   31: ifeq -> 230
    //   34: aload #4
    //   36: invokeinterface next : ()Ljava/lang/Object;
    //   41: checkcast org/dom4j/Element
    //   44: ldc_w 'schemaLocation'
    //   47: invokeinterface attributeValue : (Ljava/lang/String;)Ljava/lang/String;
    //   52: astore_3
    //   53: aload_1
    //   54: invokeinterface getEntityResolver : ()Lorg/xml/sax/EntityResolver;
    //   59: astore #5
    //   61: aload #5
    //   63: ifnonnull -> 167
    //   66: new org/dom4j/datatype/InvalidSchemaException
    //   69: dup
    //   70: ldc_w 'No EntityResolver available'
    //   73: invokespecial <init> : (Ljava/lang/String;)V
    //   76: athrow
    //   77: astore_1
    //   78: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   81: new java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial <init> : ()V
    //   88: ldc_w 'Failed to load schema: '
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_3
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual toString : ()Ljava/lang/String;
    //   101: invokevirtual println : (Ljava/lang/String;)V
    //   104: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   107: new java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial <init> : ()V
    //   114: ldc_w 'Caught: '
    //   117: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload_1
    //   121: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   124: invokevirtual toString : ()Ljava/lang/String;
    //   127: invokevirtual println : (Ljava/lang/String;)V
    //   130: aload_1
    //   131: invokevirtual printStackTrace : ()V
    //   134: new org/dom4j/datatype/InvalidSchemaException
    //   137: dup
    //   138: new java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial <init> : ()V
    //   145: ldc_w 'Failed to load schema: '
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_3
    //   152: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual toString : ()Ljava/lang/String;
    //   158: invokespecial <init> : (Ljava/lang/String;)V
    //   161: athrow
    //   162: astore_1
    //   163: aload_0
    //   164: monitorexit
    //   165: aload_1
    //   166: athrow
    //   167: aload #5
    //   169: aconst_null
    //   170: aload_3
    //   171: invokeinterface resolveEntity : (Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    //   176: astore #5
    //   178: aload #5
    //   180: ifnonnull -> 211
    //   183: new org/dom4j/datatype/InvalidSchemaException
    //   186: dup
    //   187: new java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial <init> : ()V
    //   194: ldc_w 'Could not resolve the schema URI: '
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_3
    //   201: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual toString : ()Ljava/lang/String;
    //   207: invokespecial <init> : (Ljava/lang/String;)V
    //   210: athrow
    //   211: aload_0
    //   212: new org/dom4j/io/SAXReader
    //   215: dup
    //   216: invokespecial <init> : ()V
    //   219: aload #5
    //   221: invokevirtual read : (Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    //   224: invokevirtual build : (Lorg/dom4j/Document;)V
    //   227: goto -> 24
    //   230: aload_2
    //   231: getstatic org/dom4j/datatype/SchemaParser.XSD_ELEMENT : Lorg/dom4j/QName;
    //   234: invokeinterface elementIterator : (Lorg/dom4j/QName;)Ljava/util/Iterator;
    //   239: astore_1
    //   240: aload_1
    //   241: invokeinterface hasNext : ()Z
    //   246: ifeq -> 269
    //   249: aload_0
    //   250: aload_1
    //   251: invokeinterface next : ()Ljava/lang/Object;
    //   256: checkcast org/dom4j/Element
    //   259: aload_0
    //   260: getfield documentFactory : Lorg/dom4j/datatype/DatatypeDocumentFactory;
    //   263: invokespecial onDatatypeElement : (Lorg/dom4j/Element;Lorg/dom4j/DocumentFactory;)V
    //   266: goto -> 240
    //   269: aload_2
    //   270: getstatic org/dom4j/datatype/SchemaParser.XSD_SIMPLETYPE : Lorg/dom4j/QName;
    //   273: invokeinterface elementIterator : (Lorg/dom4j/QName;)Ljava/util/Iterator;
    //   278: astore_1
    //   279: aload_1
    //   280: invokeinterface hasNext : ()Z
    //   285: ifeq -> 304
    //   288: aload_0
    //   289: aload_1
    //   290: invokeinterface next : ()Ljava/lang/Object;
    //   295: checkcast org/dom4j/Element
    //   298: invokespecial onNamedSchemaSimpleType : (Lorg/dom4j/Element;)V
    //   301: goto -> 279
    //   304: aload_2
    //   305: getstatic org/dom4j/datatype/SchemaParser.XSD_COMPLEXTYPE : Lorg/dom4j/QName;
    //   308: invokeinterface elementIterator : (Lorg/dom4j/QName;)Ljava/util/Iterator;
    //   313: astore_1
    //   314: aload_1
    //   315: invokeinterface hasNext : ()Z
    //   320: ifeq -> 339
    //   323: aload_0
    //   324: aload_1
    //   325: invokeinterface next : ()Ljava/lang/Object;
    //   330: checkcast org/dom4j/Element
    //   333: invokespecial onNamedSchemaComplexType : (Lorg/dom4j/Element;)V
    //   336: goto -> 314
    //   339: aload_0
    //   340: getfield namedTypeResolver : Lorg/dom4j/datatype/NamedTypeResolver;
    //   343: invokevirtual resolveNamedTypes : ()V
    //   346: aload_0
    //   347: monitorexit
    //   348: return
    // Exception table:
    //   from	to	target	type
    //   2	9	162	finally
    //   13	24	162	finally
    //   24	61	162	finally
    //   66	77	77	java/lang/Exception
    //   66	77	162	finally
    //   78	162	162	finally
    //   167	178	77	java/lang/Exception
    //   167	178	162	finally
    //   183	211	77	java/lang/Exception
    //   183	211	162	finally
    //   211	227	77	java/lang/Exception
    //   211	227	162	finally
    //   230	240	162	finally
    //   240	266	162	finally
    //   269	279	162	finally
    //   279	301	162	finally
    //   304	314	162	finally
    //   314	336	162	finally
    //   339	346	162	finally
  }
  
  private XSDatatype loadXSDatatypeFromSimpleType(Element paramElement) {
    XSDatatype xSDatatype;
    Element element = paramElement.element(XSD_RESTRICTION);
    if (element != null) {
      String str = element.attributeValue("base");
      if (str != null) {
        xSDatatype = getTypeByName(str);
        if (xSDatatype == null) {
          onSchemaError("Invalid base type: " + str + " when trying to build restriction: " + element);
          return null;
        } 
        return deriveSimpleType(xSDatatype, element);
      } 
      element = xSDatatype.element(XSD_SIMPLETYPE);
      if (element == null) {
        onSchemaError("The simpleType element: " + xSDatatype + " must contain a base attribute or simpleType" + " element");
        return null;
      } 
      return loadXSDatatypeFromSimpleType(element);
    } 
    onSchemaError("No <restriction>. Could not create XSDatatype for simpleType: " + xSDatatype);
    return null;
  }
  
  private void onChildElements(Element paramElement, DatatypeElementFactory paramDatatypeElementFactory) {
    Iterator<Element> iterator = paramElement.elementIterator(XSD_ELEMENT);
    while (iterator.hasNext())
      onDatatypeElement(iterator.next(), paramDatatypeElementFactory); 
  }
  
  private void onDatatypeAttribute(Element paramElement1, DatatypeElementFactory paramDatatypeElementFactory, Element paramElement2) {
    String str1 = paramElement2.attributeValue("name");
    QName qName = getQName(str1);
    XSDatatype xSDatatype = dataTypeForXsdAttribute(paramElement2);
    if (xSDatatype != null) {
      paramDatatypeElementFactory.setAttributeXSDatatype(qName, xSDatatype);
      return;
    } 
    String str2 = paramElement2.attributeValue("type");
    System.out.println("Warning: Couldn't find XSDatatype for type: " + str2 + " attribute: " + str1);
  }
  
  private void onDatatypeElement(Element paramElement, DocumentFactory paramDocumentFactory) {
    QName qName1;
    String str1 = paramElement.attributeValue("name");
    String str2 = paramElement.attributeValue("type");
    QName qName2 = getQName(str1);
    DatatypeElementFactory datatypeElementFactory = getDatatypeElementFactory(qName2);
    if (str2 != null) {
      XSDatatype xSDatatype = getTypeByName(str2);
      if (xSDatatype != null) {
        datatypeElementFactory.setChildElementXSDatatype(qName2, xSDatatype);
        return;
      } 
      qName1 = getQName(str2);
      this.namedTypeResolver.registerTypedElement(paramElement, qName1, paramDocumentFactory);
      return;
    } 
    Element element = paramElement.element(XSD_SIMPLETYPE);
    if (element != null) {
      XSDatatype xSDatatype = loadXSDatatypeFromSimpleType(element);
      if (xSDatatype != null)
        qName1.setChildElementXSDatatype(qName2, xSDatatype); 
    } 
    element = paramElement.element(XSD_COMPLEXTYPE);
    if (element != null)
      onSchemaComplexType(element, (DatatypeElementFactory)qName1); 
    Iterator<Element> iterator = paramElement.elementIterator(XSD_ATTRIBUTE);
    if (iterator.hasNext()) {
      do {
        onDatatypeAttribute(paramElement, (DatatypeElementFactory)qName1, iterator.next());
      } while (iterator.hasNext());
      return;
    } 
  }
  
  private void onNamedSchemaComplexType(Element paramElement) {
    Attribute attribute = paramElement.attribute("name");
    if (attribute == null)
      return; 
    QName qName = getQName(attribute.getText());
    DatatypeElementFactory datatypeElementFactory = getDatatypeElementFactory(qName);
    onSchemaComplexType(paramElement, datatypeElementFactory);
    this.namedTypeResolver.registerComplexType(qName, datatypeElementFactory);
  }
  
  private void onNamedSchemaSimpleType(Element paramElement) {
    Attribute attribute = paramElement.attribute("name");
    if (attribute == null)
      return; 
    QName qName = getQName(attribute.getText());
    XSDatatype xSDatatype = loadXSDatatypeFromSimpleType(paramElement);
    this.namedTypeResolver.registerSimpleType(qName, xSDatatype);
  }
  
  private void onSchemaComplexType(Element paramElement, DatatypeElementFactory paramDatatypeElementFactory) {
    Iterator<Element> iterator = paramElement.elementIterator(XSD_ATTRIBUTE);
    while (iterator.hasNext()) {
      Element element1 = iterator.next();
      QName qName = getQName(element1.attributeValue("name"));
      XSDatatype xSDatatype = dataTypeForXsdAttribute(element1);
      if (xSDatatype != null)
        paramDatatypeElementFactory.setAttributeXSDatatype(qName, xSDatatype); 
    } 
    Element element = paramElement.element(XSD_SEQUENCE);
    if (element != null)
      onChildElements(element, paramDatatypeElementFactory); 
    element = paramElement.element(XSD_CHOICE);
    if (element != null)
      onChildElements(element, paramDatatypeElementFactory); 
    paramElement = paramElement.element(XSD_ALL);
    if (paramElement != null)
      onChildElements(paramElement, paramDatatypeElementFactory); 
  }
  
  private void onSchemaError(String paramString) {
    throw new InvalidSchemaException(paramString);
  }
  
  public void build(Document paramDocument) {
    this.targetNamespace = null;
    internalBuild(paramDocument);
  }
  
  public void build(Document paramDocument, Namespace paramNamespace) {
    this.targetNamespace = paramNamespace;
    internalBuild(paramDocument);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\datatype\SchemaParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */