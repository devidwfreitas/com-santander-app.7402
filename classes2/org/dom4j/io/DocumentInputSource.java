package org.dom4j.io;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import org.dom4j.Document;
import org.xml.sax.InputSource;

class DocumentInputSource extends InputSource {
  private Document document;
  
  public DocumentInputSource() {}
  
  public DocumentInputSource(Document paramDocument) {
    this.document = paramDocument;
    setSystemId(paramDocument.getName());
  }
  
  public Reader getCharacterStream() {
    try {
      StringWriter stringWriter = new StringWriter();
      XMLWriter xMLWriter = new XMLWriter(stringWriter);
      xMLWriter.write(this.document);
      xMLWriter.flush();
      return new StringReader(stringWriter.toString());
    } catch (IOException iOException) {
      return new DocumentInputSource$1(this, iOException);
    } 
  }
  
  public Document getDocument() {
    return this.document;
  }
  
  public void setCharacterStream(Reader paramReader) {
    throw new UnsupportedOperationException();
  }
  
  public void setDocument(Document paramDocument) {
    this.document = paramDocument;
    setSystemId(paramDocument.getName());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DocumentInputSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */