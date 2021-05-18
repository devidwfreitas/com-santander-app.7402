package org.dom4j.io;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.LocatorImpl;

public class SAXWriter implements XMLReader {
  protected static final String FEATURE_NAMESPACES = "http://xml.org/sax/features/namespaces";
  
  protected static final String FEATURE_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
  
  protected static final String[] LEXICAL_HANDLER_NAMES = new String[] { "http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler" };
  
  private AttributesImpl attributes = new AttributesImpl();
  
  private ContentHandler contentHandler;
  
  private boolean declareNamespaceAttributes;
  
  private DTDHandler dtdHandler;
  
  private EntityResolver entityResolver;
  
  private ErrorHandler errorHandler;
  
  private Map<String, Boolean> features = new HashMap<String, Boolean>();
  
  private LexicalHandler lexicalHandler;
  
  private Map<String, Object> properties = new HashMap<String, Object>();
  
  public SAXWriter() {
    this.properties.put("http://xml.org/sax/features/namespace-prefixes", Boolean.valueOf(false));
    this.properties.put("http://xml.org/sax/features/namespace-prefixes", Boolean.valueOf(true));
  }
  
  public SAXWriter(ContentHandler paramContentHandler) {
    this();
    this.contentHandler = paramContentHandler;
  }
  
  public SAXWriter(ContentHandler paramContentHandler, LexicalHandler paramLexicalHandler) {
    this();
    this.contentHandler = paramContentHandler;
    this.lexicalHandler = paramLexicalHandler;
  }
  
  public SAXWriter(ContentHandler paramContentHandler, LexicalHandler paramLexicalHandler, EntityResolver paramEntityResolver) {
    this();
    this.contentHandler = paramContentHandler;
    this.lexicalHandler = paramLexicalHandler;
    this.entityResolver = paramEntityResolver;
  }
  
  protected AttributesImpl addNamespaceAttribute(AttributesImpl paramAttributesImpl, Namespace paramNamespace) {
    if (this.declareNamespaceAttributes) {
      if (paramAttributesImpl == null)
        paramAttributesImpl = new AttributesImpl(); 
      String str3 = paramNamespace.getPrefix();
      String str2 = "xmlns";
      String str1 = str2;
      if (str3 != null) {
        str1 = str2;
        if (str3.length() > 0)
          str1 = "xmlns:" + str3; 
      } 
      paramAttributesImpl.addAttribute("", str3, str1, "CDATA", paramNamespace.getURI());
      return paramAttributesImpl;
    } 
    return paramAttributesImpl;
  }
  
  protected void checkForNullHandlers() {}
  
  protected Attributes createAttributes(Element paramElement, Attributes paramAttributes) {
    this.attributes.clear();
    if (paramAttributes != null)
      this.attributes.setAttributes(paramAttributes); 
    Iterator<Attribute> iterator = paramElement.attributeIterator();
    while (iterator.hasNext()) {
      Attribute attribute = iterator.next();
      this.attributes.addAttribute(attribute.getNamespaceURI(), attribute.getName(), attribute.getQualifiedName(), "CDATA", attribute.getValue());
    } 
    return this.attributes;
  }
  
  protected void documentLocator(Document paramDocument) {
    String str1;
    String str2 = null;
    LocatorImpl locatorImpl = new LocatorImpl();
    DocumentType documentType = paramDocument.getDocType();
    if (documentType != null) {
      str2 = documentType.getPublicID();
      str1 = documentType.getSystemID();
    } else {
      String str = null;
      str1 = str2;
      str2 = str;
    } 
    if (str2 != null)
      locatorImpl.setPublicId(str2); 
    if (str1 != null)
      locatorImpl.setSystemId(str1); 
    locatorImpl.setLineNumber(-1);
    locatorImpl.setColumnNumber(-1);
    this.contentHandler.setDocumentLocator(locatorImpl);
  }
  
  protected void dtdHandler(Document paramDocument) {}
  
  protected void endDocument() {
    this.contentHandler.endDocument();
  }
  
  protected void endElement(Element paramElement) {
    this.contentHandler.endElement(paramElement.getNamespaceURI(), paramElement.getName(), paramElement.getQualifiedName());
  }
  
  protected void endPrefixMapping(NamespaceStack paramNamespaceStack, int paramInt) {
    while (paramNamespaceStack.size() > paramInt) {
      Namespace namespace = paramNamespaceStack.pop();
      if (namespace != null)
        this.contentHandler.endPrefixMapping(namespace.getPrefix()); 
    } 
  }
  
  protected void entityResolver(Document paramDocument) {
    if (this.entityResolver != null) {
      DocumentType documentType = paramDocument.getDocType();
      if (documentType != null) {
        String str1 = documentType.getPublicID();
        String str2 = documentType.getSystemID();
        if (str1 != null || str2 != null)
          try {
            this.entityResolver.resolveEntity(str1, str2);
            return;
          } catch (IOException iOException) {
            throw new SAXException("Could not resolve publicID: " + str1 + " systemID: " + str2, iOException);
          }  
      } 
    } 
  }
  
  public ContentHandler getContentHandler() {
    return this.contentHandler;
  }
  
  public DTDHandler getDTDHandler() {
    return this.dtdHandler;
  }
  
  public EntityResolver getEntityResolver() {
    return this.entityResolver;
  }
  
  public ErrorHandler getErrorHandler() {
    return this.errorHandler;
  }
  
  public boolean getFeature(String paramString) {
    Boolean bool = this.features.get(paramString);
    return (bool != null && bool.booleanValue());
  }
  
  public LexicalHandler getLexicalHandler() {
    return this.lexicalHandler;
  }
  
  public Object getProperty(String paramString) {
    for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
      if (LEXICAL_HANDLER_NAMES[i].equals(paramString))
        return getLexicalHandler(); 
    } 
    return this.properties.get(paramString);
  }
  
  public boolean isDeclareNamespaceAttributes() {
    return this.declareNamespaceAttributes;
  }
  
  protected boolean isIgnoreableNamespace(Namespace paramNamespace, NamespaceStack paramNamespaceStack) {
    if (!paramNamespace.equals(Namespace.NO_NAMESPACE) && !paramNamespace.equals(Namespace.XML_NAMESPACE)) {
      String str = paramNamespace.getURI();
      if (str != null && str.length() > 0)
        return paramNamespaceStack.contains(paramNamespace); 
    } 
    return true;
  }
  
  public void parse(String paramString) {
    throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
  }
  
  public void parse(InputSource paramInputSource) {
    if (paramInputSource instanceof DocumentInputSource) {
      write(((DocumentInputSource)paramInputSource).getDocument());
      return;
    } 
    throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
  }
  
  public void setContentHandler(ContentHandler paramContentHandler) {
    this.contentHandler = paramContentHandler;
  }
  
  public void setDTDHandler(DTDHandler paramDTDHandler) {
    this.dtdHandler = paramDTDHandler;
  }
  
  public void setDeclareNamespaceAttributes(boolean paramBoolean) {
    this.declareNamespaceAttributes = paramBoolean;
  }
  
  public void setEntityResolver(EntityResolver paramEntityResolver) {
    this.entityResolver = paramEntityResolver;
  }
  
  public void setErrorHandler(ErrorHandler paramErrorHandler) {
    this.errorHandler = paramErrorHandler;
  }
  
  public void setFeature(String paramString, boolean paramBoolean) {
    if ("http://xml.org/sax/features/namespace-prefixes".equals(paramString)) {
      setDeclareNamespaceAttributes(paramBoolean);
    } else if ("http://xml.org/sax/features/namespace-prefixes".equals(paramString) && !paramBoolean) {
      throw new SAXNotSupportedException("Namespace feature is always supported in dom4j");
    } 
    this.features.put(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public void setLexicalHandler(LexicalHandler paramLexicalHandler) {
    this.lexicalHandler = paramLexicalHandler;
  }
  
  public void setProperty(String paramString, Object paramObject) {
    for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
      if (LEXICAL_HANDLER_NAMES[i].equals(paramString)) {
        setLexicalHandler((LexicalHandler)paramObject);
        return;
      } 
    } 
    this.properties.put(paramString, paramObject);
  }
  
  public void setXMLReader(XMLReader paramXMLReader) {
    setContentHandler(paramXMLReader.getContentHandler());
    setDTDHandler(paramXMLReader.getDTDHandler());
    setEntityResolver(paramXMLReader.getEntityResolver());
    setErrorHandler(paramXMLReader.getErrorHandler());
  }
  
  protected void startDocument() {
    this.contentHandler.startDocument();
  }
  
  protected void startElement(Element paramElement, AttributesImpl paramAttributesImpl) {
    this.contentHandler.startElement(paramElement.getNamespaceURI(), paramElement.getName(), paramElement.getQualifiedName(), createAttributes(paramElement, paramAttributesImpl));
  }
  
  protected AttributesImpl startPrefixMapping(Element paramElement, NamespaceStack paramNamespaceStack) {
    AttributesImpl attributesImpl3 = null;
    Namespace namespace = paramElement.getNamespace();
    AttributesImpl attributesImpl2 = attributesImpl3;
    if (namespace != null) {
      attributesImpl2 = attributesImpl3;
      if (!isIgnoreableNamespace(namespace, paramNamespaceStack)) {
        paramNamespaceStack.push(namespace);
        this.contentHandler.startPrefixMapping(namespace.getPrefix(), namespace.getURI());
        attributesImpl2 = addNamespaceAttribute(null, namespace);
      } 
    } 
    List<Namespace> list = paramElement.declaredNamespaces();
    int j = list.size();
    int i = 0;
    AttributesImpl attributesImpl1 = attributesImpl2;
    while (i < j) {
      Namespace namespace1 = list.get(i);
      if (!isIgnoreableNamespace(namespace1, paramNamespaceStack)) {
        paramNamespaceStack.push(namespace1);
        this.contentHandler.startPrefixMapping(namespace1.getPrefix(), namespace1.getURI());
        attributesImpl1 = addNamespaceAttribute(attributesImpl1, namespace1);
      } 
      i++;
    } 
    return attributesImpl1;
  }
  
  public void write(String paramString) {
    if (paramString != null) {
      char[] arrayOfChar = paramString.toCharArray();
      this.contentHandler.characters(arrayOfChar, 0, arrayOfChar.length);
    } 
  }
  
  public void write(CDATA paramCDATA) {
    String str = paramCDATA.getText();
    if (this.lexicalHandler != null) {
      this.lexicalHandler.startCDATA();
      write(str);
      this.lexicalHandler.endCDATA();
      return;
    } 
    write(str);
  }
  
  public void write(Comment paramComment) {
    if (this.lexicalHandler != null) {
      char[] arrayOfChar = paramComment.getText().toCharArray();
      this.lexicalHandler.comment(arrayOfChar, 0, arrayOfChar.length);
    } 
  }
  
  public void write(Document paramDocument) {
    if (paramDocument != null) {
      checkForNullHandlers();
      documentLocator(paramDocument);
      startDocument();
      entityResolver(paramDocument);
      dtdHandler(paramDocument);
      writeContent((Branch)paramDocument, new NamespaceStack());
      endDocument();
    } 
  }
  
  public void write(Element paramElement) {
    write(paramElement, new NamespaceStack());
  }
  
  protected void write(Element paramElement, NamespaceStack paramNamespaceStack) {
    int i = paramNamespaceStack.size();
    startElement(paramElement, startPrefixMapping(paramElement, paramNamespaceStack));
    writeContent((Branch)paramElement, paramNamespaceStack);
    endElement(paramElement);
    endPrefixMapping(paramNamespaceStack, i);
  }
  
  public void write(Entity paramEntity) {
    String str = paramEntity.getText();
    if (this.lexicalHandler != null) {
      String str1 = paramEntity.getName();
      this.lexicalHandler.startEntity(str1);
      write(str);
      this.lexicalHandler.endEntity(str1);
      return;
    } 
    write(str);
  }
  
  public void write(Node paramNode) {
    NodeType nodeType = paramNode.getNodeTypeEnum();
    switch (SAXWriter$1.$SwitchMap$org$dom4j$NodeType[nodeType.ordinal()]) {
      default:
        throw new SAXException("Invalid node type: " + paramNode);
      case 1:
        write((Element)paramNode);
      case 10:
        return;
      case 2:
        write(paramNode);
        return;
      case 3:
        write(paramNode.getText());
        return;
      case 4:
        write((CDATA)paramNode);
        return;
      case 5:
        write((Entity)paramNode);
        return;
      case 6:
        write((ProcessingInstruction)paramNode);
        return;
      case 7:
        write((Comment)paramNode);
        return;
      case 8:
        write((Document)paramNode);
        return;
      case 9:
        break;
    } 
    write(paramNode);
  }
  
  public void write(ProcessingInstruction paramProcessingInstruction) {
    String str2 = paramProcessingInstruction.getTarget();
    String str1 = paramProcessingInstruction.getText();
    this.contentHandler.processingInstruction(str2, str1);
  }
  
  public void writeClose(Element paramElement) {
    endElement(paramElement);
  }
  
  protected void writeContent(Branch paramBranch, NamespaceStack paramNamespaceStack) {
    Iterator<Object> iterator = paramBranch.nodeIterator();
    while (iterator.hasNext()) {
      Element element = (Element)iterator.next();
      if (element instanceof Element) {
        write(element, paramNamespaceStack);
        continue;
      } 
      if (element instanceof org.dom4j.CharacterData) {
        if (element instanceof Text) {
          write(((Text)element).getText());
          continue;
        } 
        if (element instanceof CDATA) {
          write((CDATA)element);
          continue;
        } 
        if (element instanceof Comment) {
          write((Comment)element);
          continue;
        } 
        throw new SAXException("Invalid Node in DOM4J content: " + element + " of type: " + element.getClass());
      } 
      if (element instanceof String) {
        write((String)element);
        continue;
      } 
      if (element instanceof Entity) {
        write((Entity)element);
        continue;
      } 
      if (element instanceof ProcessingInstruction) {
        write((ProcessingInstruction)element);
        continue;
      } 
      if (element instanceof Namespace) {
        write((Node)element);
        continue;
      } 
      throw new SAXException("Invalid Node in DOM4J content: " + element);
    } 
  }
  
  public void writeOpen(Element paramElement) {
    startElement(paramElement, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */