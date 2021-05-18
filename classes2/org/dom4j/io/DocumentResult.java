package org.dom4j.io;

import javax.xml.transform.sax.SAXResult;
import org.dom4j.Document;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

public class DocumentResult extends SAXResult {
  private SAXContentHandler contentHandler;
  
  public DocumentResult() {
    this(new SAXContentHandler());
  }
  
  public DocumentResult(SAXContentHandler paramSAXContentHandler) {
    this.contentHandler = paramSAXContentHandler;
    super.setHandler(this.contentHandler);
    super.setLexicalHandler(this.contentHandler);
  }
  
  public Document getDocument() {
    return this.contentHandler.getDocument();
  }
  
  public void setHandler(ContentHandler paramContentHandler) {
    if (paramContentHandler instanceof SAXContentHandler) {
      this.contentHandler = (SAXContentHandler)paramContentHandler;
      super.setHandler(this.contentHandler);
    } 
  }
  
  public void setLexicalHandler(LexicalHandler paramLexicalHandler) {
    if (paramLexicalHandler instanceof SAXContentHandler) {
      this.contentHandler = (SAXContentHandler)paramLexicalHandler;
      super.setLexicalHandler(this.contentHandler);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DocumentResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */