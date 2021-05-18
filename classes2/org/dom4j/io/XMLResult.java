package org.dom4j.io;

import java.io.OutputStream;
import java.io.Writer;
import javax.xml.transform.sax.SAXResult;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

public class XMLResult extends SAXResult {
  private XMLWriter xmlWriter;
  
  public XMLResult() {
    this(new XMLWriter());
  }
  
  public XMLResult(OutputStream paramOutputStream) {
    this(new XMLWriter(paramOutputStream));
  }
  
  public XMLResult(OutputStream paramOutputStream, OutputFormat paramOutputFormat) {
    this(new XMLWriter(paramOutputStream, paramOutputFormat));
  }
  
  public XMLResult(Writer paramWriter) {
    this(new XMLWriter(paramWriter));
  }
  
  public XMLResult(Writer paramWriter, OutputFormat paramOutputFormat) {
    this(new XMLWriter(paramWriter, paramOutputFormat));
  }
  
  public XMLResult(XMLWriter paramXMLWriter) {
    super(paramXMLWriter);
    this.xmlWriter = paramXMLWriter;
    setLexicalHandler(paramXMLWriter);
  }
  
  public ContentHandler getHandler() {
    return this.xmlWriter;
  }
  
  public LexicalHandler getLexicalHandler() {
    return this.xmlWriter;
  }
  
  public XMLWriter getXMLWriter() {
    return this.xmlWriter;
  }
  
  public void setXMLWriter(XMLWriter paramXMLWriter) {
    this.xmlWriter = paramXMLWriter;
    setHandler(this.xmlWriter);
    setLexicalHandler(this.xmlWriter);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\XMLResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */