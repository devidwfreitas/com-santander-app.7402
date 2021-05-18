package org.dom4j.io;

import org.dom4j.DocumentFactory;
import org.xml.sax.XMLReader;

class SAXModifyReader extends SAXReader {
  private boolean pruneElements;
  
  private XMLWriter xmlWriter;
  
  public SAXModifyReader() {}
  
  public SAXModifyReader(String paramString) {
    super(paramString);
  }
  
  public SAXModifyReader(String paramString, boolean paramBoolean) {
    super(paramString, paramBoolean);
  }
  
  public SAXModifyReader(DocumentFactory paramDocumentFactory) {
    super(paramDocumentFactory);
  }
  
  public SAXModifyReader(DocumentFactory paramDocumentFactory, boolean paramBoolean) {
    super(paramDocumentFactory, paramBoolean);
  }
  
  public SAXModifyReader(XMLReader paramXMLReader) {
    super(paramXMLReader);
  }
  
  public SAXModifyReader(XMLReader paramXMLReader, boolean paramBoolean) {
    super(paramXMLReader, paramBoolean);
  }
  
  public SAXModifyReader(boolean paramBoolean) {
    super(paramBoolean);
  }
  
  protected SAXContentHandler createContentHandler(XMLReader paramXMLReader) {
    SAXModifyContentHandler sAXModifyContentHandler = new SAXModifyContentHandler(getDocumentFactory(), getDispatchHandler());
    sAXModifyContentHandler.setXMLWriter(this.xmlWriter);
    return sAXModifyContentHandler;
  }
  
  protected XMLWriter getXMLWriter() {
    return this.xmlWriter;
  }
  
  public boolean isPruneElements() {
    return this.pruneElements;
  }
  
  public void setPruneElements(boolean paramBoolean) {
    this.pruneElements = paramBoolean;
  }
  
  public void setXMLWriter(XMLWriter paramXMLWriter) {
    this.xmlWriter = paramXMLWriter;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXModifyReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */