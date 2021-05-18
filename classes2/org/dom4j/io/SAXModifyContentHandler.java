package org.dom4j.io;

import java.io.IOException;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;

class SAXModifyContentHandler extends SAXContentHandler {
  private XMLWriter xmlWriter;
  
  public SAXModifyContentHandler() {}
  
  public SAXModifyContentHandler(DocumentFactory paramDocumentFactory) {
    super(paramDocumentFactory);
  }
  
  public SAXModifyContentHandler(DocumentFactory paramDocumentFactory, ElementHandler paramElementHandler) {
    super(paramDocumentFactory, paramElementHandler);
  }
  
  public SAXModifyContentHandler(DocumentFactory paramDocumentFactory, ElementHandler paramElementHandler, ElementStack paramElementStack) {
    super(paramDocumentFactory, paramElementHandler, paramElementStack);
  }
  
  private boolean activeHandlers() {
    return (getElementStack().getDispatchHandler().getActiveHandlerCount() > 0);
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.characters(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void comment(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.comment(paramArrayOfchar, paramInt1, paramInt2);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.comment(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endCDATA() {
    super.endCDATA();
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.endCDATA(); 
  }
  
  public void endDTD() {
    super.endDTD();
    if (this.xmlWriter != null)
      this.xmlWriter.endDTD(); 
  }
  
  public void endDocument() {
    super.endDocument();
    if (this.xmlWriter != null)
      this.xmlWriter.endDocument(); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    ElementHandler elementHandler = getElementStack().getDispatchHandler().getHandler(getElementStack().getPath());
    super.endElement(paramString1, paramString2, paramString3);
    if (!activeHandlers() && this.xmlWriter != null) {
      if (elementHandler == null) {
        this.xmlWriter.endElement(paramString1, paramString2, paramString3);
        return;
      } 
    } else {
      return;
    } 
    if (elementHandler instanceof SAXModifyElementHandler) {
      Element element = ((SAXModifyElementHandler)elementHandler).getModifiedElement();
      try {
        this.xmlWriter.write(element);
        return;
      } catch (IOException iOException) {
        throw new SAXModifyException(iOException);
      } 
    } 
  }
  
  public void endEntity(String paramString) {
    super.endEntity(paramString);
    if (this.xmlWriter != null)
      this.xmlWriter.endEntity(paramString); 
  }
  
  public void endPrefixMapping(String paramString) {
    super.endPrefixMapping(paramString);
    if (this.xmlWriter != null)
      this.xmlWriter.endPrefixMapping(paramString); 
  }
  
  protected XMLWriter getXMLWriter() {
    return this.xmlWriter;
  }
  
  public void ignorableWhitespace(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.ignorableWhitespace(paramArrayOfchar, paramInt1, paramInt2);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.ignorableWhitespace(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void notationDecl(String paramString1, String paramString2, String paramString3) {
    super.notationDecl(paramString1, paramString2, paramString3);
    if (this.xmlWriter != null)
      this.xmlWriter.notationDecl(paramString1, paramString2, paramString3); 
  }
  
  public void processingInstruction(String paramString1, String paramString2) {
    super.processingInstruction(paramString1, paramString2);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.processingInstruction(paramString1, paramString2); 
  }
  
  public void setDocumentLocator(Locator paramLocator) {
    super.setDocumentLocator(paramLocator);
    if (this.xmlWriter != null)
      this.xmlWriter.setDocumentLocator(paramLocator); 
  }
  
  public void setXMLWriter(XMLWriter paramXMLWriter) {
    this.xmlWriter = paramXMLWriter;
  }
  
  public void skippedEntity(String paramString) {
    super.skippedEntity(paramString);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.skippedEntity(paramString); 
  }
  
  public void startCDATA() {
    super.startCDATA();
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.startCDATA(); 
  }
  
  public void startDTD(String paramString1, String paramString2, String paramString3) {
    super.startDTD(paramString1, paramString2, paramString3);
    if (this.xmlWriter != null)
      this.xmlWriter.startDTD(paramString1, paramString2, paramString3); 
  }
  
  public void startDocument() {
    super.startDocument();
    if (this.xmlWriter != null)
      this.xmlWriter.startDocument(); 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.startElement(paramString1, paramString2, paramString3, paramAttributes); 
  }
  
  public void startEntity(String paramString) {
    super.startEntity(paramString);
    if (this.xmlWriter != null)
      this.xmlWriter.startEntity(paramString); 
  }
  
  public void startPrefixMapping(String paramString1, String paramString2) {
    super.startPrefixMapping(paramString1, paramString2);
    if (this.xmlWriter != null)
      this.xmlWriter.startPrefixMapping(paramString1, paramString2); 
  }
  
  public void unparsedEntityDecl(String paramString1, String paramString2, String paramString3, String paramString4) {
    super.unparsedEntityDecl(paramString1, paramString2, paramString3, paramString4);
    if (!activeHandlers() && this.xmlWriter != null)
      this.xmlWriter.unparsedEntityDecl(paramString1, paramString2, paramString3, paramString4); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXModifyContentHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */