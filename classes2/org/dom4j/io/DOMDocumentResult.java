package org.dom4j.io;

import javax.xml.transform.sax.SAXResult;
import org.w3c.dom.Document;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

public class DOMDocumentResult extends SAXResult {
  private DOMSAXContentHandler contentHandler;
  
  public DOMDocumentResult() {
    this(new DOMSAXContentHandler());
  }
  
  public DOMDocumentResult(DOMSAXContentHandler paramDOMSAXContentHandler) {
    this.contentHandler = paramDOMSAXContentHandler;
    super.setHandler(this.contentHandler);
    super.setLexicalHandler(this.contentHandler);
  }
  
  public Document getDocument() {
    return this.contentHandler.getDocument();
  }
  
  public void setHandler(ContentHandler paramContentHandler) {
    if (paramContentHandler instanceof DOMSAXContentHandler) {
      this.contentHandler = (DOMSAXContentHandler)paramContentHandler;
      super.setHandler(this.contentHandler);
    } 
  }
  
  public void setLexicalHandler(LexicalHandler paramLexicalHandler) {
    if (paramLexicalHandler instanceof DOMSAXContentHandler) {
      this.contentHandler = (DOMSAXContentHandler)paramLexicalHandler;
      super.setLexicalHandler(this.contentHandler);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DOMDocumentResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */