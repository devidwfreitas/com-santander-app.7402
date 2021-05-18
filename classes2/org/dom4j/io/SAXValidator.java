package org.dom4j.io;

import java.io.IOException;
import org.dom4j.Document;
import org.xml.sax.ErrorHandler;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class SAXValidator {
  private ErrorHandler errorHandler;
  
  private XMLReader xmlReader;
  
  public SAXValidator() {}
  
  public SAXValidator(XMLReader paramXMLReader) {
    this.xmlReader = paramXMLReader;
  }
  
  protected void configureReader() {
    if (this.xmlReader.getContentHandler() == null)
      this.xmlReader.setContentHandler(new DefaultHandler()); 
    this.xmlReader.setFeature("http://xml.org/sax/features/validation", true);
    this.xmlReader.setFeature("http://xml.org/sax/features/namespaces", true);
    this.xmlReader.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
  }
  
  protected XMLReader createXMLReader() {
    return SAXHelper.createXMLReader(true);
  }
  
  public ErrorHandler getErrorHandler() {
    return this.errorHandler;
  }
  
  public XMLReader getXMLReader() {
    if (this.xmlReader == null) {
      this.xmlReader = createXMLReader();
      configureReader();
    } 
    return this.xmlReader;
  }
  
  public void setErrorHandler(ErrorHandler paramErrorHandler) {
    this.errorHandler = paramErrorHandler;
  }
  
  public void setXMLReader(XMLReader paramXMLReader) {
    this.xmlReader = paramXMLReader;
    configureReader();
  }
  
  public void validate(Document paramDocument) {
    if (paramDocument != null) {
      XMLReader xMLReader = getXMLReader();
      if (this.errorHandler != null)
        xMLReader.setErrorHandler(this.errorHandler); 
      try {
        xMLReader.parse(new DocumentInputSource(paramDocument));
        return;
      } catch (IOException iOException) {
        throw new RuntimeException("Caught and exception that should never happen: " + iOException);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXValidator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */