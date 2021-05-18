package org.dom4j.io;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.QName;
import org.dom4j.dtd.AttributeDecl;
import org.dom4j.dtd.ElementDecl;
import org.dom4j.dtd.ExternalEntityDecl;
import org.dom4j.dtd.InternalEntityDecl;
import org.dom4j.tree.AbstractElement;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

public class SAXContentHandler extends DefaultHandler implements DTDHandler, DeclHandler, LexicalHandler {
  private Map availableNamespaceMap = new HashMap<Object, Object>();
  
  private StringBuffer cdataText;
  
  private Element currentElement;
  
  private int declaredNamespaceIndex;
  
  private List declaredNamespaceList = new ArrayList();
  
  private Document document;
  
  private DocumentFactory documentFactory;
  
  private ElementHandler elementHandler;
  
  private ElementStack elementStack;
  
  private String entity;
  
  private int entityLevel;
  
  private EntityResolver entityResolver;
  
  private List externalDTDDeclarations;
  
  private boolean ignoreComments = false;
  
  private boolean includeExternalDTDDeclarations = false;
  
  private boolean includeInternalDTDDeclarations = false;
  
  private InputSource inputSource;
  
  private boolean insideCDATASection;
  
  private boolean insideDTDSection;
  
  private List internalDTDDeclarations;
  
  private boolean internalDTDsubset = false;
  
  private Locator locator;
  
  private boolean mergeAdjacentText = false;
  
  private NamespaceStack namespaceStack;
  
  private boolean stripWhitespaceText = false;
  
  private StringBuffer textBuffer;
  
  private boolean textInTextBuffer = false;
  
  public SAXContentHandler() {
    this(DocumentFactory.getInstance());
  }
  
  public SAXContentHandler(DocumentFactory paramDocumentFactory) {
    this(paramDocumentFactory, null);
  }
  
  public SAXContentHandler(DocumentFactory paramDocumentFactory, ElementHandler paramElementHandler) {
    this(paramDocumentFactory, paramElementHandler, null);
    this.elementStack = createElementStack();
  }
  
  public SAXContentHandler(DocumentFactory paramDocumentFactory, ElementHandler paramElementHandler, ElementStack paramElementStack) {
    this.documentFactory = paramDocumentFactory;
    this.elementHandler = paramElementHandler;
    this.elementStack = paramElementStack;
    this.namespaceStack = new NamespaceStack(paramDocumentFactory);
  }
  
  private String getEncoding() {
    if (this.locator == null)
      return null; 
    try {
      Method method = this.locator.getClass().getMethod("getEncoding", new Class[0]);
      if (method != null)
        return (String)method.invoke(this.locator, null); 
    } catch (Exception exception) {}
    return null;
  }
  
  protected void addAttributes(Element paramElement, Attributes paramAttributes) {
    int i = 0;
    if (paramElement instanceof AbstractElement) {
      ((AbstractElement)paramElement).setAttributes(paramAttributes, this.namespaceStack, false);
      return;
    } 
    int j = paramAttributes.getLength();
    while (true) {
      if (i < j) {
        String str = paramAttributes.getQName(i);
        if (!str.startsWith("xmlns")) {
          String str1 = paramAttributes.getURI(i);
          String str2 = paramAttributes.getLocalName(i);
          String str3 = paramAttributes.getValue(i);
          paramElement.addAttribute(this.namespaceStack.getAttributeQName(str1, str2, str), str3);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  protected void addDTDDeclaration(Object paramObject) {
    if (this.internalDTDDeclarations == null)
      this.internalDTDDeclarations = new ArrayList(); 
    this.internalDTDDeclarations.add(paramObject);
  }
  
  protected void addDeclaredNamespaces(Element paramElement) {
    paramElement.getNamespace();
    int i = this.namespaceStack.size();
    while (this.declaredNamespaceIndex < i) {
      paramElement.add(this.namespaceStack.getNamespace(this.declaredNamespaceIndex));
      this.declaredNamespaceIndex++;
    } 
  }
  
  protected void addExternalDTDDeclaration(Object paramObject) {
    if (this.externalDTDDeclarations == null)
      this.externalDTDDeclarations = new ArrayList(); 
    this.externalDTDDeclarations.add(paramObject);
  }
  
  public void attributeDecl(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    if (this.internalDTDsubset) {
      if (this.includeInternalDTDDeclarations)
        addDTDDeclaration(new AttributeDecl(paramString1, paramString2, paramString3, paramString4, paramString5)); 
      return;
    } 
    if (this.includeExternalDTDDeclarations) {
      addExternalDTDDeclaration(new AttributeDecl(paramString1, paramString2, paramString3, paramString4, paramString5));
      return;
    } 
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (paramInt2 != 0 && this.currentElement != null) {
      if (this.entity != null) {
        if (this.mergeAdjacentText && this.textInTextBuffer)
          completeCurrentTextNode(); 
        this.currentElement.addEntity(this.entity, new String(paramArrayOfchar, paramInt1, paramInt2));
        this.entity = null;
        return;
      } 
      if (this.insideCDATASection) {
        if (this.mergeAdjacentText && this.textInTextBuffer)
          completeCurrentTextNode(); 
        this.cdataText.append(new String(paramArrayOfchar, paramInt1, paramInt2));
        return;
      } 
      if (this.mergeAdjacentText) {
        this.textBuffer.append(paramArrayOfchar, paramInt1, paramInt2);
        this.textInTextBuffer = true;
        return;
      } 
      this.currentElement.addText(new String(paramArrayOfchar, paramInt1, paramInt2));
      return;
    } 
  }
  
  public void comment(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    String str;
    if (!this.ignoreComments) {
      if (this.mergeAdjacentText && this.textInTextBuffer)
        completeCurrentTextNode(); 
      str = new String(paramArrayOfchar, paramInt1, paramInt2);
      if (!this.insideDTDSection && str.length() > 0) {
        if (this.currentElement != null) {
          this.currentElement.addComment(str);
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    getDocument().addComment(str);
  }
  
  protected void completeCurrentTextNode() {
    if (this.stripWhitespaceText) {
      boolean bool = true;
      int j = this.textBuffer.length();
      int i = 0;
      while (true) {
        boolean bool1 = bool;
        if (i < j)
          if (!Character.isWhitespace(this.textBuffer.charAt(i))) {
            bool1 = false;
          } else {
            i++;
            continue;
          }  
        if (!bool1)
          this.currentElement.addText(this.textBuffer.toString()); 
        this.textBuffer.setLength(0);
        this.textInTextBuffer = false;
        return;
      } 
    } 
    this.currentElement.addText(this.textBuffer.toString());
    this.textBuffer.setLength(0);
    this.textInTextBuffer = false;
  }
  
  protected Document createDocument() {
    String str = getEncoding();
    Document document = this.documentFactory.createDocument(str);
    document.setEntityResolver(this.entityResolver);
    if (this.inputSource != null)
      document.setName(this.inputSource.getSystemId()); 
    return document;
  }
  
  protected ElementStack createElementStack() {
    return new ElementStack();
  }
  
  public void elementDecl(String paramString1, String paramString2) {
    if (this.internalDTDsubset) {
      if (this.includeInternalDTDDeclarations)
        addDTDDeclaration(new ElementDecl(paramString1, paramString2)); 
      return;
    } 
    if (this.includeExternalDTDDeclarations) {
      addExternalDTDDeclaration(new ElementDecl(paramString1, paramString2));
      return;
    } 
  }
  
  public void endCDATA() {
    this.insideCDATASection = false;
    this.currentElement.addCDATA(this.cdataText.toString());
  }
  
  public void endDTD() {
    this.insideDTDSection = false;
    DocumentType documentType = getDocument().getDocType();
    if (documentType != null) {
      if (this.internalDTDDeclarations != null)
        documentType.setInternalDeclarations(this.internalDTDDeclarations); 
      if (this.externalDTDDeclarations != null)
        documentType.setExternalDeclarations(this.externalDTDDeclarations); 
    } 
    this.internalDTDDeclarations = null;
    this.externalDTDDeclarations = null;
  }
  
  public void endDocument() {
    this.namespaceStack.clear();
    this.elementStack.clear();
    this.currentElement = null;
    this.textBuffer = null;
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    if (this.mergeAdjacentText && this.textInTextBuffer)
      completeCurrentTextNode(); 
    if (this.elementHandler != null && this.currentElement != null)
      this.elementHandler.onEnd(this.elementStack); 
    this.elementStack.popElement();
    this.currentElement = this.elementStack.peekElement();
  }
  
  public void endEntity(String paramString) {
    this.entityLevel--;
    this.entity = null;
    if (this.entityLevel == 0)
      this.internalDTDsubset = true; 
  }
  
  public void endPrefixMapping(String paramString) {
    this.namespaceStack.pop(paramString);
    this.declaredNamespaceIndex = this.namespaceStack.size();
  }
  
  public void error(SAXParseException paramSAXParseException) {
    throw paramSAXParseException;
  }
  
  public void externalEntityDecl(String paramString1, String paramString2, String paramString3) {
    ExternalEntityDecl externalEntityDecl = new ExternalEntityDecl(paramString1, paramString2, paramString3);
    if (this.internalDTDsubset) {
      if (this.includeInternalDTDDeclarations)
        addDTDDeclaration(externalEntityDecl); 
      return;
    } 
    if (this.includeExternalDTDDeclarations) {
      addExternalDTDDeclaration(externalEntityDecl);
      return;
    } 
  }
  
  public void fatalError(SAXParseException paramSAXParseException) {
    throw paramSAXParseException;
  }
  
  public Document getDocument() {
    if (this.document == null)
      this.document = createDocument(); 
    return this.document;
  }
  
  public ElementStack getElementStack() {
    return this.elementStack;
  }
  
  public EntityResolver getEntityResolver() {
    return this.entityResolver;
  }
  
  public InputSource getInputSource() {
    return this.inputSource;
  }
  
  public void internalEntityDecl(String paramString1, String paramString2) {
    if (this.internalDTDsubset) {
      if (this.includeInternalDTDDeclarations)
        addDTDDeclaration(new InternalEntityDecl(paramString1, paramString2)); 
      return;
    } 
    if (this.includeExternalDTDDeclarations) {
      addExternalDTDDeclaration(new InternalEntityDecl(paramString1, paramString2));
      return;
    } 
  }
  
  protected boolean isIgnorableEntity(String paramString) {
    return ("amp".equals(paramString) || "apos".equals(paramString) || "gt".equals(paramString) || "lt".equals(paramString) || "quot".equals(paramString));
  }
  
  public boolean isIgnoreComments() {
    return this.ignoreComments;
  }
  
  public boolean isIncludeExternalDTDDeclarations() {
    return this.includeExternalDTDDeclarations;
  }
  
  public boolean isIncludeInternalDTDDeclarations() {
    return this.includeInternalDTDDeclarations;
  }
  
  public boolean isMergeAdjacentText() {
    return this.mergeAdjacentText;
  }
  
  public boolean isStripWhitespaceText() {
    return this.stripWhitespaceText;
  }
  
  public void notationDecl(String paramString1, String paramString2, String paramString3) {}
  
  public void processingInstruction(String paramString1, String paramString2) {
    if (this.mergeAdjacentText && this.textInTextBuffer)
      completeCurrentTextNode(); 
    if (this.currentElement != null) {
      this.currentElement.addProcessingInstruction(paramString1, paramString2);
      return;
    } 
    getDocument().addProcessingInstruction(paramString1, paramString2);
  }
  
  public void setDocumentLocator(Locator paramLocator) {
    this.locator = paramLocator;
  }
  
  public void setElementStack(ElementStack paramElementStack) {
    this.elementStack = paramElementStack;
  }
  
  public void setEntityResolver(EntityResolver paramEntityResolver) {
    this.entityResolver = paramEntityResolver;
  }
  
  public void setIgnoreComments(boolean paramBoolean) {
    this.ignoreComments = paramBoolean;
  }
  
  public void setIncludeExternalDTDDeclarations(boolean paramBoolean) {
    this.includeExternalDTDDeclarations = paramBoolean;
  }
  
  public void setIncludeInternalDTDDeclarations(boolean paramBoolean) {
    this.includeInternalDTDDeclarations = paramBoolean;
  }
  
  public void setInputSource(InputSource paramInputSource) {
    this.inputSource = paramInputSource;
  }
  
  public void setMergeAdjacentText(boolean paramBoolean) {
    this.mergeAdjacentText = paramBoolean;
  }
  
  public void setStripWhitespaceText(boolean paramBoolean) {
    this.stripWhitespaceText = paramBoolean;
  }
  
  public void startCDATA() {
    this.insideCDATASection = true;
    this.cdataText = new StringBuffer();
  }
  
  public void startDTD(String paramString1, String paramString2, String paramString3) {
    getDocument().addDocType(paramString1, paramString2, paramString3);
    this.insideDTDSection = true;
    this.internalDTDsubset = true;
  }
  
  public void startDocument() {
    this.document = null;
    this.currentElement = null;
    this.elementStack.clear();
    if (this.elementHandler != null && this.elementHandler instanceof DispatchHandler)
      this.elementStack.setDispatchHandler((DispatchHandler)this.elementHandler); 
    this.namespaceStack.clear();
    this.declaredNamespaceIndex = 0;
    if (this.mergeAdjacentText && this.textBuffer == null)
      this.textBuffer = new StringBuffer(); 
    this.textInTextBuffer = false;
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    Document document;
    if (this.mergeAdjacentText && this.textInTextBuffer)
      completeCurrentTextNode(); 
    QName qName = this.namespaceStack.getQName(paramString1, paramString2, paramString3);
    Element element3 = this.currentElement;
    Element element2 = element3;
    if (element3 == null)
      document = getDocument(); 
    Element element1 = document.addElement(qName);
    addDeclaredNamespaces(element1);
    addAttributes(element1, paramAttributes);
    this.elementStack.pushElement(element1);
    this.currentElement = element1;
    this.entity = null;
    if (this.elementHandler != null)
      this.elementHandler.onStart(this.elementStack); 
  }
  
  public void startEntity(String paramString) {
    this.entityLevel++;
    this.entity = null;
    if (!this.insideDTDSection && !isIgnorableEntity(paramString))
      this.entity = paramString; 
    this.internalDTDsubset = false;
  }
  
  public void startPrefixMapping(String paramString1, String paramString2) {
    this.namespaceStack.push(paramString1, paramString2);
  }
  
  public void unparsedEntityDecl(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public void warning(SAXParseException paramSAXParseException) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXContentHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */