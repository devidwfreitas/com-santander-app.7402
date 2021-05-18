package org.dom4j.io;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.dom.DOMAttribute;
import org.dom4j.dom.DOMCDATA;
import org.dom4j.dom.DOMComment;
import org.dom4j.dom.DOMDocumentFactory;
import org.dom4j.dom.DOMElement;
import org.dom4j.dom.DOMText;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.xml.sax.Attributes;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

public class DOMSAXContentHandler extends DefaultHandler implements LexicalHandler {
  private Map availableNamespaceMap = new HashMap<Object, Object>();
  
  private StringBuffer cdataText;
  
  private Element currentElement;
  
  private int declaredNamespaceIndex;
  
  private List declaredNamespaceList = new ArrayList();
  
  private Document document;
  
  private DOMDocumentFactory documentFactory;
  
  private ElementStack elementStack;
  
  private EntityResolver entityResolver;
  
  private boolean ignoreComments = false;
  
  private InputSource inputSource;
  
  private boolean insideCDATASection;
  
  private Locator locator;
  
  private boolean mergeAdjacentText = false;
  
  private NamespaceStack namespaceStack;
  
  private boolean stripWhitespaceText = false;
  
  private StringBuffer textBuffer;
  
  private boolean textInTextBuffer = false;
  
  public DOMSAXContentHandler() {
    this((DOMDocumentFactory)DOMDocumentFactory.getInstance());
  }
  
  public DOMSAXContentHandler(DOMDocumentFactory paramDOMDocumentFactory) {
    this.documentFactory = paramDOMDocumentFactory;
    this.elementStack = createElementStack();
    this.namespaceStack = new NamespaceStack((DocumentFactory)paramDOMDocumentFactory);
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
    int j = paramAttributes.getLength();
    for (int i = 0; i < j; i++) {
      String str = paramAttributes.getQName(i);
      if (!str.startsWith("xmlns")) {
        String str1 = paramAttributes.getURI(i);
        String str2 = paramAttributes.getLocalName(i);
        String str3 = paramAttributes.getValue(i);
        DOMAttribute dOMAttribute = new DOMAttribute(this.namespaceStack.getAttributeQName(str1, str2, str), str3);
        ((DOMElement)paramElement).setAttributeNode((Attr)dOMAttribute);
      } 
    } 
  }
  
  protected void addDeclaredNamespaces(Element paramElement) {
    int i = this.namespaceStack.size();
    while (this.declaredNamespaceIndex < i) {
      Namespace namespace = this.namespaceStack.getNamespace(this.declaredNamespaceIndex);
      String str = attributeNameForNamespace(namespace);
      ((DOMElement)paramElement).setAttribute(str, namespace.getURI());
      this.declaredNamespaceIndex++;
    } 
  }
  
  protected String attributeNameForNamespace(Namespace paramNamespace) {
    String str2 = "xmlns";
    String str3 = paramNamespace.getPrefix();
    String str1 = str2;
    if (str3.length() > 0)
      str1 = "xmlns" + ":" + str3; 
    return str1;
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (paramInt2 != 0 && this.currentElement != null) {
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
      DOMText dOMText = new DOMText(new String(paramArrayOfchar, paramInt1, paramInt2));
      ((DOMElement)this.currentElement).add((Text)dOMText);
      return;
    } 
  }
  
  public void comment(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    DOMComment dOMComment;
    if (!this.ignoreComments) {
      if (this.mergeAdjacentText && this.textInTextBuffer)
        completeCurrentTextNode(); 
      String str = new String(paramArrayOfchar, paramInt1, paramInt2);
      if (str.length() > 0) {
        dOMComment = new DOMComment(str);
        if (this.currentElement != null) {
          ((DOMElement)this.currentElement).add((Comment)dOMComment);
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    getDocument().appendChild((Node)dOMComment);
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
        if (!bool1) {
          DOMText dOMText1 = new DOMText(this.textBuffer.toString());
          ((DOMElement)this.currentElement).add((Text)dOMText1);
        } 
        this.textBuffer.setLength(0);
        this.textInTextBuffer = false;
        return;
      } 
    } 
    DOMText dOMText = new DOMText(this.textBuffer.toString());
    ((DOMElement)this.currentElement).add((Text)dOMText);
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
  
  public void endCDATA() {
    this.insideCDATASection = false;
    DOMCDATA dOMCDATA = new DOMCDATA(this.cdataText.toString());
    ((DOMElement)this.currentElement).add((CDATA)dOMCDATA);
  }
  
  public void endDTD() {}
  
  public void endDocument() {
    this.namespaceStack.clear();
    this.elementStack.clear();
    this.currentElement = null;
    this.textBuffer = null;
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    if (this.mergeAdjacentText && this.textInTextBuffer)
      completeCurrentTextNode(); 
    this.elementStack.popElement();
    this.currentElement = this.elementStack.peekElement();
  }
  
  public void endEntity(String paramString) {}
  
  public void endPrefixMapping(String paramString) {
    this.namespaceStack.pop(paramString);
    this.declaredNamespaceIndex = this.namespaceStack.size();
  }
  
  public void error(SAXParseException paramSAXParseException) {
    throw paramSAXParseException;
  }
  
  public void fatalError(SAXParseException paramSAXParseException) {
    throw paramSAXParseException;
  }
  
  public Document getDocument() {
    if (this.document == null)
      this.document = createDocument(); 
    return (Document)this.document;
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
  
  public boolean isIgnoreComments() {
    return this.ignoreComments;
  }
  
  public boolean isMergeAdjacentText() {
    return this.mergeAdjacentText;
  }
  
  public boolean isStripWhitespaceText() {
    return this.stripWhitespaceText;
  }
  
  public void processingInstruction(String paramString1, String paramString2) {
    if (this.mergeAdjacentText && this.textInTextBuffer)
      completeCurrentTextNode(); 
    ProcessingInstruction processingInstruction = (ProcessingInstruction)this.documentFactory.createProcessingInstruction(paramString1, paramString2);
    if (this.currentElement != null) {
      ((Element)this.currentElement).appendChild(processingInstruction);
      return;
    } 
    getDocument().appendChild(processingInstruction);
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
  
  public void startDTD(String paramString1, String paramString2, String paramString3) {}
  
  public void startDocument() {
    this.document = null;
    this.currentElement = null;
    this.elementStack.clear();
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
    Element element2 = this.currentElement;
    Element element1 = element2;
    if (element2 == null)
      document = (Document)getDocument(); 
    DOMElement dOMElement = new DOMElement(qName);
    document.add((Element)dOMElement);
    addDeclaredNamespaces((Element)dOMElement);
    addAttributes((Element)dOMElement, paramAttributes);
    this.elementStack.pushElement((Element)dOMElement);
    this.currentElement = (Element)dOMElement;
  }
  
  public void startEntity(String paramString) {}
  
  public void startPrefixMapping(String paramString1, String paramString2) {
    this.namespaceStack.push(paramString1, paramString2);
  }
  
  public void warning(SAXParseException paramSAXParseException) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DOMSAXContentHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */