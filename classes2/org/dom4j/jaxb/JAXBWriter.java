package org.dom4j.jaxb;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.Writer;
import javax.xml.bind.Element;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

public class JAXBWriter extends JAXBSupport {
  private OutputFormat outputFormat;
  
  private XMLWriter xmlWriter;
  
  public JAXBWriter(String paramString) {
    super(paramString);
    this.outputFormat = new OutputFormat();
  }
  
  public JAXBWriter(String paramString, ClassLoader paramClassLoader) {
    super(paramString, paramClassLoader);
  }
  
  public JAXBWriter(String paramString, ClassLoader paramClassLoader, OutputFormat paramOutputFormat) {
    super(paramString, paramClassLoader);
    this.outputFormat = paramOutputFormat;
  }
  
  public JAXBWriter(String paramString, OutputFormat paramOutputFormat) {
    super(paramString);
    this.outputFormat = paramOutputFormat;
  }
  
  private XMLWriter getWriter() {
    if (this.xmlWriter == null) {
      if (this.outputFormat != null) {
        this.xmlWriter = new XMLWriter(this.outputFormat);
        return this.xmlWriter;
      } 
    } else {
      return this.xmlWriter;
    } 
    this.xmlWriter = new XMLWriter();
    return this.xmlWriter;
  }
  
  public void endDocument() {
    getWriter().endDocument();
  }
  
  public OutputFormat getOutputFormat() {
    return this.outputFormat;
  }
  
  public void setOutput(File paramFile) {
    getWriter().setOutputStream(new FileOutputStream(paramFile));
  }
  
  public void setOutput(OutputStream paramOutputStream) {
    getWriter().setOutputStream(paramOutputStream);
  }
  
  public void setOutput(Writer paramWriter) {
    getWriter().setWriter(paramWriter);
  }
  
  public void startDocument() {
    getWriter().startDocument();
  }
  
  public void write(Element paramElement) {
    getWriter().write(marshal(paramElement));
  }
  
  public void writeClose(Element paramElement) {
    getWriter().writeClose(marshal(paramElement));
  }
  
  public void writeCloseElement(Element paramElement) {
    getWriter().writeClose(paramElement);
  }
  
  public void writeElement(Element paramElement) {
    getWriter().write(paramElement);
  }
  
  public void writeOpen(Element paramElement) {
    getWriter().writeOpen(marshal(paramElement));
  }
  
  public void writeOpenElement(Element paramElement) {
    getWriter().writeOpen(paramElement);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */