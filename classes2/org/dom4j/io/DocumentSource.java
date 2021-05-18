package org.dom4j.io;

import javax.xml.transform.sax.SAXSource;
import org.dom4j.Document;
import org.dom4j.Node;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public class DocumentSource extends SAXSource {
  public static final String DOM4J_FEATURE = "http://org.dom4j.io.DoucmentSource/feature";
  
  private XMLReader xmlReader = new SAXWriter();
  
  public DocumentSource(Document paramDocument) {
    setDocument(paramDocument);
  }
  
  public DocumentSource(Node paramNode) {
    setDocument(paramNode.getDocument());
  }
  
  public Document getDocument() {
    return ((DocumentInputSource)getInputSource()).getDocument();
  }
  
  public XMLReader getXMLReader() {
    return this.xmlReader;
  }
  
  public void setDocument(Document paramDocument) {
    super.setInputSource(new DocumentInputSource(paramDocument));
  }
  
  public void setInputSource(InputSource paramInputSource) {
    if (paramInputSource instanceof DocumentInputSource) {
      super.setInputSource(paramInputSource);
      return;
    } 
    throw new UnsupportedOperationException();
  }
  
  public void setXMLReader(XMLReader paramXMLReader) {
    if (paramXMLReader instanceof SAXWriter) {
      this.xmlReader = paramXMLReader;
      return;
    } 
    if (paramXMLReader instanceof org.xml.sax.XMLFilter) {
      paramXMLReader = paramXMLReader;
      while (true) {
        XMLReader xMLReader = paramXMLReader.getParent();
        if (xMLReader instanceof org.xml.sax.XMLFilter) {
          paramXMLReader = xMLReader;
          continue;
        } 
        paramXMLReader.setParent(this.xmlReader);
        this.xmlReader = paramXMLReader;
        return;
      } 
    } 
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DocumentSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */