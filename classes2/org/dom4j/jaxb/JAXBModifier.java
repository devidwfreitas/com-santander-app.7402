package org.dom4j.jaxb;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXModifier;
import org.dom4j.io.XMLWriter;
import org.xml.sax.InputSource;

public class JAXBModifier extends JAXBSupport {
  private SAXModifier modifier;
  
  private HashMap modifiers = new HashMap<Object, Object>();
  
  private OutputFormat outputFormat = new OutputFormat();
  
  private boolean pruneElements;
  
  private XMLWriter xmlWriter;
  
  public JAXBModifier(String paramString) {
    super(paramString);
  }
  
  public JAXBModifier(String paramString, ClassLoader paramClassLoader) {
    super(paramString, paramClassLoader);
  }
  
  public JAXBModifier(String paramString, ClassLoader paramClassLoader, OutputFormat paramOutputFormat) {
    super(paramString, paramClassLoader);
  }
  
  public JAXBModifier(String paramString, OutputFormat paramOutputFormat) {
    super(paramString);
  }
  
  private XMLWriter createXMLWriter() {
    if (this.xmlWriter == null)
      this.xmlWriter = new XMLWriter(this.outputFormat); 
    return this.xmlWriter;
  }
  
  private SAXModifier getModifier() {
    if (this.modifier == null)
      this.modifier = new SAXModifier(isPruneElements()); 
    return this.modifier;
  }
  
  private XMLWriter getXMLWriter() {
    return this.xmlWriter;
  }
  
  private SAXModifier installModifier() {
    this.modifier = new SAXModifier(isPruneElements());
    this.modifier.resetModifiers();
    for (Map.Entry entry : this.modifiers.entrySet()) {
      JAXBModifier$JAXBElementModifier jAXBModifier$JAXBElementModifier = new JAXBModifier$JAXBElementModifier(this, this, (JAXBObjectModifier)entry.getValue());
      getModifier().addModifier((String)entry.getKey(), jAXBModifier$JAXBElementModifier);
    } 
    this.modifier.setXMLWriter(getXMLWriter());
    return this.modifier;
  }
  
  public void addObjectModifier(String paramString, JAXBObjectModifier paramJAXBObjectModifier) {
    this.modifiers.put(paramString, paramJAXBObjectModifier);
  }
  
  public boolean isPruneElements() {
    return this.pruneElements;
  }
  
  public Document modify(File paramFile) {
    return installModifier().modify(paramFile);
  }
  
  public Document modify(File paramFile, Charset paramCharset) {
    try {
      InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(paramFile), paramCharset);
      return installModifier().modify(inputStreamReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } catch (FileNotFoundException fileNotFoundException) {
      throw new DocumentException(fileNotFoundException.getMessage(), fileNotFoundException);
    } 
  }
  
  public Document modify(InputStream paramInputStream) {
    try {
      return installModifier().modify(paramInputStream);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(InputStream paramInputStream, String paramString) {
    try {
      return installModifier().modify(paramInputStream);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(Reader paramReader) {
    try {
      return installModifier().modify(paramReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(Reader paramReader, String paramString) {
    try {
      return installModifier().modify(paramReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(String paramString) {
    try {
      return installModifier().modify(paramString);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(URL paramURL) {
    try {
      return installModifier().modify(paramURL);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(InputSource paramInputSource) {
    try {
      return installModifier().modify(paramInputSource);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public void removeObjectModifier(String paramString) {
    this.modifiers.remove(paramString);
    getModifier().removeModifier(paramString);
  }
  
  public void resetObjectModifiers() {
    this.modifiers.clear();
    getModifier().resetModifiers();
  }
  
  public void setOutput(File paramFile) {
    createXMLWriter().setOutputStream(new FileOutputStream(paramFile));
  }
  
  public void setOutput(OutputStream paramOutputStream) {
    createXMLWriter().setOutputStream(paramOutputStream);
  }
  
  public void setOutput(Writer paramWriter) {
    createXMLWriter().setWriter(paramWriter);
  }
  
  public void setPruneElements(boolean paramBoolean) {
    this.pruneElements = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBModifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */